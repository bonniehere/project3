package com.constant01.service;

import java.util.ArrayList;

import com.constant01.model.CustomerDTO;

public interface CustomerService {
	
	//public ArrayList<CustomerDTO> list(CustomerDTO customer);
	
	// 로그인
	public CustomerDTO login(CustomerDTO customer);

}
