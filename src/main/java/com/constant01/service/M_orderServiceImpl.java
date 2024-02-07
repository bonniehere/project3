package com.constant01.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.constant01.mapper.M_orderMapper;
import com.constant01.model.BoardDTO;
import com.constant01.model.DeliveryDTO;
import com.constant01.model.DriverDTO;
import com.constant01.model.M_order;

@Service
public class M_orderServiceImpl implements M_orderService {
	@Autowired
	private M_orderMapper od;
	
	@Override
	public int getODTotal(M_order m_order) {
		// TODO Auto-generated method stub
		return od.getODTotal(m_order);
	}


	@Override
	public List<M_order> odList(M_order m_order) {
		// TODO Auto-generated method stub
		return od.odList(m_order); 
	}
	
	@Override
	public List<M_order> odList1(M_order m_order) {
		// TODO Auto-generated method stub
		return od.odList(m_order); 
	}

	@Override
	public M_order selectOD(int order_no) {
		// TODO Auto-generated method stub
		return od.selectOD(order_no);
	}
	
	@Override
	public void updateOD(M_order m_order) {
		// TODO Auto-generated method stub
		od.updateOD(m_order);
	}
	
	@Override
	public int updateOD2(M_order m_order) {
		// TODO Auto-generated method stub
		return od.updateOD2(m_order);
	}
	
	@Override
	public int updateOD22(M_order m_order) {
		// TODO Auto-generated method stub
		return od.updateOD22(m_order);
	}
	
	@Override
	public int updateOD3(int order_no) {
		// TODO Auto-generated method stub
		return od.updateOD3(order_no);
	}
	
	@Override
	public int updateOD4(int order_no) {
		// TODO Auto-generated method stub
		return od.updateOD4(order_no);
	}
	
	@Override
	public int insert(M_order order) {
		// TODO Auto-generated method stub
		return od.insert(order);
	}

	// 주문용 리스트 뽑기
	public List<M_order> orderList(M_order m_order) {
		// TODO Auto-generated method stub
		return od.orderList(m_order);
	}

	@Override
	public M_order select(int num) {
		// TODO Auto-generated method stub
		return od.select(num);
	}

	// 주문 취소용 리스트 뽑기
	public List<M_order> orderList2(M_order m_order) {
		// TODO Auto-generated method stub
		return od.orderList2(m_order);
	}

	@Override
	public int getTotal(M_order m_order) {
		// TODO Auto-generated method stub
		return od.getTotal(m_order);
	}

	@Override
	public int getTotal2(M_order m_order) {
		// TODO Auto-generated method stub
		return od.getTotal2(m_order);
	}
	
	@Override
	public int updateCC(M_order m_order) {
		// TODO Auto-generated method stub
		return od.updateCC(m_order);
	}
	
	@Override
	public int updateCCC(M_order m_order) {
		// TODO Auto-generated method stub
		return od.updateCCC(m_order);
	}

	@Override
	public int selectMAX() {
		// TODO Auto-generated method stub
		return od.selectMAX();
	}

	@Override
	public int selectTotal(String m_email) {
		// TODO Auto-generated method stub
		return od.selectTotal(m_email);
	}
	
	@Override
	public int getBDTotal(BoardDTO board) {
		// TODO Auto-generated method stub
		return od.getBDTotal(board);
	}
	
	@Override
	public List<M_order> bdList(BoardDTO board) {
		// TODO Auto-generated method stub
		return od.bdList(board); 
	}
	
	@Override
	public int bdUpdate(BoardDTO board) {
		// TODO Auto-generated method stub
		return od.bdUpdate(board);
	}
//	@Override
//	public int insertAmount(String m_email) {
//		// TODO Auto-generated method stub
//		return od.insertAmount(m_email);
//	}
	//내가 추가함요
	//고객 담당 기사 select
	@Override
	public ArrayList<M_order> delist(DeliveryDTO delivery){
		return od.delist(delivery);
	}

}
