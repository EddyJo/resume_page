package kr.co.youmustcatchme.portfolio.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.youmustcatchme.portfolio.model.ResumeVO;
import kr.co.youmustcatchme.portfolio.model.mapper.IResumeRepo;

@Controller
@SessionAttributes("id")
@RequestMapping("/resume")
public class ResumeController {
	
	@Autowired
	IResumeRepo resumeRepo;
	
	@RequestMapping("/home.do")
	public String goHome() {
		return "resume/home";
	}
	
	@RequestMapping(value="/update.do", method=RequestMethod.GET)
	public String updateResume(Model model) {
		return "/";
	}
	
	@RequestMapping(value="/myresume.do")
	public String createResume(@ModelAttribute("id") String id,
			Model model, RedirectAttributes redirectAttrs) {
		
		//회원 아이디로 이력서를 검색하여 이력서가 있는지 없는지 확인
		String memberId = id;
		ResumeVO resume = resumeRepo.selectResume(memberId);
		System.out.println(memberId);
		
		//없으면 회원아이디로 새로 만들기(샐플데이터)
		//있으면 기존 회원아이디의 이력서 정보 불러오기(이 코드는 이미 위에서
		if(resume == null) {
			resumeRepo.insertResume(memberId);
			System.out.println("입력");
			resume = resumeRepo.selectResume(memberId);
		}
		model.addAttribute("resume", resume);
		System.out.println(resume.toString());
		return "resume/resumeForm";
	}
}
