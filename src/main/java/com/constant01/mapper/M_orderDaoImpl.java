package com.constant01.mapper;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.constant01.model.M_order;

@Repository
public class M_orderDaoImpl implements M_orderDao {
	@Autowired
	private SqlSessionTemplate sst;

	@Override
	public int getODTotal(M_order m_order) { // 제휴/광고 총갯수구하기
		// TODO Auto-generated method stub
		return sst.selectOne("m_orderns.getODTotal", m_order);
	}

	@Override
	public List<M_order> odList(M_order m_order) {
		// TODO Auto-generated method stub
		return sst.selectList("m_orderns.odList", m_order);
	}

	@Override
	public M_order selectOD(int order_no) {
		// TODO Auto-generated method stub
		return sst.selectOne("m_orderns.selectOD", order_no);
	}

	@Override
	public int updateOD(int order_no) {
		// TODO Auto-generated method stub
		return sst.update("m_orderns.updateOD", order_no);
	}

	@Override
	public int insert(M_order order) {
		// TODO Auto-generated method stub
		return sst.insert("m_orderns.insert", order);
	}

	@Override
	public List<M_order> orderList(M_order m_order) {
		// TODO Auto-generated method stub
		return sst.selectList("m_orderns.orderList", m_order);
	}

	@Override
	public M_order select(int num) {
		// TODO Auto-generated method stub
		return sst.selectOne("m_orderns.select", num);
	}

	@Override
	public List<M_order> orderList2(M_order m_order) {
		// TODO Auto-generated method stub
		return sst.selectList("m_orderns.orderList2", m_order);
	}

	@Override
	public int getTotal(M_order m_order) {
		// TODO Auto-generated method stub
		return sst.selectOne("m_orderns.getTotal", m_order);
	}

	@Override
	public int getTotal2(M_order m_order) {
		// TODO Auto-generated method stub
		return sst.selectOne("m_orderns.getTotal2", m_order);
	}

	@Override
	public int updateCC(int order_no) {
		// TODO Auto-generated method stub
		return sst.update("m_orderns.updateCC", order_no);
	}
	
	@Override
	public int selectMAX() {
		// TODO Auto-generated method stub
		return sst.selectOne("m_orderns.selectMAX");
	}

	@Override
	public int selectTotal(String m_email) {
		return sst.selectOne("m_orderns.selectTotal", m_email);
	}

//	@Override
//	public int insertAmount(String m_email) {
//		// TODO Auto-generated method stub
//		return sst.insert("m_orderns.insertAmount", m_email);
//	}
}
