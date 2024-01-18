package com.constant01.service;

import java.util.List;

import com.constant01.model.QnAr;

public interface QnArService {

	int insert(QnAr qnar);

	List<QnAr> qnarList(int qa_no);

	

}
