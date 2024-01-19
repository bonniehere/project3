package com.constant01.mapper;

import java.util.ArrayList;

import com.constant01.model.BoardDTO;
import com.constant01.model.Criteria;

public interface ReleaseMapper {

	public BoardDTO boarddetail(BoardDTO detail);
	public ArrayList<BoardDTO> boardpage(Criteria cri);
	public int getTotal();
}
