<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠폰확인페이지</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<style>
        /* 각 쿠폰 행에 대한 스타일링 */
        .coupon-row {
            border: 1px solid #ccc;
            margin-bottom: 10px;
            padding: 10px;
            background-color: #f9f9f9;
        }
        
        /* 사용가능한 쿠폰에 대한 스타일링 */
        .usable-coupon {
            color: green;
        }
        
        /* 사용불가능한 쿠폰에 대한 스타일링 */
        .unusable-coupon {
            color: red;
        }
        
        /* 쿠폰 적용 버튼의 기본 스타일 */
    .apply-coupon-button {
        background-color: #4CAF50; /* 버튼 배경색 */
        border: none; /* 테두리 없음 */
        color: white; /* 글자색 */
        padding: 10px 20px; /* 내부 여백 */
        text-align: center; /* 가운데 정렬 */
        text-decoration: none; /* 밑줄 없음 */
        display: inline-block; /* 인라인 블록 요소로 표시 */
        font-size: 16px; /* 글꼴 크기 */
        margin: 4px 2px; /* 바깥쪽 여백 */
        cursor: pointer; /* 마우스 커서 모양 */
        border-radius: 5px; /* 버튼 모서리 둥글게 */
    }

    /* 쿠폰 적용 버튼의 호버 효과 */
    .apply-coupon-button:hover {
        background-color: #45a049; /* 호버 시 배경색 변경 */
    }
    </style>
</head>
<body>

  <c:forEach items="${coupon}" var="coupon">
        <div class="coupon-row">
            <table>
                <tr>
                    <td>쿠폰번호: ${coupon.coupon_no}</td>
                    </tr>
                    <tr>
                    <td>쿠폰명: ${coupon.coupon_type}</td>
                    </tr>
                    <tr>
                    <td>사용상태: 
                        <c:if test="${coupon.coupon_use eq 'n'}">
                            <span class="usable-coupon">사용가능</span>
                        </c:if>
                        <c:if test="${coupon.coupon_use ne 'n'}">
                            <span class="unusable-coupon">사용불가</span>
                        </c:if>
                    </td>
                    </tr>
                    <tr>
                    <td>유효기간: ${coupon.coupon_max_date}</td>
                    </tr>
                    <tr>
                    <td>할인율: ${coupon.use_price}%</td>
                </tr>
                 <tr>
                <!-- 각 쿠폰에 적용 버튼 -->
                <c:if test="${coupon.coupon_use eq 'n'}">
                <td><button class="apply-coupon-button" onclick="applyCoupon(${coupon.use_price},'${coupon.m_userId}',${coupon.coupon_no})">쿠폰 적용</button>
</td>
                 </c:if>
            </tr>
            </table>
        </div>
    </c:forEach>
    <script>
    // 쿠폰을 장바구니에 적용하는 함수
    function applyCoupon(use_price,m_userId,coupon_no) {
        // AJAX 요청을 보냄
        $.ajax({
            type: "POST",
            url: "applyCoupon", // 데이터를 처리할 JSP 파일 경로
            data: {use_price: use_price,
            	m_userId : m_userId,
            	coupon_no : coupon_no
            },
            success: function(response) {
                // 성공적으로 처리되면 적절한 메시지를 사용자에게 표시하거나 필요한 작업을 수행
                alert("쿠폰을 적용하였습니다.");
                // 부모 창(장바구니 페이지) 새로 고침
                window.opener.location.reload();
                // 팝업 창 닫기
                window.close();
            },
            error: function(xhr, status, error) {
                // 오류가 발생하면 적절한 처리를 수행
                console.error("오류 발생:", error);
            }
        });
    }
</script>
    
</body>
</html>