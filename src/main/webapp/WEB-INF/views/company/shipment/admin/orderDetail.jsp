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
			
					<h2 class="mt-5 text-start" id="join" style="opacity: 0.5">주문</h2>
				<table class="table">	
						
						<tr><th>주문 번호</th><td>${m_order.order_no }</td></tr>
						<tr><th>주문자 이메일</th><td>${m_order.m_email }</td></tr>
						<tr><th>주문 날짜</th><td>${m_order.order_date }</td></tr>
						<tr><th>주문 상태</th><td>${m_order.status }</td></tr>
						<tr><th>주문 상품 코드</th><td>${m_order.p_no }</td></tr>
						<tr><th>환불 여부</th><td>${m_order.refund_chk }</td></tr>
						<tr><th>총가격</th><td>${m_order.total_price }</td></tr>
						<tr><th>주문자 이름</th><td>${m_order.ju_name }</td></tr>
						<tr><th>주문자 연락처</th><td>${m_order.ju_tel }</td></tr>
						<tr><th>주문자 주소</th><td>${m_order.ju_addr }</td></tr>
						<tr><th>주문자 상세주소</th><td>${m_order.ju_addr_detail }</td></tr>
						<tr><th>수령자 이름</th><td>${m_order.su_name }</td></tr>
						<tr><th>수령자 연락처</th><td>${m_order.su_tel }</td></tr>
						<tr><th>수령자 주소</th><td>${m_order.su_addr }</td></tr>
						<tr><th>수령자 상세주소</th><td>${m_order.su_addr_detail }</td></tr>
						<tr><th class="text-center" colspan="2">
						<button type="button" class="btn btn-primary"
						onclick="location.href='orderCheck.do?order_no=${m_order.order_no}'">발송완료</button>
						<button type="button" class="btn btn-danger"
						onclick="location.href='orderCancel.do?order_no=${m_order.order_no}'">발송취소(환불)</button></th>
						
						
						
				</table>	
					<div></div>
			</div>
			<div class="col col-md-1.5"></div>
		</div>
	</div>


</body>
</html>