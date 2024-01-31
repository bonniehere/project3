package com.constant01.model;

public class DriverDTO {
	private String m_userId;	//배달 기사 아이디
	private String m_userPw;	//배달 기사 비밀번호
	private String m_name;	//배달 기사이름 
	private String m_phone;	//배달 기사이름 
	
	public String getM_userId() {
		return m_userId;
	}
	public void setM_userId(String m_userId) {
		this.m_userId = m_userId;
	}
	public String getM_userPw() {
		return m_userPw;
	}
	public void setM_userPw(String m_userPw) {
		this.m_userPw = m_userPw;
	}
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	public String getM_phone() {
		return m_phone;
	}
	public void setM_phone(String m_phone) {
		this.m_phone = m_phone;
	}
	@Override
	public String toString() {
		return "DriverDTO [m_userId=" + m_userId + ", m_userPw=" + m_userPw + ", m_name=" + m_name + ", m_phone="
				+ m_phone + "]";
	}

	


}
