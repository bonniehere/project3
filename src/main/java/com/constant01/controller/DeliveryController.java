package com.constant01.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.constant01.model.AdminDTO;
import com.constant01.model.CMember;
import com.constant01.model.Criteria;
import com.constant01.model.DeliveryDTO;
import com.constant01.model.DriverDTO;
import com.constant01.model.M_order;
import com.constant01.model.TempDTO;
import com.constant01.service.DeliveryService;
import com.constant01.service.M_orderService;
import com.constant01.service.ReleaseService;

@Controller
public class DeliveryController {
	@Autowired
	DeliveryService ds;
	
	@Autowired
	ReleaseService rs;
	
	@Autowired
	private M_orderService os;
		
	@RequestMapping(value = "/company/shipper/Driver_main.do", method = RequestMethod.GET)
	public String drivermain() {
		
		return "/company/Driver_main";
	}
	
	

	//여기서부터 기사 위치 가져와서 customer2로 보내기
	// ship_Driver에서 배달기사 위치 가져오기------------------------------------------------
	@RequestMapping(value = "/company/shipper/Drivermap.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String driverLocSave(DeliveryDTO delivery,DriverDTO driver, Model model) {
		System.out.println("실시간유저좌표저장");
		System.out.println(delivery);
		
		ds.write(delivery);
		ds.delete(delivery);
		System.out.println("result="+os.delist(delivery));

		model.addAttribute("m_order", os.delist(delivery));
		

		return "/company/shipper/ship_Driver";
		
	}
	
	
	
	// 출고 완료 & 배송 시작
	@RequestMapping(value = "/company/shipper/deliverydone.do", method = RequestMethod.GET)
	public String driver1(int order_no, DeliveryDTO delivery,M_order m_order, Model model) {
		int result = 0;

		result = os.updateOD3(order_no);

		model.addAttribute("result", result);
		return "/company/shipper/DeliveryDone";
	}
	
	// 배송 완료
	@RequestMapping(value = "/company/shipper/deliverydone2.do", method = RequestMethod.GET)
	public String driver2(int order_no, DeliveryDTO delivery,M_order m_order, Model model) {

		int result = 0;

		result = os.updateOD4(order_no);

		model.addAttribute("result", result);
		return "/company/shipper/DeliveryDone";
	}
	
	
	//customer2로 가기 위한 값 받아오기 <기사의 현재 위치 보는 것> -------------------
	// ship_Driver에서 Customer2로 보내기 위한 list값 가져오기    ------------------------------------------------------------------------------------------------
	@RequestMapping(value = "company/shipper/ship_Customer2.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String custo(DeliveryDTO delivery,Model model) {
		System.out.println("customer맵");
		model.addAttribute("dlist2", ds.dlist2(delivery));
		System.out.println(ds.dlist2(delivery));
		return "company/shipper/ship_Customer2";
		
	}


	@ResponseBody
	
	@RequestMapping(value = "company/shipper/DriverLoad.do", method = RequestMethod.POST)
	public ResponseEntity<?> UserLocLoad(DeliveryDTO delivery, Model model, HttpSession session) {
		return new ResponseEntity<>(ds.clist(delivery), HttpStatus.OK);
	
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
		System.out.println(ds.dlist(delivery));
		//model.addAttribute("temp", ds.temp(temp));
		//System.out.println(ds.temp(temp));
		return new ResponseEntity<>(ds.dlist(delivery), HttpStatus.OK);
	
	}

	/*
	//ship_Master에서 기사 이름을 클릭했을 때 이동
	@RequestMapping(value = "/company/shipper/MDmap.do", method = RequestMethod.POST)
	public String MDLocSave(DeliveryDTO delivery, TempDTO temp, Model model) {
		//System.out.println("실시간유저좌표저장");
		model.addAttribute("dlist", ds.dlist(delivery));
		model.addAttribute("temp", ds.temp(temp));
		//System.out.println(ds.dlist(delivery));
		
		

		return "/company/shipper/ship_MD";
		
	}*/
	
	
	//MD 메인 페이지
	@RequestMapping(value = "company/shipper/ship_MD.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String MD(DeliveryDTO delivery,TempDTO temp, Model model) {
		System.out.println("선택한 기사 맵");
		

		model.addAttribute("dlist", ds.dlist2(delivery));
		model.addAttribute("temp", ds.temp(temp));

		
		
		System.out.println(ds.dlist2(delivery));
		//model.addAttribute("m_order", os.delist(delivery));
		return "company/shipper/ship_MD";
		
	}
	
	
	
	
	//클릭한 기사의 위치 가져오기
	@ResponseBody
	@RequestMapping(value = "company/shipper/MasterLoad.do", method = RequestMethod.POST)
	public ResponseEntity<?> MasterLocLoad(DeliveryDTO delivery, Model model, HttpSession session) {
		return new ResponseEntity<>(ds.dlist2(delivery), HttpStatus.OK);
	
	}
	
	
	//온도 가져오는 거
	@ResponseBody
	@RequestMapping(value = "/company/shipper/AdminTempLoad.do", method = RequestMethod.GET)
	public ResponseEntity<?> AdminTempLoad(TempDTO temp, Model model) {
		model.addAttribute("temp", ds.temp(temp));
		//System.out.println(ds.temp(temp));
		return new ResponseEntity<>(ds.temp(temp), HttpStatus.OK);
	
	}
	
	
	
	
}
