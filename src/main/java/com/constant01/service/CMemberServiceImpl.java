package com.constant01.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.constant01.mapper.CMemberMapper;
import com.constant01.model.CMember;

@Service
public class CMemberServiceImpl implements CMemberService{
	@Autowired
	private CMemberMapper md;
	
	@Override
	public CMember select(String m_email) {// 회원가입 아이디 중복체크, 로그인할때 사용하는 로직
		return md.select(m_email);
	}
	@Override
	public CMember select2(String m_email) {// 회원가입 아이디 중복체크, 로그인할때 사용하는 로직
		return md.select2(m_email);
	}

	@Override
	public void insert(CMember member) { // 회원가입
		md.insert(member);
	}
	@Override
	public void insert2(CMember member) { // 회원가입
		md.insert2(member);
	}

    
	@Override
	public CMember selectFindId(String m_tel, String m_name) {
		// TODO Auto-generated method stub
		return md.selectFindId(m_tel, m_name);
	}

	@Override
	public CMember selectFindPw(String m_email) {
		// TODO Auto-generated method stub
		return md.selectFindPw(m_email);
	}

	@Override
	public int delete(String m_email) {
		return md.delete(m_email);
	}

	@Override
	public int update(CMember member) {
		return md.update(member);
	}
	
	@Override
	public void updateStat(CMember member) {
		md.updateStat(member);
	}

	@Override
	public CMember selectNum(String m_email) {
		return md.selectNum(m_email);
	}

	@Override
	public int updateFindPw(String m_email, String m_password) {
		return md.updateFindPw(m_email, m_password);
	}

	@Override
	public int refund(int order_no) {
		// TODO Auto-generated method stub
		return md.refund(order_no);
	}

	@Override
	public int getMbTotal(CMember member) {
		// TODO Auto-generated method stub
		return md.getMbTotal(member);
	}

	@Override
	public List<CMember> mbList(CMember member) {
		// TODO Auto-generated method stub
		return md.mbList(member);
	}
	
	@Override
	public List<CMember> mbList1(CMember member) {
		// TODO Auto-generated method stub
		return md.mbList1(member);
	}
	
	@Override
	public List<CMember> stList(CMember member) {
		// TODO Auto-generated method stub
		return md.stList(member);
	}

	@Override
	public int adminMbDelete(String m_email) {
		// TODO Auto-generated method stub
		return md.adminMbDelete(m_email);
	}

	@Override
	public int updateAmount(CMember member) {
		// TODO Auto-generated method stub
		return md.upadteAmount(member);
	}

	@Override
	public int updateAmount2(CMember member) {
		// TODO Auto-generated method stub
		return md.updateAmount2(member);
	}
	
}
