<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<script type="text/javascript" src="../../../../resources/js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="../../../../resources/js/jquery-ui.min.js"></script>
<script type="text/javascript" src="../../../../resources/js/CommonUtil.c3r-custom.js"></script>
</head>
<script>
	
	//고객 페이지 가기~
	function hohoho(obj){
		var oTd = $(obj).parent();
		G_Util.newFormSubmit({
			"action" : "/company/shipper/ship_Customer.do",
			"param"  : {
				"driverIdx"      : oTd.find("input[name=driverIdx]").val(),
				"driverNm"      : oTd.find("input[name=driverNm]").val(),
				"driverLat"      : oTd.find("input[name=driverLat]").val(),
				"driverLon"      : oTd.find("input[name=driverLon]").val()
			}
		
		})
	}
	
	</script>
<body>

<h2>회원 페이지입니다람쥐!</h2>




<div>
<c:forEach items="${dlist}" var="dlist" varStatus="status">

<input type="hidden" name="driverIdx" value="${dlist.driverIdx}">
<input type="hidden" name="driverNm" value="${dlist.driverNm}">
<input type="hidden" name="driverNm" value="${dlist.driverLat}">
<input type="hidden" name="driverNm" value="${dlist.driverLon}">

<a href="javascript:void(0);" onclick="javascript:hohoho(this);">고객P</a>
</c:forEach>
</div>


</body>
</html>