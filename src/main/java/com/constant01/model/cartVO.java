package com.constant01.model;

public class cartVO {

	int no;
	String productname;
	String productcode;
	int quantity;
	int price;
	int subtotal;
	
	
	public int getSubtotal() {
		return subtotal;
	}
	public void setSubtotal(int subtotal) {
		this.subtotal = subtotal;
	}
	public String getProductname() {
		return productname;
	}
	public void setProductname(String productname) {
		this.productname = productname;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
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
	@Override
	public String toString() {
		return "cartVO [no=" + no + ", productname=" + productname + ", productcode=" + productcode + ", quantity="
				+ quantity + ", price=" + price + ", subtotal=" + subtotal + "]";
	}
	
	
	
	
	
}
