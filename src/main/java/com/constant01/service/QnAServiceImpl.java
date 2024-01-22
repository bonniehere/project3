package com.constant01.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.constant01.mapper.QnAMapper;
import com.constant01.model.QnA;

@Service
public class QnAServiceImpl implements QnAService {
	@Autowired
	private QnAMapper qad;

	@Override
	public int getMaxNum() {
		return qad.getMaxNum();
	}

	@Override
	public void updateStep(QnA qna) {
		qad.updateStep(qna);
	}

	@Override
	public int insertFile(QnA qna) {
		return qad.insertFile(qna);
	}

	@Override
	public int insert(QnA qna) {
		return qad.insert(qna);
	}

	@Override
	public int getTotal(QnA qna) {
		return qad.getTotal(qna);
	}

	@Override
	public List<QnA> list(QnA qna) {
		return qad.list(qna);
	}

	@Override
	public QnA select(int num) {
		return qad.select(num);
	}

	@Override
	public int delete(int num) {
		return qad.delete(num);
	}

	@Override
	public int getQnATotal(QnA qna) {
		// TODO Auto-generated method stub
		return qad.QnATotal(qna);
	}

	@Override
	public List<QnA> qnaList(QnA qna) {
		// TODO Auto-generated method stub
		return qad.qnaList(qna);
	}

	@Override
	public QnA selectQnA(int qa_no) {
		// TODO Auto-generated method stub
		return qad.selectQnA(qa_no);
	}

	@Override
	public int updateChk(int qa_no) {
		// TODO Auto-generated method stub
		return qad.updateChk(qa_no);
	}
}
