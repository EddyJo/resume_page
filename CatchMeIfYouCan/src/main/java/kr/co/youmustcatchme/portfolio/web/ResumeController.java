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
		System.out.println("업데이트 폼");
		return "resume/resumeForm";
	}

	@RequestMapping(value="/updateForm.do", method=RequestMethod.POST)
	public String updateResume(@ModelAttribute("id") String memberId, ResumeVO resume, Model model) {
		resumeRepo.updateResume(resume);
		resume = resumeRepo.selectResume(memberId);
		ArrayList<Method> getInfos = new ArrayList<Method>();
		ArrayList<Method> setInfos = new ArrayList<Method>();
		String result = "s";
		try {
			Class<?> cls = Class.forName("kr.co.youmustcatchme.portfolio.model.ResumeVO");
			Method[] methodList = cls.getDeclaredMethods();
			for(int i=0;i<methodList.length;i++) {
				String methodName = methodList[i].getName();
				if(methodName.matches("get.*Info*.")) {
					getInfos.add(methodList[i]); 
				}
				if(methodName.matches("set.*Info*.")) setInfos.add(methodList[i]);
			}
		} catch (ClassNotFoundException e) {e.printStackTrace();}
		
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
		for(int i=0;i<setInfos.size();i++) {
			try {
				result = (String) getInfos.get(i).invoke(resume);
				System.out.println(result);
				if(result!=null) result = result.replaceAll("\r\n", "<br>");
				System.out.println(result);
			} catch (IllegalAccessException e) { e.printStackTrace();
			} catch (IllegalArgumentException e) { e.printStackTrace();
			} catch (InvocationTargetException e) { e.printStackTrace();}
			
			try {
				setInfos.get(i).invoke(resume, new Object[]{result});
			} catch (IllegalAccessException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IllegalArgumentException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (InvocationTargetException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		resumeRepo.updateResume(resume);
		
		//		String info = resume.getPortfolio1Info().replaceAll("\r\n", "<br>");
		//		resume.setPortfolio1Info(info);
		//
		//		resumeRepo.updateResume(resume);
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
