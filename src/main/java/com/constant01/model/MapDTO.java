package com.constant01.model;

public class MapDTO {
	
	private String resvIdx;	//기본키 비밀번호
	private String userNm; 	//이름
	private String userLat;	//
	private String userLon; //
	
	public String getResvIdx() {
		return resvIdx;
	}
	public void setResvIdx(String resvIdx) {
		this.resvIdx = resvIdx;
	}
	public String getUserNm() {
		return userNm;
	}
	public void setUserNm(String userNm) {
		this.userNm = userNm;
	}
	public String getUserLat() {
		return userLat;
	}
	public void setUserLat(String userLat) {
		this.userLat = userLat;
	}
	public String getUserLon() {
		return userLon;
	}
	public void setUserLon(String userLon) {
		this.userLon = userLon;
	}
	@Override
	public String toString() {
		return "MapDTO [resvIdx=" + resvIdx + ", userNm=" + userNm + ", userLat=" + userLat + ", userLon=" + userLon
				+ "]";
	}	
	
}
