package com.constant01.mapper;

import java.util.ArrayList;

import com.constant01.model.BoardDTO;
import com.constant01.model.Criteria;

public interface ReleaseMapper {

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
}
