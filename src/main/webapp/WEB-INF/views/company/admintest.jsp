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
<body>
<h2>관계자 페이지임</h2>

<script type="text/javascript">
/*
function gogo(obj){
	var oTd = $(obj).parent();
	G_Util.newFormSubmit({
		"action" : "company/shipper/ship_Master.do",
		"param"  : {
			"resvIdx"      : oTd.find("input[name=resvIdx]").val()
			
		}
	
	})
}*/

var userId = $('input[name=userId]').val();
var userPw = $('input[name=userPw]').val();
var driverLat = $('input[name=driverLat]').val();
var driverLon = $('input[name=driverLon]').val();
var driverNm = $('input[name=driverNm]').val();
var driverPhone = $('input[name=driverPhone]').val();

function gogo(){
	var userPw = $('input[name=userPw]').val();
	$.ajax({
		type : "POST",
		url  : "/company/shipper/DriverLoad.do",
		data : {
			"userId"		: userId,
			"userPw"		: userPw,
			"driverLat"		: driverLat,
			"driverLon"		: driverLon,
			"driverNm"		: driverNm,
			"driverPhone"	: driverPhone
		},
		dataType : "json",
		success  : function(data){
			
			console.log("성공");
			// 예시: 응답 데이터를 이용하여 동적으로 페이지 이동
            
			//window.location.href = "/company/shipper/ship_Master.do";
		},
		error:function(request,status,error){
			console.log("실패");
			alert("처리 중 오류가 발생되었습니다.\nerror:"+error+"request:"+request+"status:"+status);
		}
	});
	
}
//setInterval('gogo()', 3000); // 3초 마다 함수실행
</script>


<div>
<c:forEach items="${dlist}" var="dlist" varStatus="status">

 
<input type="hidden" name="userId" id="userId" value="${dlist.userId}">


<input type="hidden" name="userPw" id="userPw" value="${dlist.userPw}">
<input type="hidden" name="driverLat" id="driverLat" value="${dlist.driverLat}">
<input type="hidden" name="driverLon" id="driverLon" value="${dlist.driverLon}">
<input type="hidden" name="driverNm" id="driverNm" value="${dlist.driverNm}">
<input type="hidden" name="driverPhone" id="driverPhone" value="${dlist.driverPhone}">





</c:forEach>
<a href="javascript:void(0);" onclick="javascript:gogo(this);">모든 기사 보기</a>
</div>


<!-- 
<input type="hidden" name="userId" id="userId" value="${dlist.userId}">
<input type="hidden" name="userPw" id="userPw" value="${dlist.userPw}">
<input type="hidden" name="driverLat" id="driverLat" value="${dlist.driverLat}">
<input type="hidden" name="driverLon" id="driverLon" value="${dlist.driverLon}">
<input type="hidden" name="driverNm" id="driverNm" value="${dlist.driverNm}">
<input type="hidden" name="driverPhone" id="driverPhone" value="${dlist.driverPhone}">

<a href="javascript:void(0);" onclick="javascript:gogo(this);">모든 기사 보기</a>

 -->
</body>
</html>