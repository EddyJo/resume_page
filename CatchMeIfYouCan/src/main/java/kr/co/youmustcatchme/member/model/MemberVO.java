package kr.co.youmustcatchme.member.model;

public class MemberVO {
	private String memeberId;
	private String password;
	private String userName;
	private String email;
	private String job;
	private String join_date;
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
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
