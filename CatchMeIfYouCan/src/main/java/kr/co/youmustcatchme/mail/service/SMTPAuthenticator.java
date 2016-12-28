package kr.co.youmustcatchme.mail.service;

import javax.mail.Authenticator;

import javax.mail.PasswordAuthentication;

import org.jasypt.encryption.pbe.StandardPBEStringEncryptor;
import org.springframework.stereotype.Service;


@Service
public class SMTPAuthenticator extends Authenticator{
	
	@Override
	protected PasswordAuthentication getPasswordAuthentication() {
		StandardPBEStringEncryptor enc = new StandardPBEStringEncryptor();
		String Password = enc.decrypt("EA2Jiqe93qcR4Dd26Ndg1RsWnpHs7P1P");
		return new PasswordAuthentication("jkjk3307", Password);
		
	}
	 
}
