package kr.co.youmustcatchme.portfolio.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class ResumeRepo implements IResumeRepo {
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	
	public int insertPortfolInfo(ResumeVo portfol) {
		String sql = "inser into resumeInfo";
		return 0;
	}

	public ResumeVo selectPortfolInfo(String memberId) {
		// TODO Auto-generated method stub
		return null;
	}

}
