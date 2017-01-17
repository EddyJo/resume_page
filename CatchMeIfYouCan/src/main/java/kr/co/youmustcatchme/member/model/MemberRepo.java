package kr.co.youmustcatchme.member.model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;


@Repository
public class MemberRepo implements IMemberRepo {
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	 private class memberRowMapper implements RowMapper<MemberVO> {
	        public MemberVO mapRow(ResultSet rs, int count) throws SQLException {
	            MemberVO member = new MemberVO();
	            member.setMemberId(rs.getString("member_id"));
	            member.setPassword(rs.getString("member_password"));
	            member.setUserName(rs.getString("username"));
	            member.setJob(rs.getString("job"));
	            member.setJoin_date(rs.getString("created_date"));
	            return member;
	        }
	    }
	
	public MemberVO getMemberInfo(String memberId) {
		String sql = "select * from catch_member where member_id=?";
		return jdbcTemplate.queryForObject(sql, new memberRowMapper(), memberId);

	}

	public List<MemberVO> getMemberInfoList() {
		String sql = "select * from catch_member";
		return jdbcTemplate.query(sql, new memberRowMapper());

	}

	public int insertMember(MemberVO member) {
		String sql = "insert into catch_member values(?, ?, ?, ?, ?, now())";
		return jdbcTemplate.update(sql, member.getMemberId(), member.getPassword(),
				member.getUserName(), member.getEmail(), member.getJob());

	}

	public void updateMember(MemberVO member) {
		// TODO Auto-generated method stub

	}

	public void deleteMember(String memberId) {
		// TODO Auto-generated method stub

	}

}
