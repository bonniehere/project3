package com.constant01.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import com.constant01.mapper.cartMapper;
import com.constant01.model.BoardDTO;
import com.constant01.model.CMember;
import com.constant01.model.Coupon;
import com.constant01.model.Criteria;
import com.constant01.model.CustomerDTO;
import com.constant01.model.DeliveryDTO;
import com.constant01.model.PageMakerDTO;
import com.constant01.model.QnA;
import com.constant01.model.QnAr;
import com.constant01.model.cartVO;
import com.constant01.service.CustomerService;
import com.constant01.service.DeliveryService;
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
	
	@Autowired
	DeliveryService ds;
	
	
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();
		return "company/homelog";
	}
	
	
	//메인 겸 주문 페이지, 왼쪽 사이드 메뉴1, All누르면
	@RequestMapping(value = "/release", method = RequestMethod.GET)
	public String main1 (Model model, Criteria cri,CMember customer, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
        Object loginAttribute = session.getAttribute("login");
        model.addAttribute("login", loginAttribute);
//        System.out.println(loginAttribute);
        
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

			model.addAttribute("boardlist5", rs.boardpage5(cri));

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
	
	//왼쪽 사이드 메뉴 QnA
	@RequestMapping(value = "QnA", method = RequestMethod.GET)
	public String qna (Model model, Criteria cri, HttpServletRequest request) {

		HttpSession session = request.getSession();
        Object loginAttribute = session.getAttribute("login");
        model.addAttribute("login", loginAttribute);
        System.out.println(loginAttribute);
        
		if(loginAttribute != null) {

			model.addAttribute("qna", rs.qna(cri) );
			System.out.println(rs.qna(cri));
			
			int total = rs.getTotal_qna(cri);
			System.out.println(total);
			
			PageMakerDTO pagemake = new PageMakerDTO(cri, total);
			model.addAttribute("pageMaker",pagemake);
			
			
			
			
			return "company/release/QnA";
	}else {	// 그렇지 않으면 메인화면으로 이동...
		
		
		return "company/homelog";
	}
	}
		
		//왼쪽 사이드 메뉴 내정보변경
		
		
		
		@RequestMapping(value = "myInfo", method = RequestMethod.GET)
		public String qna (Model model, HttpServletRequest request,CMember member) {

			HttpSession session = request.getSession();
	        Object loginAttribute = session.getAttribute("login");
	        model.addAttribute("login", loginAttribute);
	        System.out.println(loginAttribute);
	        
			if(loginAttribute != null) {
			//로그인시 화면이동.
				model.addAttribute("detail",rs.member_detail(member));
			
				
			

				
				
				
				
				return "company/release/myInfo";
		}else {	// 그렇지 않으면 메인화면으로 이동...
			
			
			return "company/homelog";
		}
		}
		
	//비밀번호 변경
			
			@RequestMapping(value = "changePassword", method = RequestMethod.POST)
			public String changePassword (CMember member,  HttpSession session) {
				
				Object loginAttribute = session.getAttribute("login");
				String userId = ((CMember) loginAttribute).getM_userId();
				
				rs.changePassword(member);
				
//				System.out.println("member:"+member);
						return "redirect:myInfo?m_userId=" + userId;
					}
			
			
	//=========================================================================
	
	//qna 글쓰기버튼
	@RequestMapping(value = "write_button", method = RequestMethod.GET)
	public String qna_write(HttpServletRequest request,Model model) {
		HttpSession session = request.getSession();
        Object loginAttribute = session.getAttribute("login");
        model.addAttribute("login", loginAttribute);
        
        
		return "company/release/QnAwrite";
	}
	
	//qna 글쓰기 페이지에서 작성버튼
	@RequestMapping(value = "qna_write", method = RequestMethod.POST,produces = "text/html;charset=UTF-8")
	public String write(QnA qna, HttpSession session) {
		
		// 세션에서 사용자 정보를 가져옵니다.
	    Object loginAttribute = session.getAttribute("login");
		
		
		 // 로그인 정보가 있는 경우에만 사용자 아이디 값을 가져옵니다.
	    if (loginAttribute != null && loginAttribute instanceof Object) {
	        String userId = ((CMember) loginAttribute).getM_userId();
	        
	        // qna_write 메서드 호출하여 qna 객체를 DB에 저장합니다.
	        rs.qna_write(qna);
	        
	        // 리다이렉트할 URL을 생성합니다. 세션 아이디 값을 URL에 추가합니다.
	        String redirectUrl = "redirect:QnA?m_userId=" + userId;
	        
	        return redirectUrl;
	    } else {
	        // 로그인 정보가 없을 경우에 대한 처리
	        return "redirect:/login"; // 로그인 페이지로 리다이렉트 혹은 다른 처리를 하십시오.
	    }
	}
	
	// 글쓰기 디테일
	
	@RequestMapping(value = "WriteDetail", method = RequestMethod.GET)
	public String popup (Model model, QnA qna, QnAr qnar) {
		
		
		
		
		model.addAttribute("detail",rs.WriteDetail(qna));
		model.addAttribute("detail_answer",rs.detail_answer(qnar));

		
		
		System.out.println(rs.WriteDetail(qna));
		return "company/release/WriteDetail";
	}
	//----------------------------------------------------------
	
	
	
	
	
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
		 System.out.println("aaa");
	        System.out.println(orderItems);
	        System.out.println("aaa");
	        cs.orderItem(orderItems);		
	        return ResponseEntity.ok("Order placed successfully");
	    }
	 
	//----------------------------------------------------------------------------------
	 
	//왼쪽 사이드 메뉴2, 주문현황
		@RequestMapping(value = "orderlist", method = {RequestMethod.GET, RequestMethod.POST})
		public String orderlist (Model model, Criteria cri, DeliveryDTO delivery, HttpServletRequest request) {
			
			 HttpSession session = request.getSession();
		        Object loginAttribute = session.getAttribute("login");
		        model.addAttribute("login", loginAttribute);
		        System.out.println("dddd");
		        //주문 현황에서 기사 정보 받아오기
		        model.addAttribute("dlist", ds.dlist(delivery));
		        System.out.println(ds.dlist(delivery));
		        System.out.println("222");
			model.addAttribute("orderlist", rs.orderlist(cri) );
			int total = rs.getTotal_order();
			PageMakerDTO pagemake = new PageMakerDTO(cri, total);
			model.addAttribute("pageMaker",pagemake);
			System.out.println(rs.orderlist(cri));
			return "company/release/orderlist";
		}
	 
	 
	 //주문현황에서 주문취소
		@PostMapping("/deleteOrder")
	    @ResponseBody
	    public String deleteOrder(@RequestParam("order_no") String order_no) {
	        // orderId를 이용하여 주문을 삭제하는 서비스 메서드 호출
	        cs.deleteOrder(order_no);
	        return "success";
	    }
	
		
		@RequestMapping(value = "checkCoupon", method = RequestMethod.GET)
		public String checkCoupon(Coupon coupon,Model model ,HttpServletRequest request) {
			
			HttpSession session = request.getSession();
	        Object loginAttribute = session.getAttribute("login");
	        model.addAttribute("login", loginAttribute);
	        
			
			
		ccs.checkCoupon(coupon);
//		System.out.println(ccs.checkCoupon(coupon));
			model.addAttribute("coupon", ccs.checkCoupon(coupon));
			
			
			return "company/release/checkCoupon";
		}
	
		
		
		//장바구니에서 쿠폰적용
		@PostMapping("/applyCoupon")
	    @ResponseBody
	    public String applyCoupon(Coupon coupon) {
	        
			
			
			
			
	        ccs.applyCoupon(coupon);
	        ccs.changeCoupon(coupon);
	      
	        
	        return "쿠폰이 적용되었습니다.";
	    }
		
		
	//---------------------------------------------------------------------------------
}

