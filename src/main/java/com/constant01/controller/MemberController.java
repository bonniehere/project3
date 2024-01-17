package com.constant01.controller;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.xml.ws.Response;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.constant01.model.MemberDTO;
import com.constant01.model.ProfDTO;
import com.constant01.model.ReserveDTO;
import com.constant01.service.MemberService;
import com.constant01.service.ProfService;
import com.constant01.service.ReserveService;


@Controller
public class MemberController {
	@Autowired
	MemberService ms;
	@Autowired
	ProfService ps;
	@Autowired
	ReserveService rs;
	@RequestMapping(value = "home/member/login.do", method = RequestMethod.GET)
	// 게시판 목록 리스트                                기본생성자 호출
	public String logmian () {
		return "home/member/login";
		// list.jsp 실행 할 때 select 된 결과를 가져와라!!
	}
	
	@RequestMapping(value = "home/member/join1.do", method = RequestMethod.GET)
	public String join1 () {
		return "home/member/join1";
	}
	@RequestMapping(value = "home/member/join2.do", method = RequestMethod.POST)
	public String join2 () {
		return "home/member/join2";
	}
	@RequestMapping(value = "home/member/join3.do", method = RequestMethod.POST)
	public String join3 () {
		return "home/member/join3";
	}
	@RequestMapping(value = "home/member/join4.do", method = RequestMethod.POST)
	public String join4 () {
		return "home/member/join4";
	}
	
	@RequestMapping(value = "/home/member/joinProcEnd.do", method = RequestMethod.POST)
	public String joinProcEnd (MemberDTO member) {
		//System.out.println(member);
		ms.write(member);
		return "home/member/joinEnd";
	}
	
	@RequestMapping(value = "/home/member/joinEnd.do", method = RequestMethod.GET)
	public String joinEnd (MemberDTO member) {
		return "home/member/joinEnd";
	}
	
	@PostMapping("/home/member/loginProc.do")
	public String login(MemberDTO member, HttpSession session, Model model) {
		//만약에 ms.login(member)값이 null이 아니면
		if(ms.login2(member) != null) {
			//로그인해라 (session에 select값 저장)
			System.out.println("의사로그인");
			session.setAttribute("login", ms.login2(member));
			model.addAttribute("login");
			//리스트화면으로 이동
			return "/home/index";
			//return "redirect:/home.do";
		}else if(ms.login(member) != null){
			session.setAttribute("login", ms.login(member));
			System.out.println("일반인로그인");
			return "/home/index";
		}else{//그렇지 않으면
			//로그인 하지마라
			//로그인 화면으로 이동
			return "home/member/login";
		}	
	}
	
	@GetMapping("/home/member/loginOut")
	public String logout(HttpSession session) {
		session.invalidate();
		return "home/home";
	}
	//리스트
	@RequestMapping(value = "home/member/userMypageCheck.do", method = RequestMethod.GET)
	public String userMypageCheck (Model model, ReserveDTO reserve, MemberDTO member,HttpSession session) {
		
		MemberDTO user = (MemberDTO)session.getAttribute("login");
		System.out.println("마이페이지체크");
		System.out.println(user.getUserPw());
		
		if(ms.login2(user) != null) {
			System.out.println("의사로그인");
			//리스트화면으로 이동
			model.addAttribute("list", rs.list(reserve));
			return "/home/member/userMypageCheck2";
		}else{
			System.out.println("일반인로그인");
			model.addAttribute("list", rs.list(reserve));
			return "/home/member/userMypageCheck";
		}
	}
	
	/*
	@RequestMapping(value = "home/member/userMypage.do", method = RequestMethod.GET)
	public String userMypage (Model model, ReserveDTO reserve) {
		System.out.println(reserve);
		model.addAttribute("list", rs.list(reserve));
		return "home/member/userMypage";
	}*/
	/*
	@RequestMapping(value = "home/member/userMypage.do", method = RequestMethod.POST)
	public String userMypage2 (Model model, ReserveDTO reserve ,HttpServletRequest request,MemberDTO member,ProfDTO prof) {
		System.out.println(reserve);
		String userPw = request.getParameter("resvIdx");
		System.out.println(userPw);
		
		model.addAttribute("list", rs.list(reserve));
		return "home/member/userMypage";
	}
	*/
	@RequestMapping(value = "home/member/userMypage.do", method = RequestMethod.POST)
	public String userMypage (Model model, ReserveDTO reserve ,HttpServletRequest request,MemberDTO member,ProfDTO prof) {
		
			System.out.println("일반인로그인");
			model.addAttribute("list", rs.list(reserve));
			return "/home/member/userMypage";
		
	}
	@RequestMapping(value = "home/member/userMypage2.do", method = RequestMethod.POST)
	public String userMypage2 (Model model, ReserveDTO reserve ,HttpServletRequest request,MemberDTO member,ProfDTO prof) {
		
			System.out.println("의사 유저마이페이지");
			model.addAttribute("list", rs.list2(reserve));
			return "/home/member/userMypage2";
		
	}
	



}
		
	
	
	

