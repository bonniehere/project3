package com.constant01.model;

import java.sql.Date;
import lombok.Data;

@Data
public class QnAr {
	private int qar_no;
	private String qar_content;
	private Date qar_regDate;
	private int qa_no;
	
	// paging용
	private int startRow;
	private int endRow;
	public int getQar_no() {
		return qar_no;
	}
	public void setQar_no(int qar_no) {
		this.qar_no = qar_no;
	}
	public String getQar_content() {
		return qar_content;
	}
	public void setQar_content(String qar_content) {
		this.qar_content = qar_content;
	}
	public Date getQar_regDate() {
		return qar_regDate;
	}
	public void setQar_regDate(Date qar_regDate) {
		this.qar_regDate = qar_regDate;
	}
	public int getQa_no() {
		return qa_no;
	}
	public void setQa_no(int qa_no) {
		this.qa_no = qa_no;
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
	@Override
	public String toString() {
		return "QnAr [qar_no=" + qar_no + ", qar_content=" + qar_content + ", qar_regDate=" + qar_regDate + ", qa_no="
				+ qa_no + ", startRow=" + startRow + ", endRow=" + endRow + "]";
	}
	
	
}