<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@page import="com.constant01.model.CMember"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배송 완료</title>
</head>
<body>
	<% 
			CMember customer = (CMember)session.getAttribute("login");
			String userId = request.getParameter("m_userId");
			String userPw = request.getParameter("m_userPw");
			String driverNm = request.getParameter("m_name");
			String driverPhone = request.getParameter("m_phone");
		%>
	

<c:if test="${result > 0 }">
		<script type="text/javascript">
				alert("주문 상태 변경에 성공하였습니다.")
				location.href="Drivermap.do?m_name=<%=customer.getM_name()%>";
			
		</script>
	</c:if>
	


</body>
</html>