<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>재고 현황</title>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<style type="text/css">
#join {
	color: #324028;
}
.table th, .table td {
  text-align: center; /* 텍스트 중앙 정렬 */
  vertical-align: middle; /* 세로 중앙 정렬 */
}

.table th {
  background-color: #007bff; /* 테이블 헤더 배경 색상 */
  color: #fff; /* 테이블 헤더 글자 색상 */
}

.table td, .table th {
  border: 1px solid #dee2e6; /* 테이블 테두리 스타일 */
  padding: .75rem; /* 셀 내부 여백 */
}

.table thead th {
  vertical-align: middle; /* 테이블 헤더 세로 중앙 정렬 */
}
a {
  display: inline-block;
  padding: 10px 15px;
  margin: 5px;
  color: #007bff;
  border: 1px solid #007bff;
  text-decoration: none;
  border-radius: 100px;
}
a:hover {
  background-color: #007bff;
  color: #fff;
}
ul {
  list-style-type: none;
}
 ul {
            display: flex;
            list-style-type: none; /* 리스트 기본 스타일 제거 */
            padding: 0; /* 리스트 패딩 제거 */
        }

        /* 각 리스트 아이템 스타일 */
        li {
            margin: 5px; /* 각 리스트 아이템 간 여백 */
            padding: 10px;

        }
        .pagination .page-item.active .page-link {
    background-color: #007bff; /* 현재 페이지 배경 색상 */
    color: #fff; /* 현재 페이지 텍스트 색상 */
}

.pagination .page-link {
    color: #007bff; /* 페이지 링크 텍스트 색상 */
}

.pagination .page-link:hover {
    background-color: #007bff; /* 페이지 링크 호버시 배경 색상 */
    color: #fff; /* 페이지 링크 호버시 텍스트 색상 */
}
#gohome{
	text-decoration: none; color: #007bff; font-weight: bold;
}
.button {
  display: inline-block;
  padding: 8px 16px;
  font-size: 16px;
  text-align: center;
  text-decoration: none;
  outline: none;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  transition: background-color 0.3s;
}

/* 버튼의 기본 배경색과 글자색 */
.button-default {
  background-color: #007bff;
  color: #ffffff;
}

/* 버튼 호버 시 배경색과 글자색 */
.button-default:hover {
  background-color: #0056b3;
}

