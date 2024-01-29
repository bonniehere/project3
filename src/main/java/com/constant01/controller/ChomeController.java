package com.constant01.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.constant01.model.AdminDTO;
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
	public String login(DriverDTO driver, DeliveryDTO delivery, CustomerDTO customer,AdminDTO admin, HttpSession session, Model model) {
		System.out.println("dddddd");
		if(cs.login(customer) != null) {
			System.out.println("회원 로그인");
			session.setAttribute("login", cs.login(customer));
			model.addAttribute("login");
			
			model.addAttribute("dlist", ds.dlist(delivery));
			return "release";
			
			//배달 기사 로그인
		}else if(ds.login(driver) != null){
			System.out.println("기사로그인");
			session.setAttribute("login", ds.login(driver)); 
			
			model.addAttribute("list", ds.list(driver));
			return "/company/testpage";
			
		}else if(ds.login2(admin) != null){
			System.out.println("관리자 로그인");
			session.setAttribute("login2", ds.login2(admin));
			model.addAttribute("login2");
			model.addAttribute("dlist", ds.dlist(delivery)); 
			
			
			return "/company/adminPage.do";
		
		
		}else {	
			System.out.println("회원 로그인");
			model.addAttribute("dlist", ds.dlist(delivery));
			return "/company/homelog2";
		}	
	}
	
	
	
}