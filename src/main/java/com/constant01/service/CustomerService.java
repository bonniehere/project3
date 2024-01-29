package com.constant01.service;

import java.util.ArrayList;

import com.constant01.model.CMember;


public interface CustomerService {
	
	//public ArrayList<CustomerDTO> list(CustomerDTO customer);
	
	// 회원 로그인입디다 
	public CMember login(CMember customer);
	
	
	public CMember login2(CMember customer);

}
