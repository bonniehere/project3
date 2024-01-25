package com.constant01.model;

public class cartVO {

	int no;
	String productcode;
	int quantity;
	int price;
	
	
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
		return "cartVO [no=" + no + ", productcode=" + productcode + ", quantity=" + quantity + ", price=" + price
				+ "]";
	}
	
	
	
}
