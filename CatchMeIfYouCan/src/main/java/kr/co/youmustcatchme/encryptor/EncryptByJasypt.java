package kr.co.youmustcatchme.encryptor;

import org.jasypt.encryption.pbe.StandardPBEStringEncryptor;

public class EncryptByJasypt {
	public static void main(String[] args) {
		StandardPBEStringEncryptor enc = new StandardPBEStringEncryptor();
		enc.setPassword("dkssud");
		System.out.println(enc.encrypt("내비밀번호"));
		System.out.println(enc.decrypt("EA2Jiqe93qcR4Dd26Ndg1RsWnpHs7P1P"));
		
		System.out.println(enc.encrypt("oracle.jdbc.driver.OracleDriver"));
		System.out.println(enc.encrypt("jdbc:oracle:thin:@localhost:1521:xe"));
		System.out.println(enc.encrypt("hr"));
		System.out.println(enc.encrypt("hr"));
	}
}
