package com.constant01.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.constant01.mapper.CustomerMapper;
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
	// 로그인입디다 !!
	public CustomerDTO login(CustomerDTO customer) {
	return cm.login(customer);
	}

}
