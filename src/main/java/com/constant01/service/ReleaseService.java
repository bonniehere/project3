package com.constant01.service;

import java.util.ArrayList;

import com.constant01.model.BoardDTO;
import com.constant01.model.Criteria;

public interface ReleaseService {
//	public ArrayList<BoardDTO> boardlist(BoardDTO list);
	public BoardDTO boarddetail(BoardDTO detail);
	public ArrayList<BoardDTO> boardpage(Criteria cri);
	public int getTotal();
	
}
