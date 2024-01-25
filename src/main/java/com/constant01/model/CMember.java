package com.constant01.model;

import java.sql.Date;
import org.springframework.web.multipart.MultipartFile;
import lombok.Data;

@Data
public class CMember {
	private String m_email; //담당자 email
	private String m_name; // 담당자 이름
	private String m_password;
	private String m_img; // 사용안함
	private Date m_birth; // 사용안함
	private String m_hspname; // 병원명
	private String m_userStat; // 회원구분
	private String m_phone; // 담당자 휴대폰번호
	private String m_tel; // 담당자 전화번호
	private String m_zipCd; //우편번호
	private String m_addr; // 주소
	private String m_addr_detail; //주소 상세
	private Date join_date; // 가입일
	private String del; // 회원탈퇴 여부
	private String recommend_code; // 영업사원 추천인
	private int mileage; // 적립금
	private int amount;

	// 업로드
	private MultipartFile file;

	// paging용
	private int startRow;
	private int endRow;

	// 비밀번호 변경 임시번호
	private int vCode;

	public String getM_email() {
		return m_email;
	}

	public void setM_email(String m_email) {
		this.m_email = m_email;
	}

	public String getM_name() {
		return m_name;
	}

	public void setM_name(String m_name) {
		this.m_name = m_name;
	}

	public String getM_password() {
		return m_password;
	}

	public void setM_password(String m_password) {
		this.m_password = m_password;
	}

	public String getM_img() {
		return m_img;
	}

	public void setM_img(String m_img) {
		this.m_img = m_img;
	}

	public Date getM_birth() {
		return m_birth;
	}

	public void setM_birth(Date m_birth) {
		this.m_birth = m_birth;
	}

	public String getM_hspname() {
		return m_hspname;
	}

	public void setM_hspname(String m_hspname) {
		this.m_hspname = m_hspname;
	}

	public String getM_userStat() {
		return m_userStat;
	}

	public void setM_userStat(String m_userStat) {
		this.m_userStat = m_userStat;
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

	public Date getJoin_date() {
		return join_date;
	}

	public void setJoin_date(Date join_date) {
		this.join_date = join_date;
	}

	public String getDel() {
		return del;
	}

	public void setDel(String del) {
		this.del = del;
	}

	public String getRecommend_code() {
		return recommend_code;
	}

	public void setRecommend_code(String recommend_code) {
		this.recommend_code = recommend_code;
	}

	public int getMileage() {
		return mileage;
	}

	public void setMileage(int mileage) {
		this.mileage = mileage;
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

	@Override
	public String toString() {
		return "CMember [m_email=" + m_email + ", m_name=" + m_name + ", m_password=" + m_password + ", m_img=" + m_img
				+ ", m_birth=" + m_birth + ", m_hspname=" + m_hspname + ", m_userStat=" + m_userStat + ", m_phone="
				+ m_phone + ", m_tel=" + m_tel + ", m_zipCd=" + m_zipCd + ", m_addr=" + m_addr + ", m_addr_detail="
				+ m_addr_detail + ", join_date=" + join_date + ", del=" + del + ", recommend_code=" + recommend_code
				+ ", mileage=" + mileage + ", amount=" + amount + ", file=" + file + ", startRow=" + startRow
				+ ", endRow=" + endRow + ", vCode=" + vCode + "]";
	}

	
	
}