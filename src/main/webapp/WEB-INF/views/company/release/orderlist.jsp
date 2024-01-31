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
                    <th>주문날짜</th>
                        <th>받는사람</th>
                        <th>이미지</th>                      
                        <th>품목명</th>
                        <th>단가</th>
                        
                        <th>주문수량</th>
                        <th>총가격</th>
                        <th>승인여부</th>
                        <th>주문삭제</th>
                        
                    </tr>
                    <c:forEach items="${orderlist}" var="board">
                        <tr>
                        <th>${board.order_date}</th>
                            <th>${board.SU_name}</th>
                        <th><img src="../../resources/img/release/${board.productcode}.png" style="width:40px;height:40px;"></th>
                        <th>
                        <a href="javascript:void(window.open('/release/detail?productcode=${board.productcode}', 'name','width = 700, height = 700, top = 100, left = 600, location = no'))">
                                    ${board.productname}</a>
                                    </th>
                        <th>${board.price}</th>
                        <th>${board.order_quantity}</th>
                        <th>${board.total_price}</th>
                        <th>${board.confirm}</th>
                        <th>
        <button class="delete-button" onclick="deleteOrder('${board.order_no}')">주문취소</button>
    </th>
                        </tr>
                    </c:forEach>
                </tbody>
            </table><br>

            <div class="paging">
                <!-- prev(이전)이 true이면 이전버튼 활성화 -->
                <c:if test="${pageMaker.prev}">
                    <a href="/orderlist?m_userId=${sessionScope.login.m_userId}&pageNum=${pageMaker.startPage-1}&amount=${pageMaker.cri.amount}">이전</a>
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

<script>
function deleteOrder(order_no) {
    if (confirm('정말로 주문을 취소하시겠습니까?')) {
        $.ajax({
            type: 'POST',
            url: '/deleteOrder', // 적절한 URL로 변경해야 합니다.
            data: {
                order_no: order_no
            },
            success: function(response) {
                alert('주문이 취소되었습니다.');
                window.location.reload();
            },
            error: function(xhr, status, error) {
                console.error('주문 취소 중 오류가 발생했습니다:', error);
            }
        });
    }
}


</script>
</html>