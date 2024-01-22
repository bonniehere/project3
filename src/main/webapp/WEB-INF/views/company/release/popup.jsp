<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
123
<c:forEach items="${detail}" var="detail">
<tr>
<td>${detail.productcode}
</td>
<td>${detail.productname}
</td>
<td>이미지</td>
<td>${detail.standard}</td>
<td>${detail.unit}</td>
<td>${detail.price}</td>
<td>${detail.manufacturer}</td>

</tr>
</c:forEach>
</body>
</html>