/* +, - 버튼에 적용할 스타일 */
.product_plus,
.product_minus {
  width: 32px;
  height: 32px;
  font-size: 20px;
  line-height: 1;
  text-align: center;
  background-color: #007bff;
  color: #ffffff;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

/* +, - 버튼 호버 시 배경색과 글자색 변경 */
.product_plus:hover,
.product_minus:hover {
  background-color: #0056b3;
</style>
</head>
<body>

	<div class="container-md mt-5 mb-5">
	
		<div class="row justify-content-center">
			<div class="col col-md-1.5"></div>

			<div class="col col-md-9">
			
					<h2 class="mt-5 text-start" id="join" style="opacity: 0.5">재고 현황</h2>
				<table class="table">	
						<tr><th>제품코드</th><th>상품명</th><th>물품창고타입</th>
							<th>규격</th><th>단위</th><th>재고수량</th>
							<th>단가</th><th>제조원</th><th>이미지</th><th>상세보기</th></tr>
					<c:forEach var="bdList" items="${bdList }">
						<tr><th>${bdList.productcode}</th>
						<td>${bdList.productname }</td>
						<td>${bdList.classificationcode }</td>
						<td>${bdList.standard }</td>
						<td>${bdList.unit }</td>
						<td>${bdList.quantity }<br> 
							<button class="product_plus" onclick="increaseAmount(this)">+</button>
						    <span class="amount">0</span>
						    <button class="product_minus" onclick="decreaseAmount(this)">-</button>
						    <button class="product_add" data-productcode="${bdList.productcode}" onclick="updateQuantity(this)">반영</button>
	                    </td>
						<td>${bdList.price }</td>
						<td>${bdList.manufacturer }</td>
						<td>
                        	<img src="../../resources/img/release/${bdList.productcode}.png" style="width:40px;height:40px;">
                        </td>
						<td class="product_link">
                            <a href="javascript:void(window.open('/release/detail?productcode=${bdList.productcode}', 'name','width = 700, height = 700, top = 100, left = 600, location = no'))">
                                상세보기
                            </a>
                        </td>
                            </tr>
						
					</c:forEach>
				</table>	<nav aria-label="..." id="page_btn">
			<ul class="pagination pagination-lg justify-content-center">
				<!-- 시작페이지가 pagePerBlock(10)보다 크면 앞에 보여줄 페이지가 있다 -->
				<c:if test="${pb.startPage > pb.pagePerBlock }">
					<li class="page-item"><a href="boardList.do?pageNum=1"
							class="page-link"><span aria-current="page"></span></a></li>
					<li class="page-item"><a href="boardList.do?pageNum=${pb.startPage - 1 }"
						class="page-link"><span aria-current="page"></span></a></li>
				</c:if>
				<c:forEach var="i" begin="${pb.startPage }" end="${pb.endPage }">
					<!-- 현재 머물고 있는 페이지가 몇 페이지인지 구별할 때 -->
					<c:if test="${pb.currentPage == i }">
						<li class="page-item"><a href="boardList.do?pageNum=${i }"
							class="page-link" style=" background-color: #007bff; color: #fff;">ㅤ${i}ㅤ</a></li>
					</c:if>
					<c:if test="${pb.currentPage != i }">
						<li class="page-item"><a href="boardList.do?pageNum=${i }"
							class="page-link">ㅤ${i}ㅤ</a></li>
					</c:if>
				</c:forEach>
				<!-- 보여줄 페이지가 뒤에 남아있는 경우(다음 버튼 활성화)=> endPage < totalPage인 경우 -->
				<c:if test="${pb.endPage < pb.totalPage }">
					<li class="page-item"><a href="boardList.do?pageNum=${pb.endPage + 1 }"
						class="page-link"><span aria-current="page"></span>
					</a></li>
					<li class="page-item"><a href="boardList.do?pageNum=${pb.totalPage }"
						class="page-link"><span aria-current="page"></span>
					</a></li>
				</c:if>
			</ul>
		</nav>	
					<div></div>
			</div>
			<div class="col col-md-1.5"></div>
		</div>
	</div>
	<div style="display: flex; justify-content: center;">
    <a href="adminPage.do" style="text-decoration: none;">홈으로</a>
	</div>
<script type="text/javascript">
let currentAmount = 0;

//+ 버튼 클릭 시 호출되는 함수
function increaseAmount(button) {
	currentAmount++;
	updateAmountDisplay(button);
}

//- 버튼 클릭 시 호출되는 함수
function decreaseAmount(button) {
	currentAmount--;
	updateAmountDisplay(button);
}

//반영 버튼 클릭 시 호출되는 함수
function updateQuantity(button) {
	 const productCode = button.getAttribute('data-productcode');
	    const data = {
	    		productcode: productCode,
	        	quantity: currentAmount
	 	};
	    // AJAX를 사용하여 서버로 데이터 전송
	    $.ajax({
	        type: 'put',
	        url: '/company/updateQuantity', // 실제 서버 엔드포인트에 맞게 변경
	        contentType: 'application/json',
	        data: JSON.stringify(data),
	        dataType : "json",
	        success: function(response) {
	            // 서버로부터의 응답 처리
	            console.log('서버 응답:', response);
	            // 서버에서 반환한 문자열 값을 정수로 변환
	            
	            // 성공적으로 서버에 반영되었다면 수량 초기화 및 화면 업데이트
	            currentAmount = 0;
	            updateAmountDisplay(button);

	            // result가 1이면 알림창을 띄우고 페이지를 새로고침
	            if (response === 1) {
	                alert('수량이 성공적으로 업데이트되었습니다.');
	                location.reload(); // 페이지 새로고침
	            }
	        },
	        error: function(error) {
	            // 서버 전송 중 에러 처리
	            console.error('서버 전송 중 에러:', error);
	        }
	    });
}
//amount를 업데이트하고 화면에 표시하는 함수
function updateAmountDisplay(button) {
 const amountElement = button.parentNode.querySelector('.amount');
 amountElement.textContent = currentAmount;
}

</script>

</body>
</html>