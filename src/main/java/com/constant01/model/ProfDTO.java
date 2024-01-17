package com.constant01.model;

public class ProfDTO {
	//fn_SelProf(profNo,profEmpNo,profNm,uuIdNm1,resvAdultYn)
	//ProfList(dpCd,deptNo,emrDeptCd) // 부서코드,넘버,emr코드
	private String userId;			//주민번호 앞
	private String userPw;			//주민번호 뒤
	//private String refererUrl;
	private int deptNo;			// 부서번호
	private int profNo;			// 의사번호
	private String loginType;	// 로그인타입
	
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
	public int getDeptNo() {
		return deptNo;
	}
	public void setDeptNo(int deptNo) {
		this.deptNo = deptNo;
	}
	public int getProfNo() {
		return profNo;
	}
	public void setProfNo(int profNo) {
		this.profNo = profNo;
	}
	public String getLoginType() {
		return loginType;
	}
	public void setLoginType(String loginType) {
		this.loginType = loginType;
	}
	@Override
	public String toString() {
		return "ProfDTO [userId=" + userId + ", userPw=" + userPw + ", deptNo=" + deptNo + ", profNo=" + profNo
				+ ", loginType=" + loginType + "]";
	}
	
	
}
