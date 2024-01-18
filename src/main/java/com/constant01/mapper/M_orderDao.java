package com.constant01.mapper;

import java.util.List;

import com.constant01.model.M_order;

public interface M_orderDao {

	int getODTotal(M_order m_order);

	List<M_order> odList(M_order m_order);

	M_order selectOD(int order_no);

	int updateOD(int order_no);

	int insert(M_order order);

	List<M_order> orderList(M_order m_order);

	M_order select(int num);

	List<M_order> orderList2(M_order m_order);

	int getTotal(M_order m_order);

	int getTotal2(M_order m_order);
	
	int updateCC(int order_no);
	
	int selectMAX();

	int selectTotal(String m_email);

//	int insertAmount(String m_email);
}
