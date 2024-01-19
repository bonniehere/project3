package com.constant01.mapper;

import java.util.ArrayList;

import com.constant01.model.DeliveryDTO;
import com.constant01.model.DriverDTO;

public interface DeliveryMaper {
	
	public void write(DeliveryDTO delivery);
	//여기가 ship_driver로 가는 리스트
	public ArrayList<DriverDTO> list(DriverDTO driver);
	
	public ArrayList<DriverDTO> dlist(DriverDTO driver);

}
