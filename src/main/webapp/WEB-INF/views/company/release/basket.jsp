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
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    
    
</head>
<body>
<div id="input_wrap">
<h3>배송정보 세부입력</h3>
<input type="text" id="name" name="name" class="input-field" placeholder="수령자이름"><br>
<input type="text" id="phone" name="phone" class="input-field" placeholder="수령자연락처">


<div class="address-search-container">
<div class="address-search-wrapper">
<input type="text" id="zipCd" name="m_zipCd" class="input-field" placeholder="우편번호">
<input type="button"  class="address-search-button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
 </div>
 <div class="address-search-wrapper">
<input type="text" id="addr" name="m_addr" class="input-field" placeholder="주소"><br>
<input type="text" id="detlAddr" name="m_addr_detail" class="input-field" placeholder="상세주소">
<input type="text" id="sample6_extraAddress" class="input-field"  placeholder="참고항목">
</div>
</div>
</div>


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
                    subtotal: $(this).find('input[name="subtotal"]').val(),
                    name: $('#name').val(), // 사용자가 입력한 수령자 이름
                    phone: $('#phone').val(), // 사용자가 입력한 수령자 연락처
                    zipCd: $('#zipCd').val(), // 사용자가 입력한 우편번호
                    addr: $('#addr').val(), // 사용자가 입력한 주소
                    addr_detail: $('#detlAddr').val() // 사용자가 입력한 상세주소
                    
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
        
        //--------------------------------------------------------------------------------------------------
        // 상세입력
        
        //주소입력 (다음)
        
       function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('zipCd').value = data.zonecode;
                document.getElementById("addr").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("detlAddr").focus();
            }
        }).open();
    }
    </script>
</body>
</html>
