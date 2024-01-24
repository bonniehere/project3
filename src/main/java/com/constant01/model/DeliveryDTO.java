package com.constant01.model;

public class DeliveryDTO {
	private String userId;	//아이디
	private String userPw;	//기본키 비밀번호
	private String driverNm;	//배달 기사이름
	private String driverPhone; //배달 기사 폰번호
	private String driverLat;	//  
	private String driverLon;	//
	
	
	
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
	public String getDriverLat() {
		return driverLat;
	}
	public void setDriverLat(String driverLat) {
		this.driverLat = driverLat;
	}
	public String getDriverLon() {
		return driverLon;
	}
	public void setDriverLon(String driverLon) {
		this.driverLon = driverLon;
	}
	@Override
	public String toString() {
		return "DeliveryDTO [userId=" + userId + ", userPw=" + userPw + ", driverNm=" + driverNm + ", driverPhone="
				+ driverPhone + ", driverLat=" + driverLat + ", driverLon=" + driverLon + "]";
	}
	
	

}
