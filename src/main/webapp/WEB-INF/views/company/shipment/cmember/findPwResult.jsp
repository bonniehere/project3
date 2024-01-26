<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">

</style>
</head>
<body>
<p></p><p></p><p></p><p></p><p></p><p></p>
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
<div align="center">
<h2 class="title">비밀번호 찾기 결과</h2>
<c:if test="${result == 1 }">
	<table class="table">
		<tr>
			<th class="text-center">임시 비밀번호를 해당 이메일로 전송 하였습니다.</th>
		</tr>
		<tr>
			<th class="text-center" onclick="location.href='loginForm.do'" style="cursor:pointer;">로그인하러 가기</th>
		</tr>
	</table>
</c:if>
<c:if test="${result == -1 }">
	<script type="text/javascript">
		alert("찾을 수 없는 계정입니다. 정보를 확인해주세요.");
		history.go(-1);
	</script>
</c:if>
</div>
<br/><br/><br/><br/><br/><br/><br/><br/>
</body>
</html>