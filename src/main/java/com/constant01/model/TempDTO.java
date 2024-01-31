package com.constant01.model;

public class TempDTO {
	private String liveTime;	//날짜
	private String temp;		//온도
	
	public String getLiveTime() {
		return liveTime;
	}
	public void setLiveTime(String liveTime) {
		this.liveTime = liveTime;
	}
	public String getTemp() {
		return temp;
	}
	public void setTemp(String temp) {
		this.temp = temp;
	}
	@Override
	public String toString() {
		return "TempDTO [liveTime=" + liveTime + ", temp=" + temp + "]";
	}
	
	
	
}
