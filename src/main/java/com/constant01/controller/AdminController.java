package com.constant01.controller;

import java.util.List;
import java.util.Map;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.mail.MailSender;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.constant01.model.Affi;
import com.constant01.model.BoardDTO;
import com.constant01.model.Coupon;
import com.constant01.model.M_order;
import com.constant01.model.CMember;
import com.constant01.model.QnA;
import com.constant01.model.QnAr;
import com.constant01.service.AffiService;
import com.constant01.service.CouponService;
import com.constant01.service.CustomerService;
import com.constant01.service.M_orderService;
import com.constant01.service.CMemberService;
import com.constant01.service.PagingBean;
import com.constant01.service.QnAService;
import com.constant01.service.QnArService;

@Controller
public class AdminController {
	@Autowired
	private AffiService as;
	@Autowired
	private CMemberService ms;
	@Autowired
	private M_orderService os;
	@Autowired
	private CouponService cps;
	@Autowired
	private QnAService qs;
	@Autowired
	private QnArService qrs;
	@Autowired
	CustomerService cs;
	@Autowired
	private JavaMailSender jMailSender;
	
	@RequestMapping(value = "company/adminPage.do", method = RequestMethod.POST)
	public String adminPage() {
		return "/company/shipment/admin/adminPage";
	}
	@RequestMapping(value = "company/adminPage.do", method = RequestMethod.GET)
	public String adminPage2() {
		return "/company/shipment/admin/adminPage";
	}
	// 로그 아웃
		@RequestMapping(value = "company/logout", method = RequestMethod.GET)
		public String logout(HttpSession session) {
			session.invalidate();
			return "/company/homelog";
		}
	@RequestMapping(value = "/company/contactResultList.do", method = RequestMethod.GET)
	public String contactResultList(Affi affi, String pageNum, Model model) {
		
		if (pageNum == null || pageNum.equals("")) {
			pageNum = "1";
		}
		int currentPage = Integer.parseInt(pageNum);
		int rowPerPage = 10; // 한 화면에 보여주는 제휴/광고문의 갯수
		
		int total = as.getAFTotal(affi);
		int startRow = (currentPage - 1) * rowPerPage + 1;
		int endRow = startRow + rowPerPage - 1;
		affi.setStartRow(startRow);
		affi.setEndRow(endRow);
		List<Affi> afList = as.asList(affi); // 제휴/광고목록
		
		int num = total - startRow + 1;
		PagingBean pb = new PagingBean(currentPage, rowPerPage, total);
		String[] title = { "이름", "내용", "제목+내용" };
		model.addAttribute("title", title);
		model.addAttribute("pb", pb);
		model.addAttribute("afList", afList);
		model.addAttribute("num", num);
		
		return "/company/shipment/admin/contactResultList";
	}
	@RequestMapping(value = "/company/contactResultView.do", method = RequestMethod.GET)
	public String contactResult(int af_no, String pageNum, Model model) {
		Affi affi = as.selectAF(af_no);

		model.addAttribute("affi", affi);
		model.addAttribute("pageNum", pageNum);

		return "/company/shipment/admin/contactResultView";
	}
	@RequestMapping(value = "/company/contactCheck.do", method = RequestMethod.GET)
	public String contactCheck(int af_no, String pageNum, Model model) {
		int result = 0;

		result = as.updateAF(af_no);

		model.addAttribute("result", result);
		model.addAttribute("pageNum", pageNum);
		return "/company/shipment/admin/contactResultView2";

	}
	@RequestMapping(value = "/company/CJoin.do", method = RequestMethod.GET)
	public String CJoin() {
		return "/company/shipment/admin/CJoin";
	}
	@RequestMapping(value = "/company/CJoinResult.do", method = RequestMethod.POST)
	public String CJoinResult(CMember member,Model model) {
		System.out.println(member);
		model.addAttribute("cmember", member);
		ms.insert(member);
		return "/company/shipment/admin/CJoinResult";
	}
	@ResponseBody
	@RequestMapping(value = "/company/CjoinEmail.do", method = RequestMethod.GET)
	public ResponseEntity<String> CjoinEmail(String m_userId, Model model) {

		CMember member2 = ms.select(m_userId); // 쿼리문 성공

		System.out.println("CjoinEmail :"+member2);
		if (member2 != null) {

			MimeMessage mm = jMailSender.createMimeMessage();
			try {
				MimeMessageHelper mmh = new MimeMessageHelper(mm, true, "utf-8");
				mmh.setSubject("회원가입 완료 되었습니다.");
				mmh.setText("ConstantCompany 회원가입 완료되었습니다.\n"
						+ "ID : " + member2.getM_userId() + "\n"
								+ "PW : " + member2.getM_userPw() + "\n로그인후 즉시 비밀번호를 변경해 주세요.");
				mmh.setTo(member2.getM_email());
				mmh.setFrom("yphl1@naver.com");
				jMailSender.send(mm);
				return new ResponseEntity<String>("success", HttpStatus.OK);
			} catch (Exception e) {
				
				model.addAttribute("msg", e.getMessage());
				
				return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);

			}


		}
		
