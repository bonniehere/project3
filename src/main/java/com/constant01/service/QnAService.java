package com.constant01.service;

import java.util.List;

import com.constant01.model.QnA;

public interface QnAService {

	int getMaxNum(); // qna 마지막 번호

	void updateStep(QnA qna); // qna 답변 작성

	int insertFile(QnA qna); // qna 첨부파일 작성

	int insert(QnA qna);

	int getTotal(QnA qna);

	List<QnA> list(QnA qna);

	QnA select(int num);

	int delete(int num);
	
	int getQnATotal(QnA qna);

	List<QnA> qnaList(QnA qna);

	QnA selectQnA(int qa_no);

	int updateChk(int qa_no);

}
