package com.constant01.model;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

public class CustomerDTO {
	private String m_userStat; // 회원구분
	private String m_email; //담당자 email
	private String userId; // 회원구분
	private String userPw; // 회원구분
	
	private String m_userId; // 회원구분
	private String m_userPw; // 회원구분
		
	private String m_hspNm; // 병원명
	private String m_name; // 담당자 이름
	private String m_phone; // 담당자 휴대폰번호
	private String m_tel; // 담당자 전화번호
	private String m_zipCd; //우편번호
	private String m_addr; // 주소
	private String m_addr_detail; //주소 상세
	private String del; // 회원탈퇴 여부
	
	private Date join_date; // 가입일
	
	private int amount;

	// 업로드
	private MultipartFile file;

	// paging용
	private int startRow;
	private int endRow;

	// 비밀번호 변경 임시번호
	private int vCode;

	public String getM_userStat() {
		return m_userStat;
	}

	public void setM_userStat(String m_userStat) {
		this.m_userStat = m_userStat;
	}

	public String getM_email() {
		return m_email;
	}

	public void setM_email(String m_email) {
		this.m_email = m_email;
	}

	public String getM_userId() {
		return userId;
	}

	public void setM_userId(String m_userId) {
		this.userId = userId;
	}

	public String getM_userPw() {
		return userPw;
	}

	public void setM_userPw(String m_userPw) {
		this.userPw = userPw;
	}

	public String getM_hspNm() {
		return m_hspNm;
	}

	public void setM_hspNm(String m_hspNm) {
		this.m_hspNm = m_hspNm;
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

	public String getM_tel() {
		return m_tel;
	}

	public void setM_tel(String m_tel) {
		this.m_tel = m_tel;
	}

	public String getM_zipCd() {
		return m_zipCd;
	}

	public void setM_zipCd(String m_zipCd) {
		this.m_zipCd = m_zipCd;
	}

	public String getM_addr() {
		return m_addr;
	}

	public void setM_addr(String m_addr) {
		this.m_addr = m_addr;
	}

	public String getM_addr_detail() {
		return m_addr_detail;
	}

	public void setM_addr_detail(String m_addr_detail) {
		this.m_addr_detail = m_addr_detail;
	}

	public String getDel() {
		return del;
	}

	public void setDel(String del) {
		this.del = del;
	}

	public Date getJoin_date() {
		return join_date;
	}

	public void setJoin_date(Date join_date) {
		this.join_date = join_date;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}

	public int getStartRow() {
		return startRow;
	}

	public void setStartRow(int startRow) {
		this.startRow = startRow;
	}

	public int getEndRow() {
		return endRow;
	}

	public void setEndRow(int endRow) {
		this.endRow = endRow;
	}

	public int getvCode() {
		return vCode;
	}

	public void setvCode(int vCode) {
		this.vCode = vCode;
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

	@Override
	public String toString() {
		return "CustomerDTO [m_userStat=" + m_userStat + ", m_email=" + m_email + ", userId=" + userId + ", userPw="
				+ userPw + ", m_userId=" + m_userId + ", m_userPw=" + m_userPw + ", m_hspNm=" + m_hspNm + ", m_name="
				+ m_name + ", m_phone=" + m_phone + ", m_tel=" + m_tel + ", m_zipCd=" + m_zipCd + ", m_addr=" + m_addr
				+ ", m_addr_detail=" + m_addr_detail + ", del=" + del + ", join_date=" + join_date + ", amount="
				+ amount + ", file=" + file + ", startRow=" + startRow + ", endRow=" + endRow + ", vCode=" + vCode
				+ "]";
	}

	
	
}
