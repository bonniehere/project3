package com.constant01.model;

public class DriverDTO {
	private String driverIdx;	//기본키 비밀번호
	private String driverNm;	//배달 기사이름 1
	
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
	@Override
	public String toString() {
		return "DriverDTO [driverIdx=" + driverIdx + ", driverNm=" + driverNm + "]";
	}
	
	

}
