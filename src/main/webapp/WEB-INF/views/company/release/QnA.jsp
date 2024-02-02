<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>QnA</title>
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
                <tbody>
                    <tr>
                        <th style="width:20%;">작성자id</th>
                        <th style="width:20%;">제목</th>
                        <th>내용</th>
                        <th style="width:15%;">작성날짜</th>
                        
                    </tr>
                    <c:forEach items="${qna}" var="board">
                        <tr>
                           <td>${board.m_userId}</td>
                           <td><a href="WriteDetail?qa_no=${board.qa_no}">${board.qa_subject}</a></td>
                           <td style="max-width:300px;text-overflow:ellipsis; overflow:hidden; white-space:nowrap;">${board.qa_content}</td>
                           <td>${board.reg_date}</td>
                            
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
             
            <div class="paging">
                <!-- prev(이전)이 true이면 이전버튼 활성화 -->
                <c:if test="${pageMaker.prev}">
                    <a href="/QnA?m_userId=${sessionScope.login.m_userId}&pageNum=${pageMaker.startPage-1}&amount=${pageMaker.cri.amount}">이전</a>
                </c:if>

                <!-- begin(1)이 end(10)될 동안 반복(1일 10일 될 동안 반복) -->
                <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="num">
                    <a href="/QnA?m_userId=${sessionScope.login.m_userId}&pageNum=${num}&amount=${pageMaker.cri.amount}">${num}</a>
                </c:forEach>

                <!-- next(다음)이 true이면 다음버튼 활성화 -->
                <c:if test="${pageMaker.next}">
                    <a href="/QnA?m_userId=${sessionScope.login.m_userId}&pageNum=${pageMaker.endPage+1}&amount=${pageMaker.cri.amount}">다음</a>
                </c:if>
            </div>
            <input type="button" class="qna_button" id="button_write" value="글쓰기">
            
        </div>
   

</div>
<script>
    $(document).ready(function() {
        $('#button_write').click(function() {
            // 글쓰기 버튼을 클릭하면 실행되는 함수
            $.ajax({
                url: 'write_button', // 글쓰기 페이지의 경로
                type: 'GET',
                success: function(data) {
                    // 서버로부터 응답을 받아 tabViewer 내용을 업데이트
                    $('#tabViewer').html(data);
                },
                error: function(xhr, status, error) {
                    console.log('Error:', error);
                }
            });
        });
    });
</script>

</body>
</html>