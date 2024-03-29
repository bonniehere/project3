package com.constant01.mapper;

import java.util.List;
import java.util.ArrayList;

import com.constant01.model.CMember;



public interface CMemberMapper {

	CMember select(String m_email);
	
	CMember select2(String m_email);
	
	CMember selectName(CMember member);

	void insert(CMember member);
	
	void insert2(CMember member);

	CMember selectFindId(String m_tel, String m_name);

	CMember selectFindPw(String m_email);

	int delete(String m_email);

	int update(CMember member);
	
	void updateStat(CMember member);

	CMember selectNum(String m_email);

	int updateFindPw(String m_email, String m_password);
	
	int refund(int order_no);
	
	int getMbTotal(CMember member);

	List<CMember> mbList(CMember member);
	
	List<CMember> mbList1(CMember member);
	
	List<CMember> stList(CMember member);

	int adminMbDelete(String m_email);

	int upadteAmount(CMember member);

	int updateAmount2(CMember member);
}
