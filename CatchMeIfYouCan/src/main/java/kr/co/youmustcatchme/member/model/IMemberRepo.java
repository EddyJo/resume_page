package kr.co.youmustcatchme.member.model;

import java.util.List;

public interface IMemberRepo {
	
	//기본 조회 메서드
	MemberVO getMemberInfo(String memberId);
	List<MemberVO> getMemberInfoList();
	
	//입력, 수정, 탈퇴 메서드
	int insertMember(MemberVO member);
	void updateMember(MemberVO member);
	void deleteMember(String memberId);
}
