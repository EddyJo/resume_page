package kr.co.youmustcatchme.member.service;

import org.springframework.stereotype.Service;

@Service
public class MembereServiceImpl implements MemeberService {
	public String getMemberId(String memberId) {
		if(memberId.equals("jkjk3307")) return "";
		else return "일반 로그인";
	}
}
