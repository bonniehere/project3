<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>detail</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<link rel="stylesheet" href="../../resources/css/release/ReleaseMain.css">
<link rel="stylesheet" href="../../resources/css/release/table.css">
</head>
<body>
<div id="wholewrap">
        <div id="topwrap">
            <%@ include file="top.jsp" %>
        </div>
        <div id="leftwrap">
        
        <c:choose>
    <c:when test="${not empty sessionScope.login}">
        <p>${sessionScope.login.m_name}님 환영합니다.</p>
        <p><a href="/logout">로그아웃</a></p>
        
        <input type="hidden" name="sessionId" value="${sessionScope.login.m_userId}">
    </c:when>
    <c:otherwise>
        로그인을 해주세요.
    </c:otherwise>
</c:choose>
    
       
            <%@ include file="left.jsp" %>
        </div>


        <div id="tabViewer" class="tabViewer">

                    <table class="rwd-table" border="1">
                <c:forEach items="${detail}" var="detail">
       
        <tr>
					<td>
					제목 : ${detail.qa_subject}
				   </td>
				</tr>
				<tr>
					<td><textarea rows="20" cols="150" readonly>${detail.qa_content}</textarea></td>
				</tr>

    </c:forEach>
            </table><br>
            <p>관리자 답변시 아래 답변이 달립니다.</p>
            <table class="rwd-table" border="1">
            <c:forEach items="${detail_answer}" var="detail">
       
        
				<tr>
					<td>답변:<textarea rows="20" cols="150" readonly>${detail.qar_content}</textarea></td>
				</tr>

    </c:forEach>
            </table><br>
            
            
            
            </div>
            </div>
           
</body>
</html>