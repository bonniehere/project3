package com.constant01.service;

import java.util.ArrayList;

import com.constant01.model.BoardDTO;
import com.constant01.model.Criteria;
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
	
}
