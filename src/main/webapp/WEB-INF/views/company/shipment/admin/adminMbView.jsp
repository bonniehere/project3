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

  .container-md {
    margin-top: 5rem;
    margin-bottom: 5rem;
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
<script type="text/javascript">

function del() {
	var cf = confirm("회원을 탈퇴시키겠습니까?");
	if(cf) {
		location.href="adminMbDelete.do?m_userId=${member.m_userId }";
		
	} else {
		alert("탈퇴가 취소 되었습니다");
		return;
	}
}
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
			
					<h2 class="mt-5 text-start" id="join" style="opacity: 0.5">회원상세정보</h2>
				<table class="table">	
					
						<tr><th>이메일</th><td>${member.m_email }</td></tr>
						<tr><th>이름</th><td>${member.m_name }</td></tr>
						<tr><th>전화번호</th><td>${member.m_tel }</td></tr>
						<tr><th>주소</th><td>${member.m_addr }</td></tr>
						<tr><th>상세주소</th><td>${member.m_addr_detail }</td></tr>
						<tr><th>가입일</th><td>${member.join_date }</td></tr>
						<tr><th>탈퇴여부</th><td>${member.del }</td></tr>
						<!-- <tr><th>누적금액</th><td>${amonut }</td></tr> -->
						<tr><th>탈퇴시키기</th><td><button type="button" class="btn btn-danger" 
						onclick="del()">
						탈퇴시키기</button></td></tr>
						
						
						
				
				</table>	
					<div></div>
			</div>
			<div class="col col-md-1.5"></div>
		</div>
	</div>
	<div style="display: flex; justify-content: center;">
		<a href="adminMbList.do" style="text-decoration: none;">회원리스트</a>
    	<a href="adminPage.do" style="text-decoration: none;">홈으로</a>
	</div>
</body>
</html>