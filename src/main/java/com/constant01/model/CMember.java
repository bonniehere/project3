package com.constant01.model;

import java.sql.Date;
import org.springframework.web.multipart.MultipartFile;
import lombok.Data;

@Data
public class CMember {
	private String m_email;
	private String m_name;
	private String m_tel;
	private String m_password;
	private String m_img;
	private Date m_birth;
	private String m_addr;
	private String m_addr_detail;
	private Date join_date;
	private String del;
	private String recommend_code;
	private int mileage;
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

	public String getM_tel() {
		return m_tel;
	}

	public void setM_tel(String m_tel) {
		this.m_tel = m_tel;
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
		return "CMember [m_email=" + m_email + ", m_name=" + m_name + ", m_tel=" + m_tel + ", m_password=" + m_password
				+ ", m_img=" + m_img + ", m_birth=" + m_birth + ", m_addr=" + m_addr + ", m_addr_detail="
				+ m_addr_detail + ", join_date=" + join_date + ", del=" + del + ", recommend_code=" + recommend_code
				+ ", mileage=" + mileage + ", amount=" + amount + ", file=" + file + ", startRow=" + startRow
				+ ", endRow=" + endRow + ", vCode=" + vCode + "]";
	}

	
}