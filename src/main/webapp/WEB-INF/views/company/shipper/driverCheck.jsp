<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:if test="${result > 0 }">
		<script type="text/javascript">
				alert("주문 상태 변경에 성공하였습니다.")
				location.href="ship_Driver.do";
			
		</script>
	</c:if>
</body>
</html>