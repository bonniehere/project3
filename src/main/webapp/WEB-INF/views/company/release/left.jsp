<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>사이드바 메뉴</title>
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:100,300,400,500,700,900&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="../../resources/css/release/left.css">
</head>
<body>
<div class="menu">
    
    <ul>
        <li><a href="release" class="item"><div>제품주문</div></a></li>
        <li><a href="orderlist?m_userId=${sessionScope.login.m_userId}" class="item"><div>주문현황</div></a></li>
<%--         <li><a href="../company/shipper/ship_Customer?m_userId=${sessionScope.login.m_userId}" class="item"><div>배송관리</div></a></li> --%>
        <li><a href="list?m_userId=${sessionScope.login.m_userId}" class="item"><div>장바구니</div></a></li>
        <li><a href="QnA?m_userId=${sessionScope.login.m_userId}" class="item"><div>Q&A</div></a></li>
        <li><a href="myInfo?m_userId=${sessionScope.login.m_userId}" class="item"><div>내정보변경</div></a></li>
        
    </ul>
</div>
    
</body>

</html>