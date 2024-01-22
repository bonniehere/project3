package com.constant01.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.constant01.model.Affi;
import com.constant01.model.Coupon;
import com.constant01.model.M_order;
import com.constant01.model.CMember;
import com.constant01.model.QnA;
import com.constant01.model.QnAr;
import com.constant01.service.AffiService;
import com.constant01.service.CouponService;
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
	
	@RequestMapping(value = "adminPage.do", method = RequestMethod.GET)
	public String adminPage() {
		return "/company/shipment/admin/adminPage";
	}
	@RequestMapping(value = "contactResultList.do", method = RequestMethod.GET)
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
	@RequestMapping(value = "contactResultView.do", method = RequestMethod.GET)
	public String contactResult(int af_no, String pageNum, Model model) {
		Affi affi = as.selectAF(af_no);

		model.addAttribute("affi", affi);
		model.addAttribute("pageNum", pageNum);

		return "/company/shipment/admin/contactResultView";
	}
	@RequestMapping(value = "orderList.do", method = RequestMethod.GET)
	public String orderList(M_order m_order, String pageNum, Model model) {
		
		if (pageNum == null || pageNum.equals("")) {
			pageNum = "1";
		}
		int currentPage = Integer.parseInt(pageNum);
		int rowPerPage = 5;
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
	@RequestMapping(value = "orderDetail.do", method = RequestMethod.GET)
	public String orderDetail(int order_no, String pageNum, Model model) {
		M_order m_order = os.selectOD(order_no);
		
		model.addAttribute("m_order", m_order);
		model.addAttribute("pageNum", pageNum);
		return "/company/shipment/admin/orderDetail";
	}
	@RequestMapping(value = "orderCheck.do", method = RequestMethod.GET)
	public String orderCehck(int order_no, String pageNum, Model model) {
		int result = 0;

		result = os.updateOD(order_no);

		model.addAttribute("result", result);
		model.addAttribute("pageNum", pageNum);
		return "/company/shipment/admin/orderCheck";
	}
	@RequestMapping(value = "orderCancel.do", method = RequestMethod.GET)
	public String orderCancel(int order_no, String pageNum, Model model) {
		int result = 0;

		result = os.updateCC(order_no);

		model.addAttribute("result", result);
		model.addAttribute("pageNum", pageNum);
		return "/company/shipment/admin/orderCancel";
	}
	@RequestMapping(value = "adminCoupon.do", method = RequestMethod.GET)
	public String adminCoupon() {

		return "/company/shipment/admin/adminCoupon";
	}
	@RequestMapping(value = "couponInsert.do", method = RequestMethod.GET)
	public String couponInsert(Coupon coupon, Model model) {
		int result = 0;
		result = cps.insert(coupon);

		model.addAttribute("result", result);
		return "/company/shipment/admin/couponInsert";
	}
	@RequestMapping(value = "adminMbList.do", method = RequestMethod.GET)
	public String adminMbList(CMember member, String pageNum, Model model) {
		/*
		if (pageNum == null || pageNum.equals("")) {
			pageNum = "1";
		}
		int currentPage = Integer.parseInt(pageNum);
		int rowPerPage = 2; // 한 화면에 보여주는 게시글 갯수
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
		*/
		return "/company/shipment/admin/adminMbList";
	}
	@RequestMapping(value = "adminMbView.do", method = RequestMethod.GET)
	public String adminMbView(String m_email, String pageNum, Model model) {
		CMember member = ms.select(m_email);

		model.addAttribute("member", member);

		return "/company/shipment/admin/adminMbView";
	}
	@RequestMapping(value = "adminMbDelete.do", method = RequestMethod.GET)
	public String adminMbDelete(String m_email, String pageNum, Model model) {
		int result = ms.adminMbDelete(m_email);
		model.addAttribute("result", result);
		return "/company/shipment/admin/adminMbDelete";
	}
	@RequestMapping(value = "adminQnAList.do", method = RequestMethod.GET)
	public String adminQnAList(QnA qna, Model model, String pageNum, HttpSession session) {
		/*
		if (pageNum == null || pageNum.equals("")) {
			pageNum = "1";
		}
		int currentPage = Integer.parseInt(pageNum);
		int rowPerPage = 10; // 한 화면에 보여주는 게시글 갯수
		int total = qs.getQnATotal(qna);
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
		*/
		return "/company/shipment/admin/adminQnAList";
	}
	@RequestMapping(value = "adminQnAView.do", method = RequestMethod.GET)
	public String adminQnAView(Integer qa_no, String pageNum, Model model) {
		QnA qna = qs.selectQnA(qa_no);
		
		List<QnAr> qnarList = qrs.qnarList(qa_no);
		
		model.addAttribute("qnarList", qnarList);
		model.addAttribute("qa_no", qa_no);
		model.addAttribute("qna", qna);
		model.addAttribute("pageNum", pageNum);
		return "/company/shipment/admin/adminQnAView";
	}
	@RequestMapping(value = "adminQnAReplyInsert.do", method = RequestMethod.GET)
	public String adminQnAReplyInsert(int qa_no, QnAr qnar, String pageNum, Model model) {
		int result = 0;
		
		qnar.setQa_no(qa_no);
		
		result = qrs.insert(qnar);
		
		model.addAttribute("result", result);
		model.addAttribute("qa_no", qa_no);
		return "/company/shipment/admin/adminQnAReplyInsert";
	}
	@RequestMapping(value = "adminQnACheck.do", method = RequestMethod.GET)
	public String adminQnACheck(int qa_no, String pageNum, Model model) {
		int result = 0;
		result = qs.updateChk(qa_no);

		model.addAttribute("result", result);
		model.addAttribute("pageNum", pageNum);
		return "/company/shipment/admin/adminQnACheck";
	}
	@RequestMapping(value = "adminQnAReply.do", method = RequestMethod.GET)
	public String adminQnAReply() {
		
		return "/company/shipment/admin/adminQnaReply";
	}

}
