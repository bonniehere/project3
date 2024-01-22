package com.constant01.model;

public class DeliveryDTO {
	
	private String driverIdx;	//기본키 비밀번호
	private String driverNm;	//배달 기사이름
	private String driverLat;	//  
	private String driverLon;	//
	
	public String getDriverIdx() {
		return driverIdx;
	}
	public void setDriverIdx(String driverIdx) {
		this.driverIdx = driverIdx;
	}
	public String getDriverNm() {
		return driverNm;
	}
	public void setDriverNm(String driverNm) {
		this.driverNm = driverNm;
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
		return "DeliveryDTO [driverIdx=" + driverIdx + ", driverNm=" + driverNm + ", driverLat=" + driverLat
				+ ", driverLon=" + driverLon + "]";
	}
	
	

}
