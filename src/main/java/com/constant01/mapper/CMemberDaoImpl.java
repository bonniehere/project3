package com.constant01.mapper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.constant01.model.CMember;



@Repository
public class CMemberDaoImpl implements CMemberDao {
	@Autowired
	private SqlSessionTemplate sst;

	@Override
	public CMember select(String m_email) {
		return sst.selectOne("memberns.select", m_email);
	}

	@Override
	public int insert(CMember member) {
		return sst.insert("memberns.insert", member); // 회원가입
	}

	@Override
	public CMember selectFindId(String m_tel, String m_name) {
		// TODO Auto-generated method stub
		Map<String, String> map = new HashMap<String, String>();
		map.put("m_tel", m_tel);
		map.put("m_name", m_name);
		return sst.selectOne("memberns.selectFindId", map);
	}

	@Override
	public int delete(String m_email) {
		return sst.delete("memberns.delete", m_email);
	}

	@Override
	public int update(CMember member) {
		return sst.update("memberns.update", member);
	}

	@Override
	public CMember selectNum(String m_email) {
		return sst.selectOne("memberns.selectNum", m_email);
	}

	@Override
	public CMember selectFindPw(String m_email) {
		// TODO Auto-generated method stub
		return sst.selectOne("memberns.selectFindPw", m_email);
	}

	@Override
	public int updateFindPw(String m_email, String m_password) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("m_email", m_email);
		map.put("m_password", m_password);
		return sst.update("memberns.updateFindPw", map);
	}
	
	// 주문 취소
	@Override
	public int refund(int order_no) {
		// TODO Auto-generated method stub
		return sst.update("memberns.refund", order_no);
	}
	
	@Override
	public int getMbTotal(CMember member) {
		// TODO Auto-generated method stub
		return sst.selectOne("memberns.getMbTotal", member);
	}

	@Override
	public List<CMember> mbList(CMember member) {
		// TODO Auto-generated method stub
		return sst.selectList("memberns.mbList", member);
	}

	@Override
	public int adminMbDelete(String m_email) {
		// TODO Auto-generated method stub
		return sst.update("memberns.adminMbDelete", m_email);
	}

	// 주문시 회원 총 주문금액 변경
	public int upadteAmount(CMember member) {
		// TODO Auto-generated method stub
		return sst.update("memberns.updateAmount", member);
	}

	// 주문 취소시 회원 총 주문금액 변경
	public int updateAmount2(CMember member) {
		// TODO Auto-generated method stub
		return sst.update("memberns.updateAmount2", member);
	}
	
}
