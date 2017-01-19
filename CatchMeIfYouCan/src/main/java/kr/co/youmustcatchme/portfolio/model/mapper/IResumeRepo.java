package kr.co.youmustcatchme.portfolio.model.mapper;

import kr.co.youmustcatchme.portfolio.model.ResumeVO;

public interface IResumeRepo {
	//입력
	int insertResume(ResumeVO resume);
	
	//조회
	ResumeVO selectResume(String memeberId);
	
	//수정
}
