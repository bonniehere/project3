package com.constant01.service;
import java.util.ArrayList;

import com.constant01.model.cartVO;

public interface cartService {

	
	public ArrayList<cartVO> cart_list(cartVO list);

	public void cart_delete(cartVO list);

	public void cart_add(cartVO list);
//	public void cart_add(String productcode,int quantity,int price);
}
