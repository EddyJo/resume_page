package kr.co.youmustcatchme.mail.service;

import javax.mail.Authenticator;

import javax.mail.PasswordAuthentication;

import org.jasypt.encryption.pbe.StandardPBEStringEncryptor;
import org.springframework.stereotype.Service;


@Service
public class SMTPAuthenticator extends Authenticator{
	
	@Override
	protected PasswordAuthentication getPasswordAuthentication() {
		return new PasswordAuthentication("아이디", "비밀번호");
		
	}
	 
}
