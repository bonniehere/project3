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

<style>
    #qna_deleteButton {
        background-color: #f44336; /* 빨간색 배경색 */
        color: white; /* 흰색 텍스트 */
        padding: 10px 20px; /* 내부 여백 설정 */
        border: none; /* 테두리 없음 */
        cursor: pointer; /* 커서 모양 변경 */
        border-radius: 5px; /* 버튼 모서리를 둥글게 만듭니다. */
    }

    #qna_deleteButton:hover {
        background-color: #d32f2f; /* 마우스 호버 시 색상 변경 */
    }
    
    
</style>


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
        <p><a href="/logout" id="logout">로그아웃</a></p>
        
        <input type="hidden" name="sessionId" value="${sessionScope.login.m_userId}">
    </c:when>
    <c:otherwise>
        로그인을 해주세요.
    </c:otherwise>
</c:choose>
    
       
            <%@ include file="left.jsp" %>
        </div>

<form action="qna_delete" method="post">
        <div id="tabViewer" class="tabViewer">

                    <table class="rwd-table" border="1">
                <c:forEach items="${detail}" var="detail">
       
        <tr>
					<td>
					제목 : ${detail.qa_subject}
				   </td>
				</tr>
				<tr style="border:none;">
					<td><textarea rows="20" cols="150" readonly>${detail.qa_content}</textarea></td>
				</tr>
				<tr id="deleteRow" style="border:none;">
				<td><input type="submit" id="qna_deleteButton" value="문의삭제">
				<input type="hidden" name="qa_no" value="${detail.qa_no}">
				
				</td>
				</tr>

    </c:forEach>
            </table><br>
</form>
            <p>관리자 답변시 아래 답변이 달립니다.</p>
            <p>답변이 달릴경우 문의 글을 삭제할 수 없습니다.</p>
            <table class="rwd-table" border="1">
            <c:forEach items="${detail_answer}" var="detail">
       
        
				<tr>
					<td>답변:<textarea rows="20" cols="150" readonly>${detail.qar_content}</textarea></td>
				</tr>

    </c:forEach>
            </table><br>
            
            
            
            </div>
            </div>
            <script>
    // 문의 삭제 버튼을 답변이 달린 경우에만 보이도록 설정
    const deleteButton = document.getElementById('qna_deleteButton');
    const deleteRow = document.getElementById('deleteRow');

    // 답변이 있는 경우에만 버튼을 보이도록 설정
    if (${detail_answer != null && not empty detail_answer}) {
        deleteRow.style.display = 'none';
    } else {
        deleteRow.style.display = 'block';
    }
</script>
           
           
           
</body>
</html>