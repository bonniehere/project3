<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>주문 메인 페이지</title>
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <link rel="stylesheet" href="../../resources/css/release/ReleaseMain.css">
    <link rel="stylesheet" href="../../resources/css/release/table.css">
    <script type="text/javascript" src="../../../../resources/js/release/ReleaseMain.js"></script>
    <script type="text/javascript" src="../../../../resources/js/release/table.js"></script>
</head>
<body>
    <div id="wholewrap">
        <div id="topwrap">
            <%@ include file="top.jsp" %>
        </div>
        <div id="leftwrap">
            <%@ include file="left.jsp" %>
        </div>

        <div id="tabViewer" class="tabViewer">
            
            <table class="rwd-table" border="1">
                <tbody>
                    <tr>
                        <th>주문자</th>
                        <th>품목명</th>
                        <th>총가격</th>
                        <th>승인여부</th>
                        
                    </tr>
                    <c:forEach items="${orderlist}" var="board">
                        <tr>
                            <th>${board.no}</th>
                        <th>${board.productname}</th>
                        <th>${board.subtotal}</th>
                        <th>승인버튼</th>
                        </tr>
                    </c:forEach>
                </tbody>
            </table><br>

            <div class="paging">
                <!-- prev(이전)이 true이면 이전버튼 활성화 -->
                <c:if test="${pageMaker.prev}">
                    <a href="/orderlist?pageNum=${pageMaker.startPage-1}&amount=${pageMaker.cri.amount}">이전</a>
                </c:if>

                <!-- begin(1)이 end(10)될 동안 반복(1일 10일 될 동안 반복) -->
                <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="num">
                    <a href="/orderlist?&pageNum=${num}&amount=${pageMaker.cri.amount}">${num}</a>
                </c:forEach>

                <!-- next(다음)이 true이면 다음버튼 활성화 -->
                <c:if test="${pageMaker.next}">
                    <a href="/orderlist?&pageNum=${pageMaker.endPage+1}&amount=${pageMaker.cri.amount}">다음</a>
                </c:if>
            </div>
        </div>
    </div>
</body>
</html>