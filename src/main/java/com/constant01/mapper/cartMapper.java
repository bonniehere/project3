package com.constant01.mapper;

import java.util.ArrayList;
import java.util.List;

import com.constant01.model.cartVO;

public interface cartMapper {
	public ArrayList<cartVO> cart_list(cartVO list);

	public void cart_delete(cartVO list);

	
	public void cart_add(cartVO list);

	public void orderItem(List<cartVO> orderItems);

	public void deleteOrder(String order_no);

	
}
