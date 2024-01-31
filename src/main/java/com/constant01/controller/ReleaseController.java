package com.constant01.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import com.constant01.mapper.cartMapper;
import com.constant01.model.BoardDTO;
import com.constant01.model.CMember;
import com.constant01.model.Criteria;
import com.constant01.model.CustomerDTO;
import com.constant01.model.PageMakerDTO;
import com.constant01.model.cartVO;
import com.constant01.service.CustomerService;
import com.constant01.service.ReleaseService;
import com.constant01.service.cartService;





@Controller

public class ReleaseController {

	
	@Autowired
	ReleaseService rs;
	
	
	@Autowired
	cartService cs;
	
	@Autowired
	CustomerService ccs;
	
	//메인 겸 주문 페이지, 왼쪽 사이드 메뉴1, All누르면
	@RequestMapping(value = "/release", method = RequestMethod.GET)
	public String main1 (Model model, Criteria cri,CMember customer, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
        Object loginAttribute = session.getAttribute("login");
        model.addAttribute("login", loginAttribute);
        System.out.println(loginAttribute);
        
		if(loginAttribute != null) {

			model.addAttribute("boardlist", rs.boardpage(cri) );

			int total = rs.getTotal();
			PageMakerDTO pagemake = new PageMakerDTO(cri, total);
			model.addAttribute("pageMaker",pagemake);
			return "company/release/ReleaseMain";
	}else {	// 그렇지 않으면 메인화면으로 이동...
		
		return "company/homelog";
	}	
		
	}
	//의료소모품
	@RequestMapping(value = "table2", method = RequestMethod.GET)
	public String main2 (Model model, Criteria cri, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
        Object loginAttribute = session.getAttribute("login");
        model.addAttribute("login", loginAttribute);
//        System.out.println(loginAttribute);
        
        
//		System.out.println("bbbbbbbbbbbbbbbb");
//		System.out.println("cri="+cri);
//		System.out.println(rs.boardpage2(cri));
//		System.out.println("bbbbbbbbbbbbbbbb");
//	
        if(loginAttribute != null) {

			model.addAttribute("boardlist2", rs.boardpage2(cri) );

			int total = rs.getTotal2();
			PageMakerDTO pagemake = new PageMakerDTO(cri, total);
			model.addAttribute("pageMaker",pagemake);
			return "company/release/table2";
	}else {	// 그렇지 않으면 메인화면으로 이동...
		
		return "company/homelog";
	}	
	}
	
	//진단기구
	@RequestMapping(value = "table3", method = RequestMethod.GET)
	public String main3 (Model model, Criteria cri, HttpServletRequest request) {
		
		
		HttpSession session = request.getSession();
        Object loginAttribute = session.getAttribute("login");
        model.addAttribute("login", loginAttribute);
        if(loginAttribute != null) {

			model.addAttribute("boardlist3", rs.boardpage3(cri) );

			int total = rs.getTotal3();
			PageMakerDTO pagemake = new PageMakerDTO(cri, total);
			model.addAttribute("pageMaker",pagemake);
			return "company/release/table3";
	}else {	// 그렇지 않으면 메인화면으로 이동...
		
		return "company/homelog";
	}	
	}
	
