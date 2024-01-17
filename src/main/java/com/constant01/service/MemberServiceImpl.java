package com.constant01.service;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.constant01.mapper.MemberMapper;
import com.constant01.model.MemberDTO;

@Service
public class MemberServiceImpl implements MemberService{
	// 회원가입
	@Autowired
	MemberMapper mm; // MemberMapper mm = new MemberMapper;
	
	public void write(MemberDTO member) {
		// 회원가입구현
		mm.write(member);
	}
	// 회원정보수정
	public void modify(MemberDTO member) {
		// 회원정보수정
		mm.modify(member);
	}
	public void remove(MemberDTO member) {
		mm.remove(member);
	}
	// 회원목록리스트(관리자)
	public ArrayList<MemberDTO> list() {
		// 회원목록리스트
		return mm.list();
	}
	// 회원상세내용(관리자)
	public MemberDTO detail(MemberDTO member) {
		// 회원상세내용
		return mm.detail(member);
	}
	// 로그인
	public MemberDTO login(MemberDTO member) {
		return mm.login(member);
	}
	public MemberDTO login2(MemberDTO member) {
		return mm.login2(member);
	}
	public MemberDTO login3(MemberDTO member) {
		return mm.login3(member);
	}
}
