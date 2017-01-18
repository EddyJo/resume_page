package kr.co.youmustcatchme.portfolio.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/portfolio")
public class ResumeController {
	
	@RequestMapping("/home.do")
	public String goHome() {
		return "portfolio/home";
	}
}
