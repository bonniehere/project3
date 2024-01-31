package com.constant01.model;

import java.util.Date;

public class cartVO {

	int no;
	String productname;
	String productcode;
	int quantity;
	int price;
	int subtotal;
	String m_userId;
	String name;
	String phone;
	String zipCd;
	String addr;
	String addr_detail;
	String date;
	String confirm;
	
	String m_name;
	String m_email;
    String m_phone;
    int m_zipCd;
    String m_addr;
    String m_addr_detail;
	
    String order_date;
    
    String JU_name;
    String SU_name;
    
	int order_quantity;
    int total_price;
    
    int order_no;
    
    
    
    
    public int getOrder_no() {
		return order_no;
	}
	public void setOrder_no(int order_no) {
		this.order_no = order_no;
	}
	public String getJU_name() {
		return JU_name;
	}
	public void setJU_name(String jU_name) {
		JU_name = jU_name;
	}
	
    
	public String getSU_name() {
		return SU_name;
	}
	public void setSU_name(String sU_name) {
		SU_name = sU_name;
	}
	public int getOrder_quantity() {
		return order_quantity;
	}
	public void setOrder_quantity(int order_quantity) {
		this.order_quantity = order_quantity;
	}
	public int getTotal_price() {
		return total_price;
	}
	public void setTotal_price(int total_price) {
		this.total_price = total_price;
	}
	public String getOrder_date() {
		return order_date;
	}
	public void setOrder_date(String order_date) {
		this.order_date = order_date;
	}
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
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
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getSubtotal() {
		return subtotal;
	}
	public void setSubtotal(int subtotal) {
		this.subtotal = subtotal;
	}
	public String getM_userId() {
		return m_userId;
	}
	public void setM_userId(String m_userId) {
		this.m_userId = m_userId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	public String getAddr_detail() {
		return addr_detail;
	}
	public void setAddr_detail(String addr_detail) {
		this.addr_detail = addr_detail;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getConfirm() {
		return confirm;
	}
	public void setConfirm(String confirm) {
		this.confirm = confirm;
	}
	public String getM_email() {
		return m_email;
	}
	public void setM_email(String m_email) {
		this.m_email = m_email;
	}
	
	public int getM_zipCd() {
		return m_zipCd;
	}
	public void setM_zipCd(int m_zipCd) {
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
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getM_phone() {
		return m_phone;
	}
	public void setM_phone(String m_phone) {
		this.m_phone = m_phone;
	}
	@Override
	public String toString() {
		return "cartVO [no=" + no + ", productname=" + productname + ", productcode=" + productcode + ", quantity="
				+ quantity + ", price=" + price + ", subtotal=" + subtotal + ", m_userId=" + m_userId + ", name=" + name
				+ ", phone=" + phone + ", zipCd=" + zipCd + ", addr=" + addr + ", addr_detail=" + addr_detail
				+ ", date=" + date + ", confirm=" + confirm + ", m_name=" + m_name + ", m_email=" + m_email
				+ ", m_phone=" + m_phone + ", m_zipCd=" + m_zipCd + ", m_addr=" + m_addr + ", m_addr_detail="
				+ m_addr_detail + ", order_date=" + order_date + ", order_quantity=" + order_quantity + ", total_price="
				+ total_price + "]";
	}
	
	
	
	
	
	
	
	
}
