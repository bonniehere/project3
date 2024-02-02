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
            <div id="tabViewer-tabMenu" class="tabViewer-tabMenu">
                <input type="button" value="All" class="tabViewer-tab active" onclick="location.href='/release';">
                <input type="button" value="의료소모품" class="tabViewer-tab active" onclick="location.href='/table2';">
                <input type="button" value="진단기구" class="tabViewer-tab active" onclick="location.href='/table3';">
                <input type="button" value="검사/시약제품" class="tabViewer-tab active" onclick="location.href='/table4';">
                <input type="button" value="소독/의약제품" class="tabViewer-tab active" onclick="location.href='/table5';">
            </div>
            <table class="rwd-table" border="1">
                <tbody>
                    <tr>
                        <th>제품코드</th>
                        <th>품목명</th>
                        <th>이미지</th>
                        <th>규격</th>
                        <th>단위</th>
                        <th>주문수량</th>
                        <th>단가</th>
                        <th>제조원</th>
                    </tr>
                    <c:forEach items="${boardlist}" var="board">
                        <tr>
                            <td class="productcode" data-productcode="${board.productcode}">${board.productcode}</td>
                            <td class="productname" data-productname="${board.productname}" style="display:none;">${board.productname}</td>
                            <td class="product_link">
                                <a href="javascript:void(window.open('/release/detail?productcode=${board.productcode}', 'name','width = 700, height = 700, top = 100, left = 600, location = no'))">
                                    ${board.productname}
                                </a>
                            </td>
                            <td>
                                <img src="../../resources/img/release/${board.productcode}.png" style="width:40px;height:40px;">
                            </td>
                            <td>${board.standard}</td>
                            <td>${board.unit}</td>
                            <td class="table_row">
                                <button class="product_plus">+</button>
                                <span class="ammount">0</span>
                                <button class="product_minus">-</button>
                                <button class="product_add" data-productcode="${board.productcode}">담기</button>
                                <span class="price">${board.price}</span>
                                <span class="product_name">${board.productname}</span>
                                <span class="total">0</span>
                            </td>
                            <td>${board.price}</td>
                            <td>${board.manufacturer}</td>
                            
                        </tr>
                    </c:forEach>
                </tbody>
            </table><br>
           

            <div class="paging">
                <!-- prev(이전)이 true이면 이전버튼 활성화 -->
                <c:if test="${pageMaker.prev}">
                    <a href="/release?pageNum=${pageMaker.startPage-1}&amount=${pageMaker.cri.amount}">이전</a>
                </c:if>

                <!-- begin(1)이 end(10)될 동안 반복(1일 10일 될 동안 반복) -->
                <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="num">
                    <a href="/release?&pageNum=${num}&amount=${pageMaker.cri.amount}">${num}</a>
                </c:forEach>

                <!-- next(다음)이 true이면 다음버튼 활성화 -->
                <c:if test="${pageMaker.next}">
                    <a href="/release?&pageNum=${pageMaker.endPage+1}&amount=${pageMaker.cri.amount}">다음</a>
                </c:if>
            </div>
        </div>
    </div>
    <script>
        const plusButtons = document.querySelectorAll('.product_plus');
        const minusButtons = document.querySelectorAll('.product_minus');
        const addButtons = document.querySelectorAll('.product_add');
        const amounts = document.querySelectorAll('.ammount');
        const prices = document.querySelectorAll('.price');
        const totals = document.querySelectorAll('.total');
        
        const productCodes = document.querySelectorAll('.productcode');
        const productNames = document.querySelectorAll('.productname');

        const sessionId = document.querySelector('input[name="sessionId"]').value;
        
        
        
        
        
        
        
        
        
        
        plusButtons.forEach((button, index) => {
            button.addEventListener('click', () => {
                const amountElement = amounts[index];
                const priceElement = prices[index];
                const totalElement = totals[index];

                let amount = parseInt(amountElement.textContent);
                amount += 1;
                amountElement.textContent = amount;

                let price = parseInt(priceElement.textContent);
                let total = amount * price;

                totalElement.textContent = formatCurrency(total);
            });
        });

        function formatCurrency(amount) {
            return new Intl.NumberFormat('ko-KR', { style: 'currency', currency: 'KRW' }).format(amount);
        }

        minusButtons.forEach((button, index) => {
            button.addEventListener('click', () => {
                const amountElement = amounts[index];
                const priceElement = prices[index];
                const totalElement = totals[index];

                let amount = parseInt(amountElement.textContent);
                if (amount > 0) {
                    amount -= 1;
                    amountElement.textContent = amount;

                    let price = parseInt(priceElement.textContent);
                    let total = amount * price;

                    totalElement.textContent = formatCurrency(total);
                }
            });
        });

        addButtons.forEach((button, index) => {
            button.addEventListener('click', () => {
                const amountElement = amounts[index];
                const priceElement = prices[index];
                const totalElement = totals[index];

                let amount = parseInt(amountElement.textContent);
                let price = parseInt(priceElement.textContent);
                

                // 이제 해당 행의 productcode를 읽어올 수 있습니다.
                const productcode = productCodes[index].getAttribute('data-productcode');
                const productname = productNames[index].getAttribute('data-productname');
                

                addToCart({
                	m_userId: sessionId,
                	productname: productname,
                    productcode: productcode,
                    quantity: amount,
                    price: price
                });
                
                function resetamount(){
              	  amount = 0;
              	let total = 0;
              	  amountElement.textContent = amount;
              	totalElement.textContent = total;
              	
                };
                
                resetamount();
                add_alert();
            });
        });

        function addToCart(cartData) {
            $.ajax({
                type: "POST",
                url: "cart_add",
                contentType: "application/json",
                data: JSON.stringify(cartData),
                success: function (response) {
                    console.log("Product added to cart successfully");
                },
                error: function (error) {
                    console.error("Error adding product to cart:", error);
                }
            });
        }
        function add_alert(){
        	alert("장바구니에 해당 물품이 들어갔습니다.")
        }
    </script>
</body>
</html>