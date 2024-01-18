<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="${path }/resources/js/jquery.js"></script>
<script type="text/javascript" src="${path }/resources/js/scripts.js"></script>
<c:set var="path" value="${pageContext.request.contextPath }"></c:set>
<style type="text/css">

#join{
	color: #324028;
}

hr {
	width : 100%;
	margin-left : auto;
	margin-right : auto;
}
#err{
	color : red;
}
#err2{
	color : gray;
}
#over{
	border: 1px solid gray;
	border-radius: 10px 10px;
	resize: none;
	overflow:auto;
}
</style>
	<script type="text/javascript">
		
	</script>
</head>
<body>

<div class="container-md mt-5 mb-5">
<p></p><p></p><p></p><p></p><p></p><p></p>
<br/><br/><br/><br/><br/>
<div class="row">

<div class="col-md-4"></div>


<div class="col-md-4">
<form action="couponInsert.do" method="post">
<h2 class="mt-5 text-start" id="join">쿠폰 발급하기</h2>
<hr>
<table class="table">
	<tr><th>coupon_type : </th><td><input type="text" name="coupon_type"></td></tr>
	<tr><th>coupon_use : </th><td><input type="text" name="coupon_use"></td></tr>
	<tr><th>coupon_max_date : </th><td><input type="date" name="coupon_max_date"></td></tr>
	<tr><th>use_price : </th><td><input type="number" name="use_price"></td></tr>
	<tr><th>m_email : </th><td><input type="email" name="m_email"></td></tr>
	
	<tr><th colspan="2"><button type="submit">쿠폰 발행하기</button></tr>
</table>
</form>
</div>


<div class="col col-md-4"></div>

</div>

</div>
</body>
</html>