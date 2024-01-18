package com.constant01.mapper;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.constant01.model.QnAr;

@Repository
public class QnArDaoImpl implements QnArDao {
	@Autowired
	private SqlSessionTemplate sst;

	@Override
	public int insert(QnAr qnar) {
		// TODO Auto-generated method stub
		return sst.insert("qnarns.insert",qnar); 
	}

	@Override
	public List<QnAr> qnarList(int qa_no) {
		// TODO Auto-generated method stub
		return sst.selectList("qnarns.qnarList", qa_no);
	}
}
