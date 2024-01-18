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
			
					<h2 class="mt-5 text-start" id="join" style="opacity: 0.5">제휴/광고문의 리스트</h2>
				<table class="table">	
						<tr><th>번호</th><td>이름</td><td>제목</td></tr>
					<c:forEach var="affi" items="${afList }">
						<tr onClick="location.href='contactResultView.do?af_no=${affi.af_no}'" style="cursor:pointer;"
						><th>${affi.af_no}</th><td>${affi.af_name }</td><td>${affi.af_title }</td></tr>
						
					</c:forEach>
				</table>	
					<div></div>
			</div>
			<div class="col col-md-1.5"></div>
		</div>
	</div>


</body>
</html>