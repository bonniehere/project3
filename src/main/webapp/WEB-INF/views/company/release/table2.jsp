<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문 메인 페이지</title>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
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
<!-- 분류코드 추가 -->




</tr>
<c:forEach items="${boardlist2}" var="boardlist">
<tr>
<td>${boardlist.productcode}
</td>
<td><a href="javascript:void(window.open('/release/detail?productcode=${boardlist.productcode}', 'name','width = 700, height = 700, top = 100, left = 600, location = no'))">${boardlist.productname}</a>
</td>
<td>이미지</td>
<td>${boardlist.standard}</td>
<td>${boardlist.unit}</td>
<td class="table_row">

       
          <button class="product_plus">+</button>
          <span class="ammount">0</span>
          <button class="product_minus">-</button>
				

</td>
<td>${boardlist.price}</td>
<td>${boardlist.manufacturer}</td>

</tr>
</c:forEach>
<%-- <td class="subject"><a href="http://localhost:8080/board/detail?bno=${boardlist.bno}">${boardlist.title}</a></td> --%>
</tbody>
</table><br>



<div class="paging">
<!-- prev(이전)이 true이면 이전버튼 활성화 -->
<c:if test="${pageMaker.prev}">
	<a href="/table2?pageNum=${pageMaker.startPage-1}&amount=${pageMaker.cri.amount}">이전</a>
</c:if>

<!-- begin(1)이 end(10)될 동안 반복(1일 10일 될 동안 반복) -->
<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="num">
 	<a href="/table2?&pageNum=${num}&amount=${pageMaker.cri.amount}">${num}</a>
</c:forEach>

<!-- next(다음)이 true이면 다음버튼 활성화 -->
<c:if test="${pageMaker.next}">
	<a href="/table2?&pageNum=${pageMaker.endPage+1}&amount=${pageMaker.cri.amount}">다음</a>
</c:if>



<%-- <c:if test="${sessionScope.login.id ne null}"> --%>
<!-- <input type="button" value="글쓰기" onclick="location.href='http://localhost:8080/write'"> -->
<%-- </c:if> --%>
</div>

</div>

</div>
 <script>
const plusButtons = document.querySelectorAll('.product_plus')
const minusButtons = document.querySelectorAll('.product_minus')

plusButtons.forEach((button) => {
  button.addEventListener('click', () => {
    const parent = button.closest('.table_row') // 버튼의 부모 요소인 .table_row를 찾음
    const amountElement = parent.querySelector('.ammount') // 부모 요소 내에서 .ammount 요소를 찾음

    // 현재 ammount 값을 가져와서 1을 더한 후 다시 적용
    let amount = parseInt(amountElement.textContent)
    amount += 1
    amountElement.textContent = amount
  })
})

minusButtons.forEach((button) => {
  button.addEventListener('click', () => {
    const parent = button.closest('.table_row') // 버튼의 부모 요소인 .table_row를 찾음
    const amountElement = parent.querySelector('.ammount') // 부모 요소 내에서 .ammount 요소를 찾음

    
    let amount = parseInt(amountElement.textContent)
    if(amount>0){
    amount -= 1
    amountElement.textContent = amount
    }
  })
})





</script>
</body>
</html>