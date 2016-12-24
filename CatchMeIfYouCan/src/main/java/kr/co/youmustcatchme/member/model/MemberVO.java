package kr.co.youmustcatchme.member.model;

public class MemberVO {
	String memeberId;
	String password;
	String userName;
	String job;
	String join_date;
	public String getMemberId() {
		return memeberId;
	}
	public void setMemberId(String memeberId) {
		this.memeberId = memeberId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public String getJoin_date() {
		return join_date;
	}
	public void setJoin_date(String join_date) {
		this.join_date = join_date;
	}
	@Override
	public String toString() {
		return "MemberVO [memeberId=" + memeberId + ", password=" + password + ", userName=" + userName + ", job=" + job
				+ ", join_date=" + join_date + "]";
	}
}
