package com.constant01.service;

import java.util.ArrayList;

import com.constant01.model.DeliveryDTO;
import com.constant01.model.DriverDTO;

public interface DeliveryService {
	
	public void write(DeliveryDTO delivery);
	
	public ArrayList<DriverDTO> list(DriverDTO driver);
	
	public ArrayList<DriverDTO> dlist(DriverDTO driver);

}
