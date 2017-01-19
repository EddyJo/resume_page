package kr.co.youmustcatchme.portfolio.model.mapper;

import kr.co.youmustcatchme.portfolio.model.ResumeVO;

public interface IResumeRepo {
	//입력
	int insertResume(String memberId);
	
	//조회
	ResumeVO selectResume(String memberId);
	
	//수정
}
