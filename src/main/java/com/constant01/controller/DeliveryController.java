package com.constant01.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.constant01.model.DeliveryDTO;
import com.constant01.model.DriverDTO;
import com.constant01.model.TempDTO;
import com.constant01.service.DeliveryService;

@Controller
public class DeliveryController {
	@Autowired
	DeliveryService ds;
		
	// ship_Driver에서 Customer2로 보내기 위한 list값 가져오기    ------------------------------------------------------------------------------------------------
	@RequestMapping(value = "company/shipper/ship_Driver.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String ship_Driver(DriverDTO driver,Model model) {
		System.out.println("driver맵");
		model.addAttribute("list", ds.list(driver));
		System.out.println(ds.list(driver));
		return "company/shipper/ship_Driver";
		
	}
	
	
	
	//여기서부터 기사 위치 가져와서 customer2로 보내기~!~!!~!~!!
	// ship_Driver에서 배달기사 위치 가져오기------------------------------------------------
	@RequestMapping(value = "/company/shipper/Drivermap.do", method = RequestMethod.POST)
	public String driverLocSave(DeliveryDTO delivery,Model model) {
		System.out.println("실시간유저좌표저장");
		ds.write(delivery);
		ds.delete(delivery);
		model.addAttribute("dlist", ds.dlist(delivery));
		System.out.println(ds.dlist(delivery));
		return "/company/shipper/ship_Driver";
		
	}
	
	
	//customer2로 가기 위한 값 받아오기 -------------------
	// ship_Driver에서 Customer2로 보내기 위한 list값 가져오기    ------------------------------------------------------------------------------------------------
	@RequestMapping(value = "company/shipper/ship_Customer.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String custo(DeliveryDTO delivery,Model model) {
		System.out.println("customer맵");
		model.addAttribute("dlist", ds.dlist(delivery));
		System.out.println(ds.dlist(delivery));
		return "company/shipper/ship_Customer2";
		
	}

	@ResponseBody
	
	@RequestMapping(value = "company/shipper/DriverLoad.do", method = RequestMethod.POST)
	public ResponseEntity<?> UserLocLoad(DeliveryDTO delivery, Model model, HttpSession session) {
		return new ResponseEntity<>(ds.dlist(delivery), HttpStatus.OK);
	
	}
	
	
	
	
	//ship_Master으로 가기 위한 값 받아오기 -------------------
	// ship_Driver에서 Master로 보내기 위한 list값 가져오기    ------------------------------------------------------------------------------------------------
	@RequestMapping(value = "/company/shipper/ship_Master.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String admin(DeliveryDTO delivery,Model model) {
		System.out.println("admin맵");
		model.addAttribute("dlist", ds.dlist(delivery));
		System.out.println(ds.dlist(delivery));
		return "company/shipper/ship_Master";
			
		}
	
	//모든 드라이버 위치 추적
	@ResponseBody
	
	@RequestMapping(value = "company/shipper/AdminLocLoad.do", method = RequestMethod.POST)
	public ResponseEntity<?> AdminLocLoad(DeliveryDTO delivery,TempDTO temp, Model model, HttpSession session) {
		model.addAttribute("dlist", ds.dlist(delivery));
		model.addAttribute("temp", ds.temp(temp));
		//System.out.println(ds.temp(temp));
		return new ResponseEntity<>(ds.dlist(delivery), HttpStatus.OK);
	
	}
	
	
	//온도 가져오는 거
	@ResponseBody
	@RequestMapping(value = "/company/shipper/AdminTempLoad.do", method = RequestMethod.GET)
	public ResponseEntity<?> AdminTempLoad(TempDTO temp, Model model) {
		
		model.addAttribute("temp", ds.temp(temp));
		System.out.println(ds.temp(temp));
		return new ResponseEntity<>(ds.temp(temp), HttpStatus.OK);
	
	}
	
	
	
	
}
