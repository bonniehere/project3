package com.constant01.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.constant01.mapper.ProfMapper;
import com.constant01.model.ProfDTO;
@Service
public class ProfServiceImpl implements ProfService{
	@Autowired
	ProfMapper pm;
	public ArrayList<ProfDTO> list() {
		// 회원목록리스트
		return pm.list();
	}
}
