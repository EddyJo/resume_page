package kr.co.youmustcatchme.portfolio.model.mapper;

import java.util.ArrayList;

import kr.co.youmustcatchme.portfolio.model.ResumeVO;

public interface IResumeRepo {
	//입력
	int insertResume(String memberId);
	
	//조회
	ResumeVO selectResume(String memberId);
	
	//수정
	int updateResume(ResumeVO resume);
	
	//리스트
	ArrayList<ResumeVO> selectAllResume();
}
