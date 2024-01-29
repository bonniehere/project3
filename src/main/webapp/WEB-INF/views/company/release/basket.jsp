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
            <h3>${sessionScope.login.m_name}님의 장바구니</h3>
            
            
            
            
            
            <ul class="cart-items" id="cartItems">
    <c:forEach items="${list}" var="item">
        <li id="item-${item.no}">
            <span>제품명: ${item.productname}</span>
            <span>코드: ${item.productcode}</span>
            <span>수량: ${item.quantity}</span>
            <span>단가: ${item.price}</span>
            <span>금액: <span class="subtotal">${item.quantity * item.price}</span></span>
            <input type="hidden" name="productname" value="${item.productname}">
            <input type="hidden" name="productcode" value="${item.productcode}">
            <input type="hidden" name="quantity" value="${item.quantity}">
            <input type="hidden" name="price" value="${item.price}">
            <input type="hidden" name="subtotal" value="${item.quantity * item.price}">
            <input type="hidden" name="m_userId" value="${item.m_userId}">
            
            <button class="remove-from-cart" onclick="removeFromCart(${item.no}, '${item.productcode}', ${item.quantity * item.price})">삭제</button>
        </li>
    </c:forEach>
</ul>
            
            <p class="total1">
          
            총 가격: <span id="totalAmount">0.00</span>&nbsp;&nbsp;원&nbsp;&nbsp;  <button id="orderButton" onclick="placeOrder()" > 주문</button></p>
            
        </div>
    </div>

    <script>
        // 페이지 로드 시 총 가격 계산
        $(document).ready(function () {
        	
        	
        	updateTotalAmount();
            
        });

        // 삭제 버튼 클릭 시 실행되는 함수
        function removeFromCart(no,productname, productcode, subtotal) {
            // AJAX를 사용하여 서버에 정보 전송
        	$.ajax({
        	    type: "POST",
        	    url: "cart_delete",
        	    contentType: "application/json", // 추가된 부분
        	    data: JSON.stringify({ no: no,productname:productname, productcode: productcode, subtotal: subtotal }),
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
        
        //---------------------------------------------주문
        
        //주문하기 함수
        function placeOrder() {
            // 장바구니에 있는 각 상품의 정보를 가져와서 배열에 담습니다.
            var cartItems = [];
            $('.cart-items li').each(function() {
                var item = {
                    m_userId: $(this).find('input[name="m_userId"]').val(),
                    productname: $(this).find('input[name="productname"]').val(),

                    productcode: $(this).find('input[name="productcode"]').val(),
                    quantity: $(this).find('input[name="quantity"]').val(),
                    price: $(this).find('input[name="price"]').val(),
                    subtotal: $(this).find('input[name="subtotal"]').val()
                };
                cartItems.push(item);
            });

            // AJAX를 사용하여 서버에 주문 정보를 전송합니다.
            $.ajax({
                type: "POST",
                url: "order",
                contentType: "application/json",
                data: JSON.stringify(cartItems),
                success: function(response) {
                    console.log("Order placed successfully");
                    // 주문 성공 후, 페이지를 새로고침하거나 다른 작업을 수행할 수 있습니다.
                },
                error: function(error) {
                    console.error("Error placing order:", error);
                }
            });
        }
        
        
    </script>
</body>
</html>
