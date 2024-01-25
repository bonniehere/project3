package com.constant01.mapper;

import java.util.ArrayList;

import com.constant01.model.AdminDTO;
import com.constant01.model.DeliveryDTO;
import com.constant01.model.DriverDTO;

public interface DeliveryMapper {
	
	// 기사 로그인입디다 
	public DriverDTO login(DriverDTO driver);
	
	//관리자 로그인
	public AdminDTO login2(AdminDTO admin);
	
	public void write(DeliveryDTO delivery);
	//여기가 ship_driver로 가는 리스트
	public ArrayList<DriverDTO> list(DriverDTO driver);
	
	//여기에 최종 기사 위치 저장 !!
	public ArrayList<DriverDTO> dlist(DeliveryDTO delivery);
	
	public void delete(DeliveryDTO delivery);
}
