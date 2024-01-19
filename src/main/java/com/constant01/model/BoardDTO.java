package com.constant01.model;

import java.sql.Date;

public class BoardDTO {

	// 게시판번호 (bno)
		private int bno;
		// 제목 (title)
		private String title;
		// 내용 (content)
		private String content;
		// 작성일자 (regdate)
		private Date regdate;

		
		// 아이디 (id)
		private String id;
		public int getBno() {
			return bno;
		}
		public void setBno(int bno) {
			this.bno = bno;
		}
		public String getTitle() {
			return title;
		}
		public void setTitle(String title) {
			this.title = title;
		}
		public String getContent() {
			return content;
		}
		public void setContent(String content) {
			this.content = content;
		}
		public Date getRegdate() {
			return regdate;
		}
		public void setRegdate(Date regdate) {
			this.regdate = regdate;
		}
		
		public String getId() {
			return id;
		}
		public void setId(String id) {
			this.id = id;
		}
		
	
}
