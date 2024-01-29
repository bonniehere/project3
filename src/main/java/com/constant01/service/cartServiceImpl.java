package com.constant01.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.ArrayList;
import java.util.List;

import com.constant01.mapper.cartMapper;
import com.constant01.model.cartVO;

@Service
public class cartServiceImpl implements cartService{

	
	@Autowired
	cartMapper cm;
	
	public ArrayList<cartVO> cart_list(cartVO list){
		return cm.cart_list(list);
	}
	
	
	public void cart_delete(cartVO list) {
		cm.cart_delete(list);
	}

	public void cart_add(cartVO list) {
	cm.cart_add(list);
	}
//	public void orderItem(List<cartVO> orderItems) {
//		cm.orderItem(orderItems);
//	}
	public void orderItem(List<cartVO> orderItems) {
	    for (cartVO item : orderItems) {
	        cm.orderItem(item);
	    }
	}
}
