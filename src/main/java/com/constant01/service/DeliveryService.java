package com.constant01.service;

import java.util.ArrayList;

import com.constant01.model.AdminDTO;
import com.constant01.model.DeliveryDTO;
import com.constant01.model.DriverDTO;
import com.constant01.model.TempDTO;

public interface DeliveryService {
	
	// 기사 로그인입디다 
	public DriverDTO login(DriverDTO driver);
	
	//관리자 로그인
	public AdminDTO login2(AdminDTO admin);
	
	public void write(DeliveryDTO delivery);
	
	public ArrayList<DriverDTO> list(DriverDTO driver);
	
	public ArrayList<DriverDTO> dlist(DeliveryDTO delivery); //여기에 최종 기사 위치 저장 1
	
	public DeliveryDTO dlist2(DeliveryDTO delivery); //여기에 최종 기사 위치 저장 1
	
	public void delete(DeliveryDTO delivery);
	
	public ArrayList<TempDTO> temp(TempDTO temp);
	
	public ArrayList<DriverDTO> clist(DeliveryDTO delivery); //고객 담당 기사 select
	
	

}
