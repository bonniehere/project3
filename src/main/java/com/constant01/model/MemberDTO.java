package com.constant01.model;

public class MemberDTO {
	private String accessTermsYn; 	//이용약관 동의여부
	private String accessPerYn;		//이용약관 동의여부
	private String loginType;		//로그인 유저 판별
	private String userTp;			//유저 고유번호
	private String profEmpNo;		//의료진관련넘버
	private String birthDt;			//생년월일 date 타입
	private String telNo;			//연락처
	private String hpNo;			//연락처2
	private String email; 			//email
	private String authIvTp;		// --모름--
	private String statusCd;		//로그인 유저 판별 코드
	private String userNm;			//이름
	private String userId;			//id
	private String userPw;			//pw
	private String userStat;		
	private String sex;				//성별
	private String zipCd;			//주소1,우편번호
	private String addr;			//주소2
	private String detlAddr;		//상세주소
	private String deptNo;			//의료진부서넘버
	private String profNo;			//의사 사번
	private String resvIdx;			//미사용
	
	public String getAccessTermsYn() {
		return accessTermsYn;
	}
	public void setAccessTermsYn(String accessTermsYn) {
		this.accessTermsYn = accessTermsYn;
	}
	public String getAccessPerYn() {
		return accessPerYn;
	}
	public void setAccessPerYn(String accessPerYn) {
		this.accessPerYn = accessPerYn;
	}
	public String getLoginType() {
		return loginType;
	}
	public void setLoginType(String loginType) {
		this.loginType = loginType;
	}
	public String getUserTp() {
		return userTp;
	}
	public void setUserTp(String userTp) {
		this.userTp = userTp;
	}
	public String getProfEmpNo() {
		return profEmpNo;
	}
	public void setProfEmpNo(String profEmpNo) {
		this.profEmpNo = profEmpNo;
	}
	public String getBirthDt() {
		return birthDt;
	}
	public void setBirthDt(String birthDt) {
		this.birthDt = birthDt;
	}
	public String getTelNo() {
		return telNo;
	}
	public void setTelNo(String telNo) {
		this.telNo = telNo;
	}
	public String getHpNo() {
		return hpNo;
	}
	public void setHpNo(String hpNo) {
		this.hpNo = hpNo;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAuthIvTp() {
		return authIvTp;
	}
	public void setAuthIvTp(String authIvTp) {
		this.authIvTp = authIvTp;
	}
	public String getStatusCd() {
		return statusCd;
	}
	public void setStatusCd(String statusCd) {
		this.statusCd = statusCd;
	}
	public String getUserNm() {
		return userNm;
	}
	public void setUserNm(String userNm) {
		this.userNm = userNm;
	}
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
	public String getUserStat() {
		return userStat;
	}
	public void setUserStat(String userStat) {
		this.userStat = userStat;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getZipCd() {
		return zipCd;
	}
	public void setZipCd(String zipCd) {
		this.zipCd = zipCd;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getDetlAddr() {
		return detlAddr;
	}
	public void setDetlAddr(String detlAddr) {
		this.detlAddr = detlAddr;
	}
	
	public String getDeptNo() {
		return deptNo;
	}
	public void setDeptNo(String deptNo) {
		this.deptNo = deptNo;
	}
	public String getProfNo() {
		return profNo;
	}
	public void setProfNo(String profNo) {
		this.profNo = profNo;
	}
	
	public String getResvIdx() {
		return resvIdx;
	}
	public void setResvIdx(String resvIdx) {
		this.resvIdx = resvIdx;
	}
	@Override
	public String toString() {
		return "MemberDTO [accessTermsYn=" + accessTermsYn + ", accessPerYn=" + accessPerYn + ", loginType=" + loginType
				+ ", userTp=" + userTp + ", profEmpNo=" + profEmpNo + ", birthDt=" + birthDt + ", telNo=" + telNo
				+ ", hpNo=" + hpNo + ", email=" + email + ", authIvTp=" + authIvTp + ", statusCd=" + statusCd
				+ ", userNm=" + userNm + ", userId=" + userId + ", userPw=" + userPw + ", userStat=" + userStat
				+ ", sex=" + sex + ", zipCd=" + zipCd + ", addr=" + addr + ", detlAddr=" + detlAddr + ", deptNo="
				+ deptNo + ", profNo=" + profNo + "]";
	}
	
	
	
	
}
