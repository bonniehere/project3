package com.constant01.model;

import org.springframework.web.multipart.MultipartFile;


public class Affi {
	private int af_no;
	private String af_name;
	private String af_tel;
	private String af_email;
	private String af_title;
	private String af_homepage;
	private String af_content;
	private String af_file;
	
	// paging용
    private int startRow;
    private int endRow;
    

	// 업로드
    private MultipartFile file;


	public int getAf_no() {
		return af_no;
	}


	public void setAf_no(int af_no) {
		this.af_no = af_no;
	}


	public String getAf_name() {
		return af_name;
	}


	public void setAf_name(String af_name) {
		this.af_name = af_name;
	}


	public String getAf_tel() {
		return af_tel;
	}


	public void setAf_tel(String af_tel) {
		this.af_tel = af_tel;
	}


	public String getAf_email() {
		return af_email;
	}


	public void setAf_email(String af_email) {
		this.af_email = af_email;
	}


	public String getAf_title() {
		return af_title;
	}


	public void setAf_title(String af_title) {
		this.af_title = af_title;
	}


	public String getAf_homepage() {
		return af_homepage;
	}


	public void setAf_homepage(String af_homepage) {
		this.af_homepage = af_homepage;
	}


	public String getAf_content() {
		return af_content;
	}


	public void setAf_content(String af_content) {
		this.af_content = af_content;
	}


	public String getAf_file() {
		return af_file;
	}


	public void setAf_file(String af_file) {
		this.af_file = af_file;
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


	@Override
	public String toString() {
		return "Affi [af_no=" + af_no + ", af_name=" + af_name + ", af_tel=" + af_tel + ", af_email=" + af_email
				+ ", af_title=" + af_title + ", af_homepage=" + af_homepage + ", af_content=" + af_content
				+ ", af_file=" + af_file + ", startRow=" + startRow + ", endRow=" + endRow + ", file=" + file + "]";
	}


    
}
