package com.constant01.mapper;

import java.util.ArrayList;
import java.util.List;

import com.constant01.model.BoardDTO;
import com.constant01.model.DeliveryDTO;
import com.constant01.model.DriverDTO;
import com.constant01.model.M_order;

public interface M_orderMapper {

	int getODTotal(M_order m_order);

	List<M_order> odList(M_order m_order);
	
	List<M_order> odList1(M_order m_order);
	
	List<M_order> odList2(M_order m_order);
	
	List<M_order> odList3(M_order m_order);
	
	List<M_order> odList4(M_order m_order);

	M_order selectOD(int order_no);

	int updateOD(M_order m_order);
	
	int updateOD2(M_order m_order);
	
	int updateOD22(M_order m_order);
	
	int updateOD222(M_order m_order);
	
	int updateOD3(int order_no);
	
	int updateOD4(int order_no);

	int insert(M_order order);

	List<M_order> orderList(M_order m_order);

	M_order select(int num);

	List<M_order> orderList2(M_order m_order);

	int getTotal(M_order m_order);

	int getTotal2(M_order m_order);
	
	int updateCC(M_order m_order);
	
	int updateCCC(M_order m_order);
	
	int updateCCCC(M_order m_order);
	
	int selectMAX();

	int selectTotal(String m_email);
	
	int getBDTotal(BoardDTO board);
	
	List<M_order> bdList(BoardDTO board);
	
	int bdUpdate(BoardDTO board);

//	int insertAmount(String m_email);
	
	//고객 담당 기사 select
	public ArrayList<M_order> delist(DeliveryDTO delivery);
	
	
}
