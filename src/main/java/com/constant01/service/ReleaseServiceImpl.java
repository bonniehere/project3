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
	public int getTotal() {
		return rm.getTotal();
	}
}
