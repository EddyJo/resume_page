package kr.co.youmustcatchme.portfolio.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import java.lang.reflect.*;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;

import kr.co.youmustcatchme.portfolio.model.ResumeVO;
import kr.co.youmustcatchme.portfolio.model.mapper.IResumeRepo;

@Controller
@SessionAttributes("id")
@RequestMapping("/resume")
public class ResumeController {

	@Autowired
	IResumeRepo resumeRepo;

	@RequestMapping("/sample.do")
	public String goHome() {
		return "resume/sample";
	}

	@RequestMapping(value="/update.do", method=RequestMethod.GET)
	public String updateResume(@ModelAttribute("id") String memberId, Model model) {
		ResumeVO resume = resumeRepo.selectResume(memberId);
		model.addAttribute("resume", resume);
		return "resume/resumeForm";
	}
	
	@RequestMapping(value="/resumelist.do")
	public String listResumes(Model model) {
		ArrayList<ResumeVO> resumeList = resumeRepo.selectAllResume();
		model.addAttribute("resumeList", resumeList);
		return "resume/resumelist";
	}

	@RequestMapping(value="/updateForm.do", method=RequestMethod.POST)
	public String updateResume(@ModelAttribute("id") String memberId, ResumeVO resume, Model model) {

		/*
			textarea에서 받은 텍스트에서 줄바꿈을 처리하기 위한 코드
			textarea가 여러개라서 동적 메서드 호출로 반복처리(textarea가 많아지면 일일히 setter,getter 치는게 번거로움)
			이게 가능한 것은 textarae를 통해 넘어오는 변수를 처리하는 setter와 getter가 모두 비슷한 이름을 가지고 있기 때문

		 */
		resume.setMemberId(memberId);
		//일단 받아온 정보를 update하여 DB에 저장
		//(왜나하면 모든 컬럼이 바뀌는것이 아니고 몇몇 컬럼만 바꾸기 때문에 그냥 뷰에서 받아온 resume으로 작업 진행지 기존 데이터가 없음)
		resumeRepo.updateResume(resume);
		
		//getPortfolio[1~6]Info, setPortfolio[1~6]Info 메서드를 담기 위한 ArrayList들
		ArrayList<Method> getInfos = new ArrayList<Method>();
		ArrayList<Method> setInfos = new ArrayList<Method>();
		//\r\n를 <br>로 치환한 후 담을 변수
		String result = "s";
		try {
			//일단 클래스 이름으로 해당 클래스를 찾는다.
			Class<?> cls = Class.forName("kr.co.youmustcatchme.portfolio.model.ResumeVO");
			//찾은 클래스의 선언된 모든 메서드를 가져온다.
			Method[] methodList = cls.getDeclaredMethods();
			//메서드들을 찾을 메서드의 부분 문자열로 반복하여 찾는다.
			for(int i=0;i<methodList.length;i++) {
				//메서드의 이름을 String으로 받는다.
				String methodName = methodList[i].getName();
				//getPortfolio[1~6]Info를 문자열을 비교하여 찾는다.
				//찾은 메서드들을 ArrayList에 추가
				if(methodName.matches("get.*Info*.")) getInfos.add(methodList[i]);
				if(methodName.matches("set.*Info*.")) setInfos.add(methodList[i]);
			}
		} catch (ClassNotFoundException e) {e.printStackTrace();}
		
		//메서드 타입의 메서드들을 정렬하는 코드
		Collections.sort(setInfos, new Comparator<Method>() {
			public int compare(Method method1, Method method2) {
				return method1.getName().compareToIgnoreCase(method2.getName());
			}
		});
		Collections.sort(getInfos, new Comparator<Method>() {
			public int compare(Method method1, Method method2) {
				return method1.getName().compareToIgnoreCase(method2.getName());
			}
		});
		
		//여기서 실제로 getter를 통해 textarae의 텍스트를 불러와서 치환하여 setter를 통해  VO에 담는 코드
		for(int i=0;i<setInfos.size();i++) {
			try {
				//invoke 메서드를 통해 getter를 동작시킴
				result = (String) getInfos.get(i).invoke(resume);
				//받아온 텍스트틀 치환
				if(result!=null) result = result.replaceAll("\r\n", "<br>");
			} catch (IllegalAccessException e) { e.printStackTrace();
			} catch (IllegalArgumentException e) { e.printStackTrace();
			} catch (InvocationTargetException e) { e.printStackTrace();}

			try {
				//invoke 메서드를 통해 setter를 동작시켜 resume에 치환된 값을 보냄
				setInfos.get(i).invoke(resume, new Object[]{result});
			} catch (IllegalAccessException e) {e.printStackTrace();} 
			catch (IllegalArgumentException e) {e.printStackTrace();} 
			catch (InvocationTargetException e) {e.printStackTrace();}
		}
		
		//저장된 이력서 정보를 다시 불러온다
		resume = resumeRepo.selectResume(memberId);
		// \r\n을 <br>로 치환한 텍스트를 담은 ResumeVO 타입의 인스턴스인 resume을 response에 담아 보낸다.
		model.addAttribute("resume", resume);
		return "resume/myresume";
	}

	@RequestMapping(value="/myresume.do")
	public String createResume(@ModelAttribute("id") String memberId,
			Model model) {

		//회원 아이디로 이력서를 검색하여 이력서가 있는지 없는지 확인
		ResumeVO resume = resumeRepo.selectResume(memberId);

		//없으면 회원아이디로 새로 만들기(샐플데이터)
		//있으면 기존 회원아이디의 이력서 정보 불러오기(이 코드는 이미 위에서)
		if(resume == null) {
			resumeRepo.insertResume(memberId);
			resume = resumeRepo.selectResume(memberId);
		}
		model.addAttribute("resume", resume);
		return "resume/myresume";
	}
	
	@RequestMapping("/{memberId}.do")
	public String detailResume(@PathVariable String memberId, Model model) {
		ResumeVO resume = resumeRepo.selectResume(memberId);
		model.addAttribute("resume", resume);
		return "resume/detail";
	}
}
