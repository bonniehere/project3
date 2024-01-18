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
						<tr><th>주문번호</th><th>주문자 email</th><th>주문자 이름</th>
							<th>주문일자</th><th>주문상태</th><th>확인</th></tr>
					<c:forEach var="m_order" items="${odList }">
						<tr><th>${m_order.order_no}</th>
						<td>${m_order.m_email }</td>
						<td>${m_order.ju_name }</td>
						<td>${m_order.order_date }</td>
						<td>${m_order.status }</td>
						<td><button type="button" class="btn btn-info" 
						onclick="location.href='orderDetail.do?order_no=${m_order.order_no}' ">
						확인</button></td></tr>
						
					</c:forEach>
				</table>	<nav aria-label="..." id="page_btn">
			<ul class="pagination pagination-lg justify-content-center">
				<!-- 시작페이지가 pagePerBlock(10)보다 크면 앞에 보여줄 페이지가 있다 -->
				<c:if test="${pb.startPage > pb.pagePerBlock }">
					<li class="page-item"><a href="orderList.do?pageNum=1"
							class="page-link"><span aria-current="page"></span></a></li>
					<li class="page-item"><a href="orderList.do?pageNum=${pb.startPage - 1 }"
						class="page-link"><span aria-current="page"></span></a></li>
				</c:if>
				<c:forEach var="i" begin="${pb.startPage }" end="${pb.endPage }">
					<!-- 현재 머물고 있는 페이지가 몇 페이지인지 구별할 때 -->
					<c:if test="${pb.currentPage == i }">
						<li class="page-item"><a href="orderList.do?pageNum=${i }"
							class="page-link">ㅤ${i}ㅤ</a></li>
					</c:if>
					<c:if test="${pb.currentPage != i }">
						<li class="page-item"><a href="orderList.do?pageNum=${i }"
							class="page-link">ㅤ${i}ㅤ</a></li>
					</c:if>
				</c:forEach>
				<!-- 보여줄 페이지가 뒤에 남아있는 경우(다음 버튼 활성화)=> endPage < totalPage인 경우 -->
				<c:if test="${pb.endPage < pb.totalPage }">
					<li class="page-item"><a href="orderList.do?pageNum=${pb.endPage + 1 }"
						class="page-link"><span aria-current="page"></span>
					</a></li>
					<li class="page-item"><a href="orderList.do?pageNum=${pb.totalPage }"
						class="page-link"><span aria-current="page"></span>
					</a></li>
				</c:if>
			</ul>
		</nav>	
					<div></div>
			</div>
			<div class="col col-md-1.5"></div>
		</div>
	</div>


</body>
</html>