package com.constant01.mapper;

import java.util.ArrayList;

import com.constant01.model.CustomerDTO;

public interface CustomerMapper {
	//public ArrayList<CustomerDTO> list();
	
	public CustomerDTO login(CustomerDTO customer);

}
