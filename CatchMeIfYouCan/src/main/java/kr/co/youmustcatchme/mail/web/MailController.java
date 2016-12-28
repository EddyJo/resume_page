package kr.co.youmustcatchme.mail.web;

import java.util.Properties;

import javax.mail.Address;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.youmustcatchme.mail.service.SMTPAuthenticator;

@Controller
@RequestMapping("/mail")
public class MailController {
	
	@Autowired
	Authenticator auth;
	
	@RequestMapping(value="/send.do", method=RequestMethod.POST)
	public String doSend(@RequestParam(value="from", required=true) String from,
			@RequestParam(value="subject", required=true) String subject,
			@RequestParam(value="content", required=true) String content, Model model) {
	String to = "jkjk3307@naver.com";
	Properties p = new Properties(); //정보를 담음

	p.put("mail.smtp.host", "smtp.naver.com"); //네이버 STMP

	p.put("mail.smtp.port", "465");
	p.put("mail.smtp.starttls.enable", "true");
	p.put("mail.smtp.auth", "true");
	p.put("mail.smtp.debug", "true");
	p.put("mail.smtp.socketFactory.port", "465");
	p.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
	p.put("mail.smtp.socketFactory.fallback", "false");
	//SMTP 서버에 접속하기 위한 정보들

	try{
		Authenticator auth = new SMTPAuthenticator();
		Session ses = Session.getInstance(p, auth);
		
		ses.setDebug(true);
		
		MimeMessage msg = new MimeMessage(ses); // 메일의 내용을 담을 객체
		msg.setSubject(subject, "UTF-8"); //제목
		
		Address fromAddr = new InternetAddress(from);
		msg.setFrom(fromAddr); //보낸느 사람
		
		Address toAddr = new InternetAddress(to);
		msg.addRecipient(Message.RecipientType.TO, toAddr);//받는 사람
		
		msg.setContent(content,"text/html; charset=UTF-8"); // 내용과 인코딩
		System.out.println("내용 : "+content);
		System.out.println("제목 : "+subject);
		Transport.send(msg); //전송
		
	} catch(Exception e){
		e.printStackTrace();
	}
	
	return "redirect:/";
	}
	
}
