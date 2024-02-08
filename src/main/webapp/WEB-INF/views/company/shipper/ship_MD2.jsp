<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.deliverytable {
    height: 200px;
    width: 400px; /* 원하는 너비로 조정합니다 */
    margin-left: 700px;
    margin-top: 60px;
    overflow-y: auto; /* 수직 스크롤바 표시 */
}

.cute-table {
    border-collapse: collapse;
    width: 100%;
}

.cute-table table {
    font-family: 'Arial', sans-serif;
    border: 1px solid #dddddd;
    text-align: center;
    width: 100%;
}

.cute-table th, .cute-table td {
    padding: 8px;
    border-bottom: 1px solid #dddddd;
    text-align: center;
}

.cute-table th {
    background-color: #f2f2f2;
    text-align: center;
}

</style>
</head>
<body>
<div class="deliverytable">
    <table class="cute-table">
        <tr>
            <th width="100px;">주문 번호</th>
            <th width="100px;">받는 사람</th>
            <th>배송 목적지</th>
        </tr>
        <c:forEach items="${m_order}" var="delist">
            <tr>
                <td>${delist.order_no}</td>
                <td>${delist.su_name}</td>
                <td>${delist.ju_addr}</td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
