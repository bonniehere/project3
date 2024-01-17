package com.constant01.model;

public class ReserveDTO {
	private int num;			//삭제를위한 자동증가 기본키
	private String sitePath;	//사이트
	private String resvIdx; 	//예약id=userPw
	private String hspCd;		//병원코드
	private String memYn;		//회원가입여부
	private String userId;		//유저아이디
	private String userType;	//로그인 유저 타입
	private String resvType;	//예약 본인 대리인 여부
	private String userNm;		//유저 이름
	private String gender;		//성별
	private String ptNo;		//환자번호(생년월일앞자리로변경)
	private String userBirthDt;	//생년월일 DATE 타입
	private String phone;		//연락처
	private String zipCd;		//주소1(우편번호)
	private String addr;		//주소2
	private String detlAddr;	//상세주소
	private String selDeptNo;	//부서넘버
	private String selDeptCd;	//부서코드
	private String selDeptNm;	//부서명
	private String emrDeptCd;	//부서코드2
	private String emrCenterCd;	//센터코드
	private String selProfNo;	//의사 사번
	private String selEmpNo;	//응급실 넘버
	private String selProfNm;	//의사 이름
	private String selProfUuidNm;//의사 UUID
	private String emrProfCd;	//의사 코드
	private String resvAdultYn;	//예약자 성인 여부
	private String schYear;		//스케줄 년
	private String schMonth;	//스케줄 월
	private String schDate;		//스케줄 일
	private String resvDd;		//예약 DATE타입
	private String resvHh;		//예약 시간
	
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getSitePath() {
		return sitePath;
	}
	public void setSitePath(String sitePath) {
		this.sitePath = sitePath;
	}
	public String getResvIdx() {
		return resvIdx;
	}
	public void setResvIdx(String resvIdx) {
		this.resvIdx = resvIdx;
	}
	public String getHspCd() {
		return hspCd;
	}
	public void setHspCd(String hspCd) {
		this.hspCd = hspCd;
	}
	public String getMemYn() {
		return memYn;
	}
	public void setMemYn(String memYn) {
		this.memYn = memYn;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserType() {
		return userType;
	}
	public void setUserType(String userType) {
		this.userType = userType;
	}
	public String getResvType() {
		return resvType;
	}
	public void setResvType(String resvType) {
		this.resvType = resvType;
	}
	public String getUserNm() {
		return userNm;
	}
	public void setUserNm(String userNm) {
		this.userNm = userNm;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getPtNo() {
		return ptNo;
	}
	public void setPtNo(String ptNo) {
		this.ptNo = ptNo;
	}
	public String getUserBirthDt() {
		return userBirthDt;
	}
	public void setUserBirthDt(String userBirthDt) {
		this.userBirthDt = userBirthDt;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
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
	public String getSelDeptNo() {
		return selDeptNo;
	}
	public void setSelDeptNo(String selDeptNo) {
		this.selDeptNo = selDeptNo;
	}
	public String getSelDeptCd() {
		return selDeptCd;
	}
	public void setSelDeptCd(String selDeptCd) {
		this.selDeptCd = selDeptCd;
	}
	public String getSelDeptNm() {
		return selDeptNm;
	}
	public void setSelDeptNm(String selDeptNm) {
		this.selDeptNm = selDeptNm;
	}
	public String getEmrDeptCd() {
		return emrDeptCd;
	}
	public void setEmrDeptCd(String emrDeptCd) {
		this.emrDeptCd = emrDeptCd;
	}
	public String getEmrCenterCd() {
		return emrCenterCd;
	}
	public void setEmrCenterCd(String emrCenterCd) {
		this.emrCenterCd = emrCenterCd;
	}
	public String getSelProfNo() {
		return selProfNo;
	}
	public void setSelProfNo(String selProfNo) {
		this.selProfNo = selProfNo;
	}
	public String getSelEmpNo() {
		return selEmpNo;
	}
	public void setSelEmpNo(String selEmpNo) {
		this.selEmpNo = selEmpNo;
	}
	public String getSelProfNm() {
		return selProfNm;
	}
	public void setSelProfNm(String selProfNm) {
		this.selProfNm = selProfNm;
	}
	public String getSelProfUuidNm() {
		return selProfUuidNm;
	}
	public void setSelProfUuidNm(String selProfUuidNm) {
		this.selProfUuidNm = selProfUuidNm;
	}
	public String getEmrProfCd() {
		return emrProfCd;
	}
	public void setEmrProfCd(String emrProfCd) {
		this.emrProfCd = emrProfCd;
	}
	public String getResvAdultYn() {
		return resvAdultYn;
	}
	public void setResvAdultYn(String resvAdultYn) {
		this.resvAdultYn = resvAdultYn;
	}
	public String getSchYear() {
		return schYear;
	}
	public void setSchYear(String schYear) {
		this.schYear = schYear;
	}
	public String getSchMonth() {
		return schMonth;
	}
	public void setSchMonth(String schMonth) {
		this.schMonth = schMonth;
	}
	public String getSchDate() {
		return schDate;
	}
	public void setSchDate(String schDate) {
		this.schDate = schDate;
	}
	public String getResvDd() {
		return resvDd;
	}
	public void setResvDd(String resvDd) {
		this.resvDd = resvDd;
	}
	public String getResvHh() {
		return resvHh;
	}
	public void setResvHh(String resvHh) {
		this.resvHh = resvHh;
	}
	@Override
	public String toString() {
		return "ReserveDTO [num=" + num + ", sitePath=" + sitePath + ", resvIdx=" + resvIdx + ", hspCd=" + hspCd
				+ ", memYn=" + memYn + ", userId=" + userId + ", userType=" + userType + ", resvType=" + resvType
				+ ", userNm=" + userNm + ", gender=" + gender + ", ptNo=" + ptNo + ", userBirthDt=" + userBirthDt
				+ ", phone=" + phone + ", zipCd=" + zipCd + ", addr=" + addr + ", detlAddr=" + detlAddr + ", selDeptNo="
				+ selDeptNo + ", selDeptCd=" + selDeptCd + ", selDeptNm=" + selDeptNm + ", emrDeptCd=" + emrDeptCd
				+ ", emrCenterCd=" + emrCenterCd + ", selProfNo=" + selProfNo + ", selEmpNo=" + selEmpNo
				+ ", selProfNm=" + selProfNm + ", selProfUuidNm=" + selProfUuidNm + ", emrProfCd=" + emrProfCd
				+ ", resvAdultYn=" + resvAdultYn + ", schYear=" + schYear + ", schMonth=" + schMonth + ", schDate="
				+ schDate + ", resvDd=" + resvDd + ", resvHh=" + resvHh + "]";
	}
	
	
	
	
}
