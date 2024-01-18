<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- <c:set var="path" value="${pageContext.request.contextPath }"></c:set>-->
<script type="text/javascript" src="../../../../../resources/js/jquery.js"></script>
<script type="text/javascript" src="../../../../../resources/js/scripts.js"></script>
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

			<div class="col col-md-5">
			
					<h2 class="mt-5 text-start" id="join" style="opacity: 0.5">관리자 페이지</h2>
					<ul>
					<li><div OnClick="location.href='contactResultList.do'" style="cursor:pointer">제휴/광고문의 리스트</div></li>
					<li><div OnClick="location.href='orderList.do'" style="cursor:pointer">주문 리스트</div></li>
					<li><div OnClick="location.href='adminMbList.do'" style="cursor:pointer">회원 리스트</div></li>
					<li><div OnClick="location.href='adminQnAList.do'" style="cursor:pointer">1:1문의리스트</div></li>
					<li><div OnClick="location.href='adminCoupon.do'" style="cursor:pointer">쿠폰발급창</div></li>
			
					</ul>
			</div>
			<div class="col col-md-1.5"></div>
		</div>
	</div>


</body>
</html>