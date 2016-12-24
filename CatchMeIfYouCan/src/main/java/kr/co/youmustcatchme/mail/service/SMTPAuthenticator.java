package kr.co.youmustcatchme.mail.service;

import javax.mail.Authenticator;

import javax.mail.PasswordAuthentication;

import org.springframework.stereotype.Service;


@Service
public class SMTPAuthenticator extends Authenticator{
	
	@Override
	protected PasswordAuthentication getPasswordAuthentication() {
		return new PasswordAuthentication("jkjk3307", "2854rudgus!");
		//"jkjk0600@gmail.com", "kpwzddwssrlyrctu
	}
	 
}
