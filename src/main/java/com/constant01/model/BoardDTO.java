package com.constant01.model;



public class BoardDTO {

		
		//	제품코드 
		private String productcode;
		//분류코드
		private String classificationcode;
		//품목명
		private String productname;
		//규격
		private String standard;
		//단위
		private String unit;
		//수량
		private int quantity;
		//단가
		private String price;
		//제조원
		private String manufacturer;
		
		public String getProductcode() {
			return productcode;
		}
		public void setProductcode(String productcode) {
			this.productcode = productcode;
		}
		public String getClassificationcode() {
			return classificationcode;
		}
		public void setClassificationcode(String classificationcode) {
			this.classificationcode = classificationcode;
		}
		public String getProductname() {
			return productname;
		}
		public void setProductname(String productname) {
			this.productname = productname;
		}
		public String getStandard() {
			return standard;
		}
		public void setStandard(String standard) {
			this.standard = standard;
		}
		public String getUnit() {
			return unit;
		}
		public void setUnit(String unit) {
			this.unit = unit;
		}
		public int getQuantity() {
			return quantity;
		}
		public void setQuantity(int quantity) {
			this.quantity = quantity;
		}
		public String getPrice() {
			return price;
		}
		public void setPrice(String price) {
			this.price = price;
		}
		public String getManufacturer() {
			return manufacturer;
		}
		public void setManufacturer(String manufacturer) {
			this.manufacturer = manufacturer;
		}
		@Override
		public String toString() {
			return "BoardDTO [productcode=" + productcode + ", classificationcode=" + classificationcode
					+ ", productname=" + productname + ", standard=" + standard + ", unit=" + unit + ", quantity="
					+ quantity + ", price=" + price + ", manufacturer=" + manufacturer + "]";
		}
		
		
}
