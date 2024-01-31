package com.constant01.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.constant01.model.AdminDTO;
import com.constant01.model.CMember;
import com.constant01.model.CustomerDTO;
import com.constant01.model.DeliveryDTO;
import com.constant01.model.DriverDTO;
import com.constant01.service.CustomerService;
import com.constant01.service.DeliveryService;

@Controller
public class ChomeController {
	
	@Autowired
	CustomerService cs;
	@Autowired
	DeliveryService ds;
	
	@RequestMapping(value = "company/homelog.do", method = RequestMethod.GET)
	public String homelog () {
		return "company/homelog";

	}
	
	
	@PostMapping("/company/homelog.do")
	public String login(DriverDTO driver, DeliveryDTO delivery, CMember customer,AdminDTO admin, HttpSession session, Model model) {
		System.out.println("회원로그인콘솔체크");
		
		if(cs.login(customer) != null) {
			if("Y".equals(cs.login(customer).getDel())) { //탈퇴한 회원일 경우
				return "/company/homelog3";
			}
		System.out.println("회원 로그인");
		session.setAttribute("login", cs.login(customer));
		model.addAttribute("login");
		// 클라이언트 화면으로 이동
		
		model.addAttribute("dlist", ds.dlist(delivery));
		return "redirect:/release";
			
			
		}
		else if(cs.login(customer) == null && cs.login2(customer) == null){	// 클라이언트도 스텝도 아닌경우
			System.out.println("로그인 실패2");
			
			return "/company/homelog2";
		}
		else if(cs.login2(customer).getM_userStat().equals("출하직원")){ //출하직원
			System.out.println("Staff 출하직원 페이지 로그인");
			
			session.setAttribute("login", cs.login2(customer)); //로그인한 세션 값
			
			model.addAttribute("list", ds.list(driver)); //list select한 값
			
			return "/company/Driver_main";
			
		}else if(cs.login2(customer).getM_userStat().equals("출고직원")){ //출고직원
			System.out.println("Staff 출고직원 페이지 로그인");
			
			session.setAttribute("login", cs.login2(customer)); //로그인한 세션 값
			
			return "/company/shipment/admin/adminPage";
		
		
		}else {
			return "/company/homelog2";
		}
		
	}
	
	
	
}