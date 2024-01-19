package com.constant01.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.constant01.mapper.DeliveryMaper;
import com.constant01.model.DeliveryDTO;
import com.constant01.model.DriverDTO;

@Service
public class DeliveryServiceImpl implements DeliveryService{
	@Autowired
	DeliveryMaper dm;
	
	public void write(DeliveryDTO delivery) {
		dm.write(delivery);
		
	}
	
	public ArrayList<DriverDTO> dlist(DriverDTO driver) {
		//기사상세내용
		return dm.dlist(driver);
	}
	
	public ArrayList<DriverDTO> list(DriverDTO driver){
		return dm.list(driver);
	}
}
