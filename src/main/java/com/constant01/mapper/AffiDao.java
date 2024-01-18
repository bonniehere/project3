package com.constant01.mapper;

import java.util.List;

import com.constant01.model.Affi;
import com.constant01.model.M_order;

public interface AffiDao {

	int insert(Affi affi);

	int getAFTotal(Affi affi);

	List<Affi> afList(Affi affi);

	Affi selectAF(int AF_no);



}
