package com.constant01.service;

import java.util.ArrayList;

import com.constant01.model.DeliveryDTO;
import com.constant01.model.DriverDTO;

public interface DeliveryService {
	
	public void write(DeliveryDTO delivery);
	
	public ArrayList<DriverDTO> list(DriverDTO driver);
	
	public ArrayList<DriverDTO> dlist(DeliveryDTO delivery); //여기에 최종 기사 위치 저장 1
	
	public void delete(DeliveryDTO delivery);
}
