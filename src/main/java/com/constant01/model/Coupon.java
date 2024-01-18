package com.constant01.model;

import java.sql.Date;

import lombok.Data;

@Data
public class Coupon {
	private int coupon_no;
	private String coupon_type;
	private String coupon_use;
	private Date coupon_max_date;
	private int use_price;
	private String m_email;
	public int getCoupon_no() {
		return coupon_no;
	}
	public void setCoupon_no(int coupon_no) {
		this.coupon_no = coupon_no;
	}
	public String getCoupon_type() {
		return coupon_type;
	}
	public void setCoupon_type(String coupon_type) {
		this.coupon_type = coupon_type;
	}
	public String getCoupon_use() {
		return coupon_use;
	}
	public void setCoupon_use(String coupon_use) {
		this.coupon_use = coupon_use;
	}
	public Date getCoupon_max_date() {
		return coupon_max_date;
	}
	public void setCoupon_max_date(Date coupon_max_date) {
		this.coupon_max_date = coupon_max_date;
	}
	public int getUse_price() {
		return use_price;
	}
	public void setUse_price(int use_price) {
		this.use_price = use_price;
	}
	public String getM_email() {
		return m_email;
	}
	public void setM_email(String m_email) {
		this.m_email = m_email;
	}
	@Override
	public String toString() {
		return "Coupon [coupon_no=" + coupon_no + ", coupon_type=" + coupon_type + ", coupon_use=" + coupon_use
				+ ", coupon_max_date=" + coupon_max_date + ", use_price=" + use_price + ", m_email=" + m_email + "]";
	}
	
	
}
