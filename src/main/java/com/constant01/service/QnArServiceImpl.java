package com.constant01.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.constant01.mapper.QnArMapper;
import com.constant01.model.QnAr;

@Service
public class QnArServiceImpl implements QnArService {
	@Autowired
	private QnArMapper qrd;

	@Override
	public int insert(QnAr qnar) {
		// TODO Auto-generated method stub
		return qrd.insert(qnar);
	}

	@Override
	public List<QnAr> qnarList(int qa_no) {
		// TODO Auto-generated method stub
		return qrd.qnarList(qa_no);
	}



}
