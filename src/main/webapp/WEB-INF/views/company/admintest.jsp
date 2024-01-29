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
<title>C-Market</title>
</head>
<body>
<h2>관계자 페이지임</h2>

<script type="text/javascript">

function gogo(obj){
	var oTd = $(obj).parent();
	G_Util.newFormSubmit({
		"action" : "/company/shipper/ship_Master.do",
		"param"  : {
			
			"userPw"      : oTd.find("input[name=userPw]").val(),
			"driverLat"      : oTd.find("input[name=driverLat]").val(),
			"driverLon"      : oTd.find("input[name=driverLon]").val(),
			"driverNm"      : oTd.find("input[name=driverNm]").val()
			
			
		}
	
	})
}



</script>


<div>
<c:forEach items="${dlist}" var="dlist" varStatus="status">

<input type="hidden" name="userPw" id="userPw" value="${dlist.userPw}">
<input type="hidden" name="driverLat" id="driverLat" value="${dlist.driverLat}">
<input type="hidden" name="driverLon" id="driverLon" value="${dlist.driverLon}">
<input type="hidden" name="driverNm" id="driverNm" value="${dlist.driverNm}">

</c:forEach>

<a href="javascript:void(0);" onclick="javascript:gogo(this);">모든 기사 보기</a>
</div>



</body>
</html>