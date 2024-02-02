package com.constant01.model;

import java.sql.Date;

public class M_order {
	private int order_no;
	private String m_userId;
	private String m_email;
	private int p_no;
	private String productname;
	private String productcode;
	private Date order_date;
	private int order_quantity;
	private String refund_chk;
	private int total_price;
	private String status;
	private String ju_name;
	private String ju_tel;
	private String ju_zipCd;
	private String ju_addr;
	private String ju_addr_detail;
	private String su_name;
	private String su_zipCd;
	private String su_tel;
	private String su_addr;
	private String su_addr_detail;
	private String m_userStat;
	private String m_driver;
	
	// paging용
    private int startRow;
    private int endRow;
    
	// 현관 비밀번호, 배송방법, 배송 메모
	private String su_pass;
	private String su_deliv;
	private String su_memo;
	
	// product
	private int p_sal;
	private String p_name;
	
	// 쿠폰 사용여부
	private String coupon_use;

	public int getOrder_no() {
		return order_no;
	}

	public void setOrder_no(int order_no) {
		this.order_no = order_no;
	}

	public String getM_userId() {
		return m_userId;
	}

	public void setM_userId(String m_userId) {
		this.m_userId = m_userId;
	}

	public String getM_email() {
		return m_email;
	}

	public void setM_email(String m_email) {
		this.m_email = m_email;
	}

	public int getP_no() {
		return p_no;
	}

	public void setP_no(int p_no) {
		this.p_no = p_no;
	}

	public String getProductname() {
		return productname;
	}

	public void setProductname(String productname) {
		this.productname = productname;
	}

	public String getProductcode() {
		return productcode;
	}

	public void setProductcode(String productcode) {
		this.productcode = productcode;
	}

	public Date getOrder_date() {
		return order_date;
	}

	public void setOrder_date(Date order_date) {
		this.order_date = order_date;
	}

	public int getOrder_quantity() {
		return order_quantity;
	}

	public void setOrder_quantity(int order_quantity) {
		this.order_quantity = order_quantity;
	}

	public String getRefund_chk() {
		return refund_chk;
	}

	public void setRefund_chk(String refund_chk) {
		this.refund_chk = refund_chk;
	}

	public int getTotal_price() {
		return total_price;
	}

	public void setTotal_price(int total_price) {
		this.total_price = total_price;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getJu_name() {
		return ju_name;
	}

	public void setJu_name(String ju_name) {
		this.ju_name = ju_name;
	}

	public String getJu_tel() {
		return ju_tel;
	}

	public void setJu_tel(String ju_tel) {
		this.ju_tel = ju_tel;
	}

	public String getJu_zipCd() {
		return ju_zipCd;
	}

	public void setJu_zipCd(String ju_zipCd) {
		this.ju_zipCd = ju_zipCd;
	}

	public String getJu_addr() {
		return ju_addr;
	}

	public void setJu_addr(String ju_addr) {
		this.ju_addr = ju_addr;
	}

	public String getJu_addr_detail() {
		return ju_addr_detail;
	}

	public void setJu_addr_detail(String ju_addr_detail) {
		this.ju_addr_detail = ju_addr_detail;
	}

	public String getSu_name() {
		return su_name;
	}

	public void setSu_name(String su_name) {
		this.su_name = su_name;
	}

	public String getSu_zipCd() {
		return su_zipCd;
	}

	public void setSu_zipCd(String su_zipCd) {
		this.su_zipCd = su_zipCd;
	}

	public String getSu_tel() {
		return su_tel;
	}

	public void setSu_tel(String su_tel) {
		this.su_tel = su_tel;
	}

	public String getSu_addr() {
		return su_addr;
	}

	public void setSu_addr(String su_addr) {
		this.su_addr = su_addr;
	}

	public String getSu_addr_detail() {
		return su_addr_detail;
	}

	public void setSu_addr_detail(String su_addr_detail) {
		this.su_addr_detail = su_addr_detail;
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

	public String getSu_pass() {
		return su_pass;
	}

	public void setSu_pass(String su_pass) {
		this.su_pass = su_pass;
	}

	public String getSu_deliv() {
		return su_deliv;
	}

	public void setSu_deliv(String su_deliv) {
		this.su_deliv = su_deliv;
	}

	public String getSu_memo() {
		return su_memo;
	}

	public void setSu_memo(String su_memo) {
		this.su_memo = su_memo;
	}

	public int getP_sal() {
		return p_sal;
	}

	public void setP_sal(int p_sal) {
		this.p_sal = p_sal;
	}

	public String getP_name() {
		return p_name;
	}

	public void setP_name(String p_name) {
		this.p_name = p_name;
	}

	public String getCoupon_use() {
		return coupon_use;
	}

	public void setCoupon_use(String coupon_use) {
		this.coupon_use = coupon_use;
	}

	public String getM_userStat() {
		return m_userStat;
	}

	public void setM_userStat(String m_userStat) {
		this.m_userStat = m_userStat;
	}

	public String getM_driver() {
		return m_driver;
	}

	public void setM_driver(String m_driver) {
		this.m_driver = m_driver;
	}

	@Override
	public String toString() {
		return "M_order [order_no=" + order_no + ", m_userId=" + m_userId + ", m_email=" + m_email + ", p_no=" + p_no
				+ ", productname=" + productname + ", productcode=" + productcode + ", order_date=" + order_date
				+ ", order_quantity=" + order_quantity + ", refund_chk=" + refund_chk + ", total_price=" + total_price
				+ ", status=" + status + ", ju_name=" + ju_name + ", ju_tel=" + ju_tel + ", ju_zipCd=" + ju_zipCd
				+ ", ju_addr=" + ju_addr + ", ju_addr_detail=" + ju_addr_detail + ", su_name=" + su_name + ", su_zipCd="
				+ su_zipCd + ", su_tel=" + su_tel + ", su_addr=" + su_addr + ", su_addr_detail=" + su_addr_detail
				+ ", m_userStat=" + m_userStat + ", m_driver=" + m_driver + ", startRow=" + startRow + ", endRow="
				+ endRow + ", su_pass=" + su_pass + ", su_deliv=" + su_deliv + ", su_memo=" + su_memo + ", p_sal="
				+ p_sal + ", p_name=" + p_name + ", coupon_use=" + coupon_use + "]";
	}

	
	
}
