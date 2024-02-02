package com.constant01.service;

import java.util.ArrayList;

import com.constant01.model.BoardDTO;
import com.constant01.model.CMember;
import com.constant01.model.Criteria;
import com.constant01.model.QnA;
import com.constant01.model.QnAr;
import com.constant01.model.cartVO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.constant01.mapper.ReleaseMapper;

@Service

public class ReleaseServiceImpl implements ReleaseService{

	@Autowired
	ReleaseMapper rm;
	
	public BoardDTO boarddetail(BoardDTO detail) {
		return rm.boarddetail(detail);
	}
	
	public ArrayList<BoardDTO> boardpage(Criteria cri){
		return rm.boardpage(cri);
	}
	
	public ArrayList<BoardDTO> boardpage2(Criteria cri){
		return rm.boardpage2(cri);
	}
	
	
	public ArrayList<BoardDTO> boardpage3(Criteria cri){
		return rm.boardpage3(cri);
	}
	
	
	public ArrayList<BoardDTO> boardpage4(Criteria cri){
		return rm.boardpage4(cri);
	}
	
	
	public ArrayList<BoardDTO> boardpage5(Criteria cri){
		return rm.boardpage5(cri);
	}
	
	
	public int getTotal() {
		return rm.getTotal();
	}
	public int getTotal2() {
		return rm.getTotal2();
	}
	public int getTotal3() {
		return rm.getTotal3();
	}
	public int getTotal4() {
		return rm.getTotal4();
	}
	public int getTotal5() {
		return rm.getTotal5();
	}
	
	//주문현황
	public ArrayList<cartVO> orderlist(Criteria cri){
		return rm.orderlist(cri);
	}
	
	public int getTotal_order() {
		return rm.getTotal_order();
	}
	
	
	
	//qna
		public ArrayList<QnA> qna(Criteria cri){
			return rm.qna(cri);
		}
		public int getTotal_qna(Criteria cri) {
			return rm.getTotal_qna(cri);
		}
		
		public void qna_write(QnA qna) {
		 rm.qna_write(qna);
		}
		
		public ArrayList<QnA> WriteDetail(QnA qna) {
			return rm.WriteDetail(qna);
		}
		
		public ArrayList<QnAr> detail_answer(QnAr qnar){
			return rm.detail_answer(qnar);
		}
		//member_detail
		public ArrayList<CMember> member_detail(CMember member){
			return rm.member_detail(member);
		}
		
		//비밀번호변경
		public void changePassword(CMember member) {
			rm.changePassword(member);
		}
		
}
