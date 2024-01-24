package com.constant01.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.constant01.model.CustomerDTO;
import com.constant01.model.DeliveryDTO;
import com.constant01.model.DriverDTO;
import com.constant01.service.CustomerService;
import com.constant01.service.DeliveryService;

@Controller
public class ChomeController {
	/*
	@Autowired
	MemberService ms;
	@Autowired
	ProfService ps;
	@Autowired
	ReserveService rs;
	*/
	@Autowired
	CustomerService cs;
	@Autowired
	DeliveryService ds;
	
	@RequestMapping(value = "company/homelog.do", method = RequestMethod.GET)
	// 게시판 목록 리스트                                기본생성자 호출
	public String homelog () {
		return "company/homelog";
		// list.jsp 실행 할 때 select 된 결과를 가져와라!!!!
	}
	
	//@RequestMapping(value = "/company/homelog.do", method = RequestMethod.POST)
	@PostMapping("/company/homelog.do")
	public String login(DriverDTO driver, DeliveryDTO delivery, CustomerDTO customer, HttpSession session, Model model) {
		System.out.println("dddddd");
		if(cs.login(customer) != null) {
			// 로그인 해라 (session에 select값 저장)
			System.out.println("회원 로그인");
			session.setAttribute("login", cs.login(customer));
			model.addAttribute("login");
			// 구매 화면으로 이동
			
			model.addAttribute("dlist", ds.dlist(delivery));
			return "/company/customertestpage";
			
			//배달 기사 로그인
		}else if(ds.login(driver) != null){
			System.out.println("기사로그인");
			session.setAttribute("login", ds.login(driver));
			
			model.addAttribute("list", ds.list(driver));
			
			return "/company/testpage";
			
		} else {	// 그렇지 않으면 메인화면으로 이동...
			System.out.println("회원 로그인");
			model.addAttribute("dlist", ds.dlist(delivery));
			return "/home/index";
		}	
	}
	
	
	
}