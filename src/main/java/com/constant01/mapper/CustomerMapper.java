package com.constant01.mapper;

import java.util.ArrayList;

import com.constant01.model.CMember;


public interface CustomerMapper {
	//public ArrayList<CustomerDTO> list();  
	public CMember login(CMember customer);
	
	public CMember login2(CMember customer);
}
