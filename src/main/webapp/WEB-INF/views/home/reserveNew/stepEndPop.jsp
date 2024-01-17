<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script>


	window.opener.location.reload();
	window.close();


</script>
<body>

<form name="frm" action="home/reserveNew/stepEndPop.do">
<input type="hidden" id="sitePath" name="sitePath" value="${param.sitePath}">
	<input type="hidden" id="resvIdx" name="resvIdx" value="${param.resvIdx}">
	<input type="hidden" id="hspCd" name="hspCd" value="${param.hspCd}">
	<input type="hidden" id="memYn" name="memYn" value="${param.memYn}">
	<!-- 예약자 정보 -->
	<input type="hidden" id="userId" name="userId" value="${param.userId}">
	<input type="hidden" id="userType" name="userType" value="${param.userType}">
	<input type="hidden" id="resvType" name="resvType" value="${param.resvType}">
	<input type="hidden" id="userNm" name="userNm" value="${param.userNm}">
	<input type="hidden" id="gender" name="gender" value="${param.gender}">
	<input type="hidden" id="ptNo" name="ptNo" value="${param.ptNo}"> <!-- 환자넘버 아이디로변경 -->
	<input type="hidden" id="userBirthDt" name="userBirthDt" value="${param.userBirthDt}">
	<input type="hidden" id="phone" name="phone" value="${param.phone}">
	<input type="hidden" id="zipCd" name="zipCd" value="${param.zipCd}">
	<input type="hidden" id="addr" name="addr" value="${param.addr}">
	<input type="hidden" id="detlAddr" name="detlAddr" value="${param.detlAddr}">
	<input type="hidden" id="selDeptNo" name="selDeptNo" value="${param.selDeptNo}">
	<input type="hidden" id="selDeptCd" name="selDeptCd" value="${param.selDeptCd}">
	<input type="hidden" id="selDeptNm" name="selDeptNm" value="${param.selDeptNm}">
	<input type="hidden" id="emrDeptCd" name="emrDeptCd" value="${param.emrDeptCd}">

	<input type="hidden" id="emrCenterCd" name="emrCenterCd" value="">
	<!-- 의료진 정보 -->
	<input type="hidden" id="selProfNo" name="selProfNo" value="${param.selProfNo}">
	<input type="hidden" id="selEmpNo" name="selEmpNo" value="${param.selEmpNo}">
	<input type="hidden" id="selProfNm" name="selProfNm" value="${param.selProfNm}">
	<input type="hidden" id="selProfUuidNm" name="selProfUuidNm" value="${param.selProfUuidNm}">
	<input type="hidden" id="emrProfCd" name="emrProfCd" value="${param.emrProfCd}">
	<input type="hidden" id="resvAdultYn" name="resvAdultYn" value="${param.resvAdultYn}">
	<!-- 시간 정보 -->
	<input type="hidden" id="schYear" name="schYear" value="${param.schYear}">
	<input type="hidden" id="schMonth" name="schMonth" value="${param.schMonth}">
	<input type="hidden" id="schDate" name="schDate" value="${param.schDate}">
	<input type="hidden" id="resvDd" name="resvDd" value="${param.resvDd}">
	<input type="hidden" id="resvHh" name="resvHh" value="${param.resvHh}">
 
</form>
</body>
</html>