	//검사/시약제품
	@RequestMapping(value = "table4", method = RequestMethod.GET)
	public String main4 (Model model, Criteria cri, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
        Object loginAttribute = session.getAttribute("login");
        model.addAttribute("login", loginAttribute);
      
		
		
		
        if(loginAttribute != null) {

			model.addAttribute("boardlist4", rs.boardpage4(cri) );

			int total = rs.getTotal4();
			PageMakerDTO pagemake = new PageMakerDTO(cri, total);
			model.addAttribute("pageMaker",pagemake);
			return "company/release/table4";
	}else {	// 그렇지 않으면 메인화면으로 이동...
		
		return "company/homelog";
	}	
	}
	
	
	//소독/의약제품
	@RequestMapping(value = "table5", method = RequestMethod.GET)
	public String main5 (Model model, Criteria cri, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
        Object loginAttribute = session.getAttribute("login");
        model.addAttribute("login", loginAttribute);
        
		
		
        if(loginAttribute != null) {

			model.addAttribute("boardlist5", rs.boardpage5(cri) );

			int total = rs.getTotal5();
			PageMakerDTO pagemake = new PageMakerDTO(cri, total);
			model.addAttribute("pageMaker",pagemake);
			return "company/release/table5";
	}else {	// 그렇지 않으면 메인화면으로 이동...
		
		return "company/homelog";
	}	
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
	
	//----------------------------------------------------------------
	//상품 디테일 페이지	
	@RequestMapping(value = "release/detail", method = RequestMethod.GET)
	public String popup (Model model, BoardDTO detail) {
		
		
		
		
//		System.out.println("abc");
		model.addAttribute("detail", rs.boarddetail(detail));
//		System.out.println("detail="+rs.boarddetail(detail));
//		System.out.println("abc");
		return "company/release/popup";
	}
	
	
	
	
	
	
	//디테일
	@GetMapping("board/detail")
	public void detail(BoardDTO detail, Model model) {
		model.addAttribute("detail",rs.boarddetail(detail));
		rs.boarddetail(detail);
		
		
		
	}
	
	//----------------------------------------------------------------
	
	
	//장바구니 보여주기
	 @GetMapping("list")
	    public String list(cartVO list, Model model,HttpServletRequest request) {
		 
		 HttpSession session = request.getSession();
	        Object loginAttribute = session.getAttribute("login");
	        model.addAttribute("login", loginAttribute);
	        
		 
		    
	        model.addAttribute("list", cs.cart_list(list));
	       
	      
	        


	        
	        
	        
	        if(loginAttribute != null) {

	        	 model.addAttribute("list", cs.cart_list(list));
				return "company/release/basket";
		}else {	// 그렇지 않으면 메인화면으로 이동...
			
			return "company/homelog";
		}	
	    }
	
	 //장바구니 상품삭제
	 @PostMapping(value = "cart_delete", consumes = "application/json")
	 @ResponseBody
	 public ResponseEntity<String> delete(@RequestBody cartVO list) {
	     try {
	         cs.cart_delete(list);
//	         System.out.println("aaaa");
//	         System.out.println("list="+list);
//	         System.out.println("aaaa");
	         return new ResponseEntity<>("success", HttpStatus.OK);
	     } catch (Exception e) {
	         return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	     }
	 }
	 
	 //장바구니 담기
	 	 @PostMapping("cart_add")
	 @ResponseBody
	 public void addcart(@RequestBody cartVO list) {
	     
	         cs.cart_add(list);
	        	    
	 }
	 
	 //장바구니주문
	 @PostMapping("/order")
	    @ResponseBody
	    public ResponseEntity<String> placeOrder(@RequestBody List<cartVO> orderItems) {
	        // 주문 항목 처리 로직
	        
	        System.out.println(orderItems);
	        
	        cs.orderItem(orderItems);		
	        return ResponseEntity.ok("Order placed successfully");
	    }
	 
	//----------------------------------------------------------------------------------
	 
	//왼쪽 사이드 메뉴2, 주문현황
		@RequestMapping(value = "orderlist", method = RequestMethod.GET)
		public String orderlist (Model model, Criteria cri) {
			
			model.addAttribute("orderlist", rs.orderlist(cri) );
			int total = rs.getTotal_order();
			PageMakerDTO pagemake = new PageMakerDTO(cri, total);
			model.addAttribute("pageMaker",pagemake);
			
			return "company/release/orderlist";
		}
	 
	 
	 //주문현황보기
	
		
		
	
		
		
		
		
	//----------------------------------------------------------------------------------
}

