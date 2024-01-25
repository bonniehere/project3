<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" href="../../resources/css/release/basket.css">
    <script type="text/javascript" src="../../../../resources/js/release/basket.js"></script>
    <title>쇼핑몰 장바구니</title>
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    
</head>
<body>
    <div class="cart">
        <div class="cart-content">
            <h3>장바구니</h3>
            <ul class="cart-items" id="cartItems">
                <c:forEach items="${list}" var="item">
                    <li id="item-${item.no}">
             제품명: ${item.productname} 
                        코드: ${item.productcode} 
                        수량: ${item.quantity} 
                        단가: ${item.price}
                        금액: <span class="subtotal">${item.quantity * item.price}</span>
                        <button class="remove-from-cart" onclick="removeFromCart(${item.no}, '${item.productcode}', ${item.quantity * item.price})">삭제</button>
                    </li>
                </c:forEach>
            </ul>
            <p class="total1">총 가격: <span id="totalAmount">0.00</span></p>
        </div>
    </div>

    <script>
        // 페이지 로드 시 총 가격 계산
        $(document).ready(function () {
            updateTotalAmount();
        });

        // 삭제 버튼 클릭 시 실행되는 함수
        function removeFromCart(no, productcode, subtotal) {
            // AJAX를 사용하여 서버에 정보 전송
        	$.ajax({
        	    type: "POST",
        	    url: "cart_delete",
        	    contentType: "application/json", // 추가된 부분
        	    data: JSON.stringify({ no: no, productcode: productcode, subtotal: subtotal }),
        	    success: function(response) {
        	        console.log(`Product ${productcode} removed successfully`);
        	        $(`#item-${no}`).remove();
        	        updateTotalAmount();
        	        window.location.reload();
        	    },
        	    error: function(error) {
        	        console.error(`Error removing product ${productcode}:`, error);
        	    }
        	});

        }

        // 총 가격 업데이트 함수
        function updateTotalAmount() {
            let totalAmount = 0;
            $('.subtotal').each(function() {
                totalAmount += parseFloat($(this).text()) || 0;
            });
            $('#totalAmount').text(totalAmount.toFixed(2));
            
        }
    </script>
</body>
</html>
