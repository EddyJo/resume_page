package kr.co.youmustcatchme.portfolio.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.youmustcatchme.portfolio.model.ResumeVO;
import kr.co.youmustcatchme.portfolio.model.mapper.IResumeRepo;

@Controller
@RequestMapping("/resume")
public class ResumeController {
	
	@Autowired
	IResumeRepo resumeRepo;
	
	@RequestMapping("/home.do")
	public String goHome() {
		return "resume/home";
	}
	
	@RequestMapping(value="/create_resume.do", method=RequestMethod.POST)
	public String createResume(ResumeVO resume, RedirectAttributes redirectAttrs) {
		return "redirect:/";
	}
	
	@RequestMapping(value="/create_resume.do", method=RequestMethod.GET)
	public String createResume(Model model) {
		return "resume/resumeForm";
	}
}
