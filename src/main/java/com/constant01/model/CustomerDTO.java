package com.constant01.model;

public class CustomerDTO {
	private String userId;	//아이디
	private String userPw; 	//비밀번호
	private String num;	//걍 번호 줘 봄 pk, ai 룰루루
	
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPw() {
		return userPw;
	}
	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	
	@Override
	public String toString() {
		return "CustomerDTO [userId=" + userId + ", userPw=" + userPw + ", num=" + num + "]";
	}

}
