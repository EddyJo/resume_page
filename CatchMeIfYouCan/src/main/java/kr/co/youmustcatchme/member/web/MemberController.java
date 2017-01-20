package kr.co.youmustcatchme.member.web;

import java.util.List;

import org.jasypt.encryption.pbe.StandardPBEStringEncryptor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.youmustcatchme.member.model.IMemberRepo;
import kr.co.youmustcatchme.member.model.MemberVO;
import kr.co.youmustcatchme.member.service.MemeberService;


@Controller
@SessionAttributes("id")
@RequestMapping("/member")
public class MemberController {
	
	@Autowired
	IMemberRepo memberRepo;
	
	@Autowired
	StandardPBEStringEncryptor enc;
	
	//로그인
	
	@RequestMapping(value="/login.do", method=RequestMethod.GET)
	public String doLoginPage(Model model) {
		return "member/login";
	}
	
	
	@RequestMapping("/login.do")
	public String doLogin(@RequestParam(value="memberId", required=false) String memberId,
			@RequestParam(value="password", required=false) String password, Model model ) {

		String result = "로그인 시도";
		String id;

		//로그인시 유효성 검사
		
		try{
			MemberVO member = memberRepo.getMemberInfo(memberId);
			if(enc.decrypt(member.getPassword()).equals(password)) {
				result = member.getUserName() + "님 환영합니다.";
				id = member.getMemberId();
				model.addAttribute("id", id);
			}else {
				result = "비밀번호가 다릅니다.";
			}			
		}catch(EmptyResultDataAccessException e) {
			//memberId가 DB에 없을 경우 
			//EmptyResultDataAccessException 발생하기에 예외처리함
			result = "아이디가 존재하지 않습니다.";
		}
		//최종적으로 결과를 전달하고, 로그인 결과 페이지를 가기 위한 코드s
		return "redirect:/"; 
	}
	
	//회원 리스트
	@RequestMapping("/list.do")
	public String doList(Model model) {
		List<MemberVO> memberList = memberRepo.getMemberInfoList();
		System.out.println(memberList);
		model.addAttribute("memberList", memberList);
		return "member/list";
	}
	
	//회원가입 폼
	@RequestMapping(value="/join.do", method=RequestMethod.GET)
	public String doJoinForm(Model model) {
		return "member/joinform";
	}
	
	//회원가입
	@RequestMapping(value="/join.do", method=RequestMethod.POST)
	public String doJoin(MemberVO member, RedirectAttributes redirectAttrs) {
		try {
			String password = enc.encrypt(member.getPassword());
			member.setPassword(password);
			memberRepo.insertMember(member);
			System.out.println("회원가입");
		}catch(RuntimeException e) {
			System.out.println("회원가입 실패");
			redirectAttrs.addFlashAttribute("message", e.getMessage());
		}
		return "redirect:/";
	}
	
}
