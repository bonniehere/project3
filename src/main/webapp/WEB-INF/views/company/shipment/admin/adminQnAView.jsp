<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:set var="path" value="${pageContext.request.contextPath }"></c:set>
<script type="text/javascript" src="${path }/resources/js/jquery.js"></script>
<script type="text/javascript" src="${path }/resources/js/scripts.js"></script>
<style type="text/css">
#join {
	color: #324028;
}

</style>
<script type="text/javascript">

</script>
</head>
<body>
	<div class="container-md mt-5 mb-5">
		<p></p>
		<p></p>
		<p></p>
		<p></p>
		<p></p>
		<p></p>
		<br /> <br /> <br /> <br /> <br />
		<div class="row">
			<div class="col col-md-1.5"></div>

			<div class="col col-md-9">
			
					<h2 class="mt-5 text-start" id="join" style="opacity: 0.5">QnA 상세</h2>
				<table class="table">	
						
						<tr><th>QnA 번호</th><td>${qna.qa_no }</td></tr>
						<tr><th>이메일</th><td>${qna.m_email }</td></tr>
						<tr><th>문의 날짜</th><td>${qna.reg_date }</td></tr>
						<tr><th>문의 상태</th><td>${qna.qa_condition}</td></tr>
						<tr><th>문의 내용</th><td>${qna.qa_content}</td></tr>
						<tr><th>사진</th><td> <img alt="${qna.qa_fileName }"
					src="${path }/resources/upload/${qna.qa_fileName }" width="300"></td></tr>
						
						<tr><td class="text-center" colspan="2">
						
						<button type="button" class="btn btn-info"
						onclick="location.href='adminQnACheck.do?qa_no=${qna.qa_no}'">처리완료</button></td></tr>
 						<c:if test="${empty qnarList }">
						<tr><th>관리자 답변</th><td>답변이 없습니다.</td></tr>
						</c:if>
						<c:if test="${not empty qnarList }">
						<c:forEach var="qnar" items="${qnarList }">
						<tr><th>관리자 답변</th><td>${qnar.qar_content }(작성일:${qnar.qar_regDate })</td></tr>
						</c:forEach>
						</c:if>
						<form action="adminQnAReplyInsert.do?qa_no=${qna.qa_no }">
						<input type="hidden" name="qa_no" value="${qna.qa_no}">
						<tr><th>관리자 답변하기</th><td>
						<textarea name="qar_content" cols="60" rows="5"></textarea></td></tr>
						<tr><th class="text-center" colspan="2"><button type="submit" class="btn btn-primary">답변하기</button></th></tr>	
						</form>			
				</table>	
			</div>
			<div class="col col-md-1.5"></div>
		</div>
	</div>


</body>
</html>