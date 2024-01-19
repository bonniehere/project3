package com.constant01.mapper;

import java.util.List;
import java.util.ArrayList;
import com.constant01.model.Affi;
import com.constant01.model.M_order;

public interface AffiDao {
	
	public int insert(Affi affi);

	public int getAFTotal(Affi affi);

	public ArrayList<Affi> afList(Affi affi);

	public Affi selectAF(int AF_no);



}
