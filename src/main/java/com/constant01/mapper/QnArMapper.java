package com.constant01.mapper;

import java.util.List;

import com.constant01.model.QnAr;

public interface QnArMapper {

	int insert(QnAr qnar);

	List<QnAr> qnarList(int qa_no);

}
