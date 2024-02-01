package com.constant01.mapper;

import java.util.ArrayList;
import com.constant01.model.Affi;

public interface AffiMapper {
	
	public int insert(Affi affi);

	public int getAFTotal(Affi affi);

	public ArrayList<Affi> afList(Affi affi);

	public Affi selectAF(int AF_no);
	
	public int updateAF(int AF_no);
}
