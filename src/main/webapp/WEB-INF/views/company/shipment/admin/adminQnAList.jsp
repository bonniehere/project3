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
			
					<h2 class="mt-5 text-start" id="join" style="opacity: 0.5">QnA 리스트</h2>
				<table class="table">	
						<tr><th>문의번호</th><th>문의자 email</th><th>문의제목</th>
							<th>문의날짜</th><th>확인여부</th><th>확인</th></tr>
					<c:forEach var="qna" items="${qnaList }">
						<tr><th>${qna.qa_no}</th>
						<td>${qna.m_email}</td>
						<td>${qna.qa_subject }</td>
						<td>${qna.reg_date }</td>
						<td>${qna.qa_condition }</td>
						<td><button type="button" class="btn btn-info" 
						onclick="location.href='adminQnAView.do?qa_no=${qna.qa_no}' ">
						확인</button></td></tr>
						
					</c:forEach>
				</table>	
					<div></div>
			</div>
			<div class="col col-md-1.5"></div>
		</div>
	</div>


</body>
</html>