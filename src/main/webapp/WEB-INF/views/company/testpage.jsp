<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="../../../../resources/js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="../../../../resources/js/jquery-ui.min.js"></script>
<script type="text/javascript" src="../../../../resources/js/CommonUtil.c3r-custom.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script>
//기사 페이지 가기~
function yaho(obj){
	var oTd = $(obj).parent();
	G_Util.newFormSubmit({
		"action" : "/company/shipper/ship_Driver.do",
		"param"  : {
			"userId"      : oTd.find("input[name=userId]").val(),
			"userPw"      : oTd.find("input[name=userPw]").val(),
			"driverNm"      : oTd.find("input[name=driverNm]").val()
		}
	
	})
}

</script>


<body>
<h1>테스트 페이지입니다람쥐!!</h1>


<!-- 
<a href="/company/shipper/ship_Driver.do">
 -->

<div>
<table border="1">
<tr>
<th>배달 기사</th>
<th>어케하노</th>
</tr>








</table>





</div>







<div>
<c:forEach items="${list}" var="list" varStatus="status">

<input type="hidden" name="userId" value="${list.userId}">
<input type="hidden" name="userPw" value="${list.userPw}">
<input type="hidden" name="driverNm" value="${list.driverNm}">

<a href="javascript:void(0);" onclick="javascript:yaho(this);">기사P</a>
</c:forEach>
</div>




</body>
</html>