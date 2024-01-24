package com.constant01.model;

public class DriverDTO {
	private String userId;	//배달 기사 아이디
	private String userPw;	//배달 기사 비밀번호
	private String driverNm;	//배달 기사이름 
	private String driverPhone;	//배달 기사이름 

	
	
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
	public String getDriverNm() {
		return driverNm;
	}
	public void setDriverNm(String driverNm) {
		this.driverNm = driverNm;
	}
	public String getDriverPhone() {
		return driverPhone;
	}
	public void setDriverPhone(String driverPhone) {
		this.driverPhone = driverPhone;
	}
	@Override
	public String toString() {
		return "DriverDTO [userId=" + userId + ", userPw=" + userPw + ", driverNm=" + driverNm + ", driverPhone="
				+ driverPhone + "]";
	}
	

}
