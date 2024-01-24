package com.constant01.model;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;


public class QnA {
	private int qa_no;
	private String qa_subject;
	private String qa_content;
	private String qa_fileName;
	private Date reg_date;
	private String qa_condition;
	private int qa_ref;
    private int qa_refStep;
    private int qa_refLevel;
	private String qa_del;
	private String m_email;
	
	//paging용
    private int startRow;
    private int endRow;

	// upload용 사진
	private MultipartFile file;
	
	// 조인용
	private String m_name;

	public int getQa_no() {
		return qa_no;
	}

	public void setQa_no(int qa_no) {
		this.qa_no = qa_no;
	}

	public String getQa_subject() {
		return qa_subject;
	}

	public void setQa_subject(String qa_subject) {
		this.qa_subject = qa_subject;
	}

	public String getQa_content() {
		return qa_content;
	}

	public void setQa_content(String qa_content) {
		this.qa_content = qa_content;
	}

	public String getQa_fileName() {
		return qa_fileName;
	}

	public void setQa_fileName(String qa_fileName) {
		this.qa_fileName = qa_fileName;
	}

	public Date getReg_date() {
		return reg_date;
	}

	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}

	public String getQa_condition() {
		return qa_condition;
	}

	public void setQa_condition(String qa_condition) {
		this.qa_condition = qa_condition;
	}

	public int getQa_ref() {
		return qa_ref;
	}

	public void setQa_ref(int qa_ref) {
		this.qa_ref = qa_ref;
	}

	public int getQa_refStep() {
		return qa_refStep;
	}

	public void setQa_refStep(int qa_refStep) {
		this.qa_refStep = qa_refStep;
	}

	public int getQa_refLevel() {
		return qa_refLevel;
	}

	public void setQa_refLevel(int qa_refLevel) {
		this.qa_refLevel = qa_refLevel;
	}

	public String getQa_del() {
		return qa_del;
	}

	public void setQa_del(String qa_del) {
		this.qa_del = qa_del;
	}

	public String getM_email() {
		return m_email;
	}

	public void setM_email(String m_email) {
		this.m_email = m_email;
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

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}

	public String getM_name() {
		return m_name;
	}

	public void setM_name(String m_name) {
		this.m_name = m_name;
	}

	@Override
	public String toString() {
		return "QnA [qa_no=" + qa_no + ", qa_subject=" + qa_subject + ", qa_content=" + qa_content + ", qa_fileName="
				+ qa_fileName + ", reg_date=" + reg_date + ", qa_condition=" + qa_condition + ", qa_ref=" + qa_ref
				+ ", qa_refStep=" + qa_refStep + ", qa_refLevel=" + qa_refLevel + ", qa_del=" + qa_del + ", m_email="
				+ m_email + ", startRow=" + startRow + ", endRow=" + endRow + ", file=" + file + ", m_name=" + m_name
				+ "]";
	}
	
	
}
