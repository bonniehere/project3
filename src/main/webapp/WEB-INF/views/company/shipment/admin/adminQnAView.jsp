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

.container-md {
    width: 80%;
    margin: 0 auto;
}

.mt-5 {
    margin-top: 3rem;
}

.mb-5 {
    margin-bottom: 3rem;
}

.text-start {
    text-align: start;
}

.qna-table {
    width: 100%;
    margin-top: 2rem;
}

.qna-table th, .qna-table td {
    padding: 1rem;
    border-bottom: 1px solid #ddd;
}

.qna-table img {
    max-width: 100%;
    height: auto;
}

.btn-primary {
    background-color: #007bff;
    color: #fff;
    border: none;
    padding: 0.5rem 1rem;
    cursor: pointer;
}

.btn-info {
    background-color: #17a2b8;
    color: #fff;
    border: none;
    padding: 0.5rem 1rem;
    cursor: pointer;
}

.btn-primary:hover, .btn-info:hover {
    opacity: 0.8;
}
table {
    width: 100%;
    max-width: 100%;
    margin-bottom: 1rem;
    background-color: transparent;
    border-spacing: 0;
    border-collapse: collapse;
  }

  th,
  td {
    padding: 0.75rem;
    vertical-align: top;
    border-top: 1px solid #dee2e6;
    text-align: left;
  }

  th {
    background-color: #71a0a5; /* 하늘색 배경색 */
    color: white; /* 글자색 */
  }

  td {
    background-color: #d9edf7; /* 셀 배경색 */
  }
 a {
    text-decoration: none;
    background-color: #71a0a5; /* 버튼 배경색 */
    color: white; /* 버튼 글자색 */
    padding: 10px 20px; /* 원하는 패딩 조절 */
    border-radius: 5px; /* 버튼 모서리 둥글게 */
    font-weight: bold; /* 글자 굵게 */
    transition: background-color 0.3s ease; /* 배경색 전환 효과 */
    margin : 10px;
  }
</style>
<script type="text/javascript">

</script>
</head>
<body>

	<div class="container-md mt-5 mb-5">
		<p></p>
		<p></p>
		
		<br /> <br />
		<div class="row">
			<div class="col col-md-1.5"></div>

			<div class="col col-md-9">
			
					<h2 class="mt-5 text-start" id="join" style="opacity: 0.5">QnA 상세</h2>
				<table class="table">	
						
						<tr><th>QnA 번호</th><td>${qna.qa_no }</td></tr>
						<tr><th>ID</th><td>${qna.m_userId }</td></tr>
						<tr><th>문의 날짜</th><td>${qna.reg_date }</td></tr>
						<tr><th>문의 상태</th><td>${qna.qa_condition}　　<button type="button" class="btn btn-info"
						onclick="location.href='adminQnACheck.do?qa_no=${qna.qa_no}'">처리완료</button></td></tr>
						<tr><th>문의 내용</th><td>${qna.qa_content}</td></tr>
						
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
						<textarea name="qar_content" cols="60" rows="5"></textarea>　　<button type="submit" class="btn btn-info">답변하기</button></td></tr>
							
						</form>			
				</table>	
			</div>
			<div class="col col-md-1.5"></div>
		</div>
	</div>
	<div style="display: flex; justify-content: center;">
		<a href="adminQnAList.do" style="text-decoration: none;">QnA리스트</a>
    	<a href="adminPage.do" style="text-decoration: none;">홈으로</a>
	</div>
</body>
</html>