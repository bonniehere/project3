package com.constant01.model;

public class cartVO {

	int no;
	String productname;
	String productcode;
	int quantity;
	int price;
	int subtotal;
	String m_userId;
	String name;
	int phone;
	String zipCd;
	String addr;
	String addr_detail;
	String date;
	String confirm;
	
	
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
	public int getPhone() {
		return phone;
	}
	public void setPhone(int phone) {
		this.phone = phone;
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
	@Override
	public String toString() {
		return "cartVO [no=" + no + ", productname=" + productname + ", productcode=" + productcode + ", quantity="
				+ quantity + ", price=" + price + ", subtotal=" + subtotal + ", m_userId=" + m_userId + ", name=" + name
				+ ", phone=" + phone + ", zipCd=" + zipCd + ", addr=" + addr + ", addr_detail=" + addr_detail
				+ ", date=" + date + ", confirm=" + confirm + "]";
	}
	
	
	
	
	
	
	
	
}
