package com.constant01.mapper;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.constant01.model.QnA;

@Repository
public class QnADaoImpl implements QnADao {
	@Autowired
	private SqlSessionTemplate sst;

	// qna 마지막 번호
	public int getMaxNum() {
		return sst.selectOne("qnans.getMaxNum");
	}

	// qna 답변 작성
	public void updateStep(QnA qna) {
		sst.update("qnans.updateStep", qna);
	}

	// qna 첨부파일 작성
	public int insertFile(QnA qna) {
		return sst.insert("qnans.insertFile", qna);
	}

	// qna 작성
	public int insert(QnA qna) {
		return sst.insert("qnans.insert", qna);
	}

	// 회원별 qna 총 갯수
	public int getTotal(QnA qna) {
		return sst.selectOne("qnans.getTotal", qna);
	}

	@Override
	public List<QnA> list(QnA qna) {
		return sst.selectList("qnans.list", qna);
	}

	// qna 선택
	public QnA select(int num) {
		return sst.selectOne("qnans.select", num);
	}

	@Override
	public int delete(int num) {
		return sst.update("qnans.delete", num);
	}

	@Override
	public int QnATotal(QnA qna) {
		// TODO Auto-generated method stub
		return sst.selectOne("qnans.getQnATotal", qna);
	}

	@Override
	public List<QnA> qnaList(QnA qna) {
		// TODO Auto-generated method stub
		return sst.selectList("qnans.qnaList", qna);
	}

	@Override
	public QnA selectQnA(int qa_no) {
		// TODO Auto-generated method stub
		return sst.selectOne("qnans.selectQnA", qa_no);
	}

	@Override
	public int updateChk(int qa_no) {
		// TODO Auto-generated method stub
		return sst.update("qnans.updateChk", qa_no);
	}
}
