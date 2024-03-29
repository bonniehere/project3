package com.constant01.service;

import java.util.ArrayList;

//import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.constant01.mapper.CustomerMapper;
import com.constant01.model.CMember;
import com.constant01.model.Coupon;
import com.constant01.model.CustomerDTO;

@Service
public class CustomerServiceImpl implements CustomerService {
	@Autowired
	CustomerMapper cm; // CustomerMapper cm = new CustomerMapper;
	/*
	// 회원목록리스트(관리자)
	public ArrayList<CustomerDTO> list() {
	// 회원목록리스트
	return cm.list();
	}
	*/
	// 회원 로그인입디다 !!
	public CMember login(CMember customer) {
	return cm.login(customer);
	}
	
	public CMember login2(CMember customer) {
		return cm.login2(customer);
	}
	public ArrayList<Coupon> checkCoupon(Coupon coupon) {
		return cm.checkCoupon(coupon);
	}
	
	public void applyCoupon(Coupon coupon) {
		cm.applyCoupon(coupon);
	}
	
	public void changeCoupon(Coupon coupon) {
		cm.changeCoupon(coupon);
	}
	
}
