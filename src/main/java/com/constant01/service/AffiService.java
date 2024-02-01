package com.constant01.service;

import java.util.List;

import com.constant01.model.Affi;
import com.constant01.model.M_order;

public interface AffiService {

	int insert(Affi affi);

	int getAFTotal(Affi affi);

	List<Affi> asList(Affi affi);

	Affi selectAF(int AF_no);

	int updateAF(int af_no);


}
