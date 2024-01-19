package com.constant01.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import com.constant01.model.BoardDTO;
import com.constant01.model.Criteria;
import com.constant01.model.PageMakerDTO;
import com.constant01.service.ReleaseService;

@Controller
public class ReleaseController {

	
	@Autowired
	ReleaseService rs;
	
	//메인 겸 주문 페이지, 왼쪽 사이드 메뉴1
	@RequestMapping(value = "release", method = RequestMethod.GET)
	public String main1 (Model model, Criteria cri) {
		
		model.addAttribute("boardlist", rs.boardpage(cri) );
		int total = rs.getTotal();
		PageMakerDTO pagemake = new PageMakerDTO(cri, total);
		model.addAttribute("pageMaker",pagemake);
		
		return "company/release/ReleaseMain";
	}
	
	//왼쪽 사이드 메뉴2
	@RequestMapping(value = "test1", method = RequestMethod.GET)
	public String main2 () {
		return "company/release/test1";
	}
	
	//왼쪽 사이드 메뉴3
	@RequestMapping(value = "test2", method = RequestMethod.GET)
	public String main3 () {
		return "company/release/test2";
	}
	
	//왼쪽 사이드 메뉴4
	@RequestMapping(value = "test3", method = RequestMethod.GET)
	public String main4 () {
		return "company/release/test3";
	}
	
	
	
	
	//---------------------------------------------------------------------------- table
	
//	//전체 리스트 받아오기
//	@RequestMapping(value = "board", method = RequestMethod.GET)
//	public String zzzzzz(Model model, Criteria cri) {	
//		
//		model.addAttribute("boardlist", rs.boardpage(cri) );
//		int total = rs.getTotal();
//		PageMakerDTO pagemake = new PageMakerDTO(cri, total);
//		model.addAttribute("pageMaker",pagemake);
//		// model.addAttribute("pageMaker",new PageMakeDTO(cri, total);
//		
//return "";
//	}
//	
	//디테일
	@GetMapping("board/detail")
	public void detail(BoardDTO detail, Model model) {
		model.addAttribute("detail",rs.boarddetail(detail));
		rs.boarddetail(detail);
		
		
		
	}
	
	
}
