package com.constant01.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.constant01.model.DeliveryDTO;
import com.constant01.model.DriverDTO;
import com.constant01.service.DeliveryService;

public class DeliveryController {
	@Autowired
	DeliveryService ds;
	
	@RequestMapping(value = "/company/shipper/ship_Driver.do", method = RequestMethod.GET)
	// 게시판 목록 리스트                                기본생성자 호출
	public String homelog () {
		System.out.println("디질래...");
		return "/company/shipper/ship_Driver";
		// list.jsp 실행 할 때 select 된 결과를 가져와라!!!!
	}
	
	
	
	
	/*
	// ship_Driver에서 Customer2로 보내기 위한 list값 가져오기    ------------------------------------------------------------------------------------------------
	@RequestMapping(value = "company/shipper/ship_Driver.do", method = RequestMethod.POST)
	public String ship_Driver(DriverDTO driver,Model model) {
		System.out.println("driver맵");
		model.addAttribute("list", ds.list(driver));
		System.out.println(ds.list(driver));
		return "company/shipper/ship_Driver";
		
	}
	
	
	
	// ship_Driver에서 배달기사 위치 가져오기------------------------------------------------
	@RequestMapping(value = "/company/shipper/ship_Driver.do", method = RequestMethod.POST)
	public String userLocSave(DeliveryDTO delivery,Model model) {
		System.out.println("실시간유저좌표저장");
		ds.write(delivery);
		//ds.delete(delivery);
		//model.addAttribute("maplist", ds.maplist(map));
		return "/company/shipper/ship_Driver";
		
	}
	
	// Customer2    ------------------------------------------------------------------------------------------------
	@RequestMapping(value = "/company/shipper/ship_Customer2.do", method = RequestMethod.POST)
	public String map3(DeliveryDTO delivery,Model model) {
		
		//model.addAttribute("maplist", ds.maplist(delivery));
		//System.out.println(ds.maplist(delivery));
		return "/company/shipper/ship_Customer2";
	
	}*/
	
	
}
