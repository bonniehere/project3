package com.constant01.mapper;

import java.util.ArrayList;

import com.constant01.model.CMember;
import com.constant01.model.Coupon;


public interface CustomerMapper {
	//public ArrayList<CustomerDTO> list();  
	public CMember login(CMember customer);
	
	
	public CMember login2(CMember customer);


	public ArrayList<Coupon> checkCoupon(Coupon coupon);


	public void applyCoupon(Coupon coupon);


	public void changeCoupon(Coupon coupon);
}
