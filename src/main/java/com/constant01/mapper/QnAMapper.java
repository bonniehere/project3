package com.constant01.mapper;

import java.util.List;

import com.constant01.model.QnA;

public interface QnAMapper {

	int getMaxNum(); // qna 마지막 번호

	void updateStep(QnA qna); // qna 답변

	int insertFile(QnA qna); // qna 첨부파일 작성

	int insert(QnA qna); // qna 글 작성

	int getTotal(QnA qna); // 회원별 qna 총 갯수

	List<QnA> list(QnA qna); // qna 목록

	QnA select(int num);

	int delete(int num);

	int QnATotal(QnA qna);

	List<QnA> qnaList(QnA qna);

	QnA selectQnA(int qa_no);

	int updateChk(int qa_no);

}
