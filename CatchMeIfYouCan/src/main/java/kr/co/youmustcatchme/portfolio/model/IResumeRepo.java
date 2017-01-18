package kr.co.youmustcatchme.portfolio.model;

public interface IResumeRepo {
	
	//입력
	int insertPortfolInfo(ResumeVo portfol);
	
	//조회
	ResumeVo selectPortfolInfo(String memberId);
}
