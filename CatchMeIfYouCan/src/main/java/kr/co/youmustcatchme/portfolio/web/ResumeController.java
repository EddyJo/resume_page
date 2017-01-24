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
import java.lang.reflect.*;

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
		System.out.println("업데이트 폼");
		return "resume/resumeForm";
	}
	
	@RequestMapping(value="/updateForm.do", method=RequestMethod.POST)
	public String updateResume(@ModelAttribute("id") String memberId, ResumeVO resume, Model model) {
//		try {
//			Class cls = Class.forName("kr.co.youmustcatchme.portfolio.model.ResumeVO");
//			Method[] methodList = cls.getDeclaredMethods();
//			String result = "";
//			for(int i=0;i<methodList.length;i++) {
//				String methodName = methodList[i].getName();
//				if(methodName.matches("get.*Info*.")) {
//					try {
//						result = (String) methodList[i].invoke(resume);
//						if(result!=null) {
//							result = result.replaceAll("\r\n", "<br>");
//							System.out.println(result);
//						}
//					} catch (IllegalAccessException e) {
//						// TODO Auto-generated catch block
//						e.printStackTrace();
//					} catch (IllegalArgumentException e) {
//						// TODO Auto-generated catch block
//						e.printStackTrace();
//					} catch (InvocationTargetException e) {
//						// TODO Auto-generated catch block
//						e.printStackTrace();
//					} catch(NullPointerException e) {
//						e.printStackTrace();
//					}
//				}
//				if(methodName.matches("set.*Info*.")) {
//					try {
//						System.out.println("setter : " + result);
//						Object[] results = {result};
//						if(methodList[i].invoke(resume, results).equals(true)) {
//							System.out.println("동작!!!");
//						};
//						System.out.println(methodList[i]);
//					} catch (IllegalAccessException e) {
//						// TODO Auto-generated catch block
//						e.printStackTrace();
//					} catch (IllegalArgumentException e) {
//						// TODO Auto-generated catch block
//						e.printStackTrace();
//					} catch (InvocationTargetException e) {
//						// TODO Auto-generated catch block
//						e.printStackTrace();
//					}
//				}
//			}
//		} catch (ClassNotFoundException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
		String info = resume.getPortfolio1Info().replaceAll("\r\n", "<br>");
		resume.setPortfolio1Info(info);
		resumeRepo.updateResume(resume);
		return createResume(memberId, model);
	}
	
	@RequestMapping(value="/myresume.do")
	public String createResume(@ModelAttribute("id") String memberId,
			Model model) {
		
		//회원 아이디로 이력서를 검색하여 이력서가 있는지 없는지 확인
		ResumeVO resume = resumeRepo.selectResume(memberId);
		
		//없으면 회원아이디로 새로 만들기(샐플데이터)
		//있으면 기존 회원아이디의 이력서 정보 불러오기(이 코드는 이미 위에서
		if(resume == null) {
			resumeRepo.insertResume(memberId);
			resume = resumeRepo.selectResume(memberId);
		}
		model.addAttribute("resume", resume);
		System.out.println(resume.toString());
		return "resume/myresume";
	}
}
