package com.constant01.service;

import java.util.ArrayList;

import com.constant01.model.BoardDTO;
import com.constant01.model.Criteria;
import com.constant01.model.cartVO;


public interface ReleaseService {

	public BoardDTO boarddetail(BoardDTO detail);
	public ArrayList<BoardDTO> boardpage(Criteria cri);
	public ArrayList<BoardDTO> boardpage2(Criteria cri);
	public ArrayList<BoardDTO> boardpage3(Criteria cri);
	public ArrayList<BoardDTO> boardpage4(Criteria cri);
	public ArrayList<BoardDTO> boardpage5(Criteria cri);
	
	
	
	public int getTotal();
	public int getTotal2();
	public int getTotal3();
	public int getTotal4();
	public int getTotal5();
	
	//주문현황
	public ArrayList<cartVO> orderlist(Criteria cri);
	public int getTotal_order();
	
}