		return new ResponseEntity<>("company/CJoinResult", HttpStatus.OK);
	}
	
	@RequestMapping(value = "/company/CJoinResult2.do", method = RequestMethod.POST)
	public String CJoinResult2(CMember member,Model model) {
		System.out.println(member);
		model.addAttribute("cmember", member);
		ms.insert2(member);
		return "/company/shipment/admin/CJoinResult2";
	}
	@ResponseBody
	@RequestMapping(value = "/company/CjoinEmail2.do", method = RequestMethod.GET)
	public ResponseEntity<String> CjoinEmail2(String m_userId, Model model) {

		CMember member2 = ms.select2(m_userId); // 쿼리문 성공

		System.out.println("CjoinEmail :"+member2);
		if (member2 != null) {

			MimeMessage mm = jMailSender.createMimeMessage();
			try {
				MimeMessageHelper mmh = new MimeMessageHelper(mm, true, "utf-8");
				mmh.setSubject("회원가입 완료 되었습니다.");
				mmh.setText("ConstantCompany Staff Welcome\n"
						+ "ID : " + member2.getM_userId() + "\n"
								+ "PW : " + member2.getM_userPw() + "\n로그인후 즉시 비밀번호를 변경해 주세요.");
				mmh.setTo(member2.getM_email());
				mmh.setFrom("yphl1@naver.com");
				jMailSender.send(mm);
				return new ResponseEntity<String>("success", HttpStatus.OK);
			} catch (Exception e) {
				
				model.addAttribute("msg", e.getMessage());
				
				return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);

			}


		}
		
		return new ResponseEntity<>("company/CJoinResult", HttpStatus.OK);
	}
	@RequestMapping(value = "/company/orderList.do", method = RequestMethod.GET)
	public String orderList(M_order m_order, String pageNum, Model model) {
		
		if (pageNum == null || pageNum.equals("")) {
			pageNum = "1";
		}
		int currentPage = Integer.parseInt(pageNum);
		int rowPerPage = 10;
		int total = os.getODTotal(m_order);
		int startRow = (currentPage - 1) * rowPerPage + 1;
		int endRow = startRow + rowPerPage - 1;
		m_order.setStartRow(startRow);
		m_order.setEndRow(endRow);
		List<M_order> odList = os.odList(m_order);
		int num = total - startRow + 1;
		
		PagingBean pb = new PagingBean(currentPage, rowPerPage, total);
		String[] title = { "이름", "내용", "제목+내용" };

		model.addAttribute("title", title);
		model.addAttribute("pb", pb);
		model.addAttribute("odList", odList);
		model.addAttribute("num", num);
		
		return "/company/shipment/admin/orderList";
	}
	@RequestMapping(value = "/company/orderList1.do", method = RequestMethod.GET)
	public String orderList1(M_order m_order, String pageNum, Model model) {
		
		if (pageNum == null || pageNum.equals("")) {
			pageNum = "1";
		}
		int currentPage = Integer.parseInt(pageNum);
		int rowPerPage = 10;
		int total = os.getODTotal(m_order);
		int startRow = (currentPage - 1) * rowPerPage + 1;
		int endRow = startRow + rowPerPage - 1;
		m_order.setStartRow(startRow);
		m_order.setEndRow(endRow);
		List<M_order> odList = os.odList1(m_order);
		int num = total - startRow + 1;
		
		PagingBean pb = new PagingBean(currentPage, rowPerPage, total);
		String[] title = { "이름", "내용", "제목+내용" };

		model.addAttribute("title", title);
		model.addAttribute("pb", pb);
		model.addAttribute("odList", odList);
		model.addAttribute("num", num);
		return "/company/shipment/admin/orderList1";
	}
	@RequestMapping(value = "/company/orderList2.do", method = RequestMethod.GET)
	public String orderList2(M_order m_order, String pageNum, Model model) {
		
		if (pageNum == null || pageNum.equals("")) {
			pageNum = "1";
		}
		int currentPage = Integer.parseInt(pageNum);
		int rowPerPage = 10;
		int total = os.getODTotal(m_order);
		int startRow = (currentPage - 1) * rowPerPage + 1;
		int endRow = startRow + rowPerPage - 1;
		m_order.setStartRow(startRow);
		m_order.setEndRow(endRow);
		List<M_order> odList = os.odList2(m_order);
		int num = total - startRow + 1;
		
		PagingBean pb = new PagingBean(currentPage, rowPerPage, total);
		String[] title = { "이름", "내용", "제목+내용" };

		model.addAttribute("title", title);
		model.addAttribute("pb", pb);
		model.addAttribute("odList", odList);
		model.addAttribute("num", num);
		return "/company/shipment/admin/orderList2";
	}
	@RequestMapping(value = "/company/orderList3.do", method = RequestMethod.GET)
	public String orderList3(M_order m_order, String pageNum, Model model) {
		
		if (pageNum == null || pageNum.equals("")) {
			pageNum = "1";
		}
		int currentPage = Integer.parseInt(pageNum);
		int rowPerPage = 10000;
		int total = os.getODTotal(m_order);
		int startRow = (currentPage - 1) * rowPerPage + 1;
		int endRow = startRow + rowPerPage - 1;
		m_order.setStartRow(startRow);
		m_order.setEndRow(endRow);
		List<M_order> odList = os.odList3(m_order);
		int num = total - startRow + 1;
		
		PagingBean pb = new PagingBean(currentPage, rowPerPage, total);
		String[] title = { "이름", "내용", "제목+내용" };

		model.addAttribute("title", title);
		model.addAttribute("pb", pb);
		model.addAttribute("odList", odList);
		model.addAttribute("num", num);
		return "/company/shipment/admin/orderList3";
	}
	@RequestMapping(value = "/company/orderList4.do", method = RequestMethod.GET)
	public String orderList4(M_order m_order, String pageNum, Model model) {
		
		if (pageNum == null || pageNum.equals("")) {
			pageNum = "1";
		}
		int currentPage = Integer.parseInt(pageNum);
		int rowPerPage = 10000;
		int total = os.getODTotal(m_order);
		int startRow = (currentPage - 1) * rowPerPage + 1;
		int endRow = startRow + rowPerPage - 1;
		m_order.setStartRow(startRow);
		m_order.setEndRow(endRow);
		List<M_order> odList = os.odList4(m_order);
		int num = total - startRow + 1;
		
		PagingBean pb = new PagingBean(currentPage, rowPerPage, total);
		String[] title = { "이름", "내용", "제목+내용" };

		model.addAttribute("title", title);
		model.addAttribute("pb", pb);
		model.addAttribute("odList", odList);
		model.addAttribute("num", num);
		return "/company/shipment/admin/orderList4";
	}
	@RequestMapping(value = "company/orderDetail.do", method = RequestMethod.GET)
	public String orderDetail(int order_no, String pageNum, Model model) {
		M_order m_order = os.selectOD(order_no);
		
		model.addAttribute("m_order", m_order);
		model.addAttribute("pageNum", pageNum);
		return "/company/shipment/admin/orderDetail";
	}
	@RequestMapping(value = "company/orderSelectStaff.do", method = RequestMethod.GET)
	public String orderSelectStaff(CMember member, Model model) {
		
		List<CMember> stList = ms.stList(member);
		model.addAttribute("stList", stList);
		return "/company/shipment/admin/orderSelectStaff";
	}
	@RequestMapping(value = "company/orderSelectDriver.do", method = RequestMethod.GET)
	public String orderSelectDriver(Model model, M_order m_order) {
		
		os.updateOD(m_order);
		
		return "redirect:orderList.do";
	}
	@RequestMapping(value = "company/orderCheck2.do", method = RequestMethod.GET)
	public String orderCehck2(M_order m_order, String pageNum, Model model) {
		//출고 작업
		int result = 0;

		result = os.updateOD2(m_order);
		result = os.updateOD22(m_order);
		result = os.updateOD222(m_order);
		
		model.addAttribute("result", result);
		model.addAttribute("pageNum", pageNum);
		return "/company/shipment/admin/orderCheck";
	}
	@RequestMapping(value = "company/orderCheck3.do", method = RequestMethod.GET)
	public String orderCehck3(int order_no, String pageNum, Model model) {
		int result = 0;

		result = os.updateOD3(order_no);

		model.addAttribute("result", result);
		model.addAttribute("pageNum", pageNum);
		return "/company/shipment/admin/orderCheck";
	}
	@RequestMapping(value = "company/orderCheck4.do", method = RequestMethod.GET)
	public String orderCehck4(int order_no, String pageNum, Model model) {
		int result = 0;

		result = os.updateOD4(order_no);

		model.addAttribute("result", result);
		model.addAttribute("pageNum", pageNum);
		return "/company/shipment/admin/orderCheck";
	}
	@RequestMapping(value = "company/orderCancel.do", method = RequestMethod.GET)
	public String orderCancel(M_order m_order, String pageNum, Model model) {
		int result = 0;

		result = os.updateCC(m_order);
		result = os.updateCCC(m_order);
		result = os.updateCCCC(m_order);

		model.addAttribute("result", result);
		model.addAttribute("pageNum", pageNum);
		return "/company/shipment/admin/orderCancel";
	}
	@RequestMapping(value = "/company/boardList.do", method = RequestMethod.GET)
	public String boardList(BoardDTO board, String pageNum, Model model) {
			
			if (pageNum == null || pageNum.equals("")) {
				pageNum = "1";
			}
			int currentPage = Integer.parseInt(pageNum);
			int rowPerPage = 100;
			int total = os.getBDTotal(board);
			int startRow = (currentPage - 1) * rowPerPage + 1;
			int endRow = startRow + rowPerPage - 1;
			board.setStartRow(startRow);
			board.setEndRow(endRow);
			List<M_order> bdList = os.bdList(board);
			int num = total - startRow + 1;
			
			PagingBean pb = new PagingBean(currentPage, rowPerPage, total);
			String[] title = { "이름", "내용", "제목+내용" };

			model.addAttribute("title", title);
			model.addAttribute("pb", pb);
			model.addAttribute("bdList", bdList);
			model.addAttribute("num", num);
			
			return "/company/shipment/admin/boardList";
		
	}
	@PutMapping("/company/updateQuantity")
    public ResponseEntity<Integer> updateQuantity(@RequestBody BoardDTO board,Model model) {
        
		int result = 0;
        
		result = os.bdUpdate(board);

		System.out.println(result);
        return ResponseEntity.ok(result);
    }
	
	@RequestMapping(value = "/company/adminCoupon.do", method = RequestMethod.GET)
	public String adminCoupon() {

		return "/company/shipment/admin/adminCoupon";
	}
	@RequestMapping(value = "company/couponInsert.do", method = RequestMethod.POST)
	public String couponInsert(Coupon coupon, Model model) {

		int result = 0;
		result = cps.insert(coupon);
		
		model.addAttribute("result", result);

		return "/company/shipment/admin/couponInsert";
	}
	@RequestMapping(value = "/company/adminMbList.do", method = RequestMethod.GET)
	public String adminMbList(CMember member, String pageNum, Model model) {
		
		if (pageNum == null || pageNum.equals("")) {
			pageNum = "1";
		}
		int currentPage = Integer.parseInt(pageNum);
		int rowPerPage = 5; // 한 화면에 보여주는 게시글 갯수
		int total = ms.getMbTotal(member);
		int startRow = (currentPage - 1) * rowPerPage + 1;
		int endRow = startRow + rowPerPage - 1;
		member.setStartRow(startRow);
		member.setEndRow(endRow);
		List<CMember> mbList = ms.mbList(member);
		int num = total - startRow + 1;
		PagingBean pb = new PagingBean(currentPage, rowPerPage, total);
		String[] title = { "아이디", "이름", "닉네임", "성별", "가입일" };

		model.addAttribute("title", title);
		model.addAttribute("pb", pb); // paginbean pb
		model.addAttribute("mbList", mbList);
		model.addAttribute("num", num); // 목록 번호 생성 위한 num
		
		return "/company/shipment/admin/adminMbList";
	}
	@RequestMapping(value = "/company/adminMbListRanking.do", method = RequestMethod.GET)
	public String adminMbListRanking(CMember member, String pageNum, Model model) {
		
		if (pageNum == null || pageNum.equals("")) {
			pageNum = "1";
		}
		int currentPage = Integer.parseInt(pageNum);
		int rowPerPage = 100; // 한 화면에 보여주는 게시글 갯수
		int total = ms.getMbTotal(member);
		int startRow = (currentPage - 1) * rowPerPage + 1;
		int endRow = startRow + rowPerPage - 1;
		member.setStartRow(startRow);
		member.setEndRow(endRow);
		List<CMember> mbList = ms.mbList1(member);
		int num = total - startRow + 1;
		PagingBean pb = new PagingBean(currentPage, rowPerPage, total);
		String[] title = { "아이디", "이름", "닉네임", "성별", "가입일" };

		model.addAttribute("title", title);
		model.addAttribute("pb", pb); // paginbean pb
		model.addAttribute("mbList", mbList);
		model.addAttribute("num", num); // 목록 번호 생성 위한 num
		
		return "/company/shipment/admin/adminMbList1";
	}
	@RequestMapping(value = "company/adminMbView.do", method = RequestMethod.GET)
	public String adminMbView(String m_userId, String pageNum, Model model) {
		CMember member = ms.select(m_userId);

		model.addAttribute("member", member);

		return "/company/shipment/admin/adminMbView";
	}
	@RequestMapping(value = "company/adminMbViewUpdate.do", method = RequestMethod.POST)
	public String adminMbViewUpdate(CMember member, String pageNum, Model model) {
		ms.updateStat(member);
		model.addAttribute("member", member);
		return "redirect:/company/adminMbView.do";
	}
	@RequestMapping(value = "company/adminMbDelete.do", method = RequestMethod.GET)
	public String adminMbDelete(String m_userId, String pageNum, Model model) {
		int result = ms.adminMbDelete(m_userId);
		model.addAttribute("result", result);
		return "/company/shipment/admin/adminMbDelete";
	}
	@RequestMapping(value = "/company/adminQnAList.do", method = RequestMethod.GET)
	public String adminQnAList(QnA qna, Model model, String pageNum, HttpSession session) {
		
		if (pageNum == null || pageNum.equals("")) {
			pageNum = "1";
		}
		int currentPage = Integer.parseInt(pageNum);
		int rowPerPage = 10; // 한 화면에 보여주는 게시글 갯수
		int total = qs.getTotal(qna);
		int startRow = (currentPage - 1) * rowPerPage + 1;
		int endRow = startRow + rowPerPage - 1;
		qna.setStartRow(startRow);
		qna.setEndRow(endRow);
		List<QnA> qnaList = qs.qnaList(qna);
		int num = total - startRow + 1;
		PagingBean pb = new PagingBean(currentPage, rowPerPage, total);
		String[] title = { "아이디", "이름", "닉네임", "성별", "가입일" };

		model.addAttribute("title", title);
		model.addAttribute("pb", pb); // paginbean pb
		model.addAttribute("qnaList", qnaList);
		model.addAttribute("num", num); // 목록 번호 생성 위한 num
		
		return "/company/shipment/admin/adminQnAList";
	}
	@RequestMapping(value = "company/adminQnAView.do", method = RequestMethod.GET)
	public String adminQnAView(Integer qa_no, String pageNum, Model model) {
		QnA qna = qs.selectQnA(qa_no);
		
		List<QnAr> qnarList = qrs.qnarList(qa_no);
		
		model.addAttribute("qnarList", qnarList);
		model.addAttribute("qa_no", qa_no);
		model.addAttribute("qna", qna);
		model.addAttribute("pageNum", pageNum);
		System.out.println(qnarList);
		return "/company/shipment/admin/adminQnAView";
	}
	@RequestMapping(value = "company/adminQnAReplyInsert.do", method = RequestMethod.GET)
	public String adminQnAReplyInsert(int qa_no, QnAr qnar, String pageNum, Model model) {
		int result = 0;
		
		qnar.setQa_no(qa_no);
		
		result = qrs.insert(qnar);
		
		model.addAttribute("result", result);
		model.addAttribute("qa_no", qa_no);
		return "/company/shipment/admin/adminQnAReplyInsert";
	}
	@RequestMapping(value = "company/adminQnACheck.do", method = RequestMethod.GET)
	public String adminQnACheck(int qa_no, String pageNum, Model model) {
		int result = 0;
		result = qs.updateChk(qa_no);

		model.addAttribute("result", result);
		model.addAttribute("pageNum", pageNum);
		return "/company/shipment/admin/adminQnACheck";
	}
	@RequestMapping(value = "company/adminQnAReply.do", method = RequestMethod.GET)
	public String adminQnAReply() {
		
		return "/company/shipment/admin/adminQnaReply";
	}

}
