package com.constant01.service;

import java.util.ArrayList;

import com.constant01.model.ReserveDTO;

import com.constant01.model.MapDTO;

public interface ReserveService {
	
	public void write(ReserveDTO reserve);
	
	public ArrayList<ReserveDTO> list(ReserveDTO reserve);
	
	public ArrayList<ReserveDTO> list2(ReserveDTO reserve);
	
	public ArrayList<ReserveDTO> list3(ReserveDTO reserve);
	
	public void write2(MapDTO map);
	
	public ArrayList<MapDTO> maplist(MapDTO map);
	
	public void delete(MapDTO map);
	
}
