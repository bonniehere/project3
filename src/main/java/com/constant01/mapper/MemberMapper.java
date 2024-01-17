package com.constant01.mapper;

import java.util.ArrayList;

import com.constant01.model.MemberDTO;

public interface MemberMapper {
	public void write(MemberDTO member);
	
	public ArrayList<MemberDTO> list();
	
	public MemberDTO detail(MemberDTO member);
	
	public void modify(MemberDTO member);
	
	public void remove(MemberDTO member);
	
	public MemberDTO login(MemberDTO member);
	
	public MemberDTO login2(MemberDTO member);
	
	public MemberDTO login3(MemberDTO member);
}
