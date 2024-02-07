<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:set var="path" value="${pageContext.request.contextPath }"></c:set>
<script type="text/javascript" src="${path }/resources/js/jquery.js"></script>
<script type="text/javascript" src="${path }/resources/js/scripts.js"></script>
<style type="text/css">
#join {
	color: #324028;
}
table {
    width: 100%;
    max-width: 100%;
    margin-bottom: 1rem;
    background-color: transparent;
    border-spacing: 0;
    border-collapse: collapse;
  }

  th,
  td {
    padding: 0.75rem;
    vertical-align: top;
    border-top: 1px solid #dee2e6;
    text-align: left;
  }

  th {
    background-color: #71a0a5; /* 하늘색 배경색 */
    color: white; /* 글자색 */
  }

  td {
    background-color: #d9edf7; /* 셀 배경색 */
  }

  .container-md {
    margin-top: 5rem;
    margin-bottom: 5rem;
  }
   a {
    text-decoration: none;
    background-color: #71a0a5; /* 버튼 배경색 */
    color: white; /* 버튼 글자색 */
    padding: 10px 20px; /* 원하는 패딩 조절 */
    border-radius: 5px; /* 버튼 모서리 둥글게 */
    font-weight: bold; /* 글자 굵게 */
    transition: background-color 0.3s ease; /* 배경색 전환 효과 */
    margin : 10px;
  }
  #driver {
        width: 200px; /* 너비 조절 */
        padding: 8px; /* 내부 여백 조절 */
        border: 1px solid #ccc; /* 테두리 스타일 및 색상 조절 */
        border-radius: 4px; /* 테두리 모서리 둥글게 조절 */
        font-size: 14px; /* 글자 크기 조절 */
        color: #333; /* 글자 색상 조절 */
        background-color: #f8f8f8; /* 배경색 조절 */
        /* 필요에 따라 추가적인 스타일 조절 */
    }
 #button {
    display: inline-block;
    padding: 10px 20px; /* 원하는 패딩 조절 */
    font-size: 16px; /* 글자 크기 조절 */
    font-weight: bold; /* 글자 굵게 */
    text-align: center;
    text-decoration: none;
    cursor: pointer;
    background-color: #71a0a5; /* 버튼 배경색 */
    color: white; /* 버튼 글자색 */
    border: 1px solid #71a0a5; /* 테두리 스타일 및 색상 조절 */
    border-radius: 5px; /* 테두리 모서리 둥글게 조절 */
    transition: background-color 0.3s ease; /* 배경색 전환 효과 */
    margin: 10px;
}

.button:hover {
    background-color: #0056b3; /* 호버 시 배경색 변경 */
    color: white; /* 호버 시 글자색 변경 */
}   
</style>
<script type="text/javascript">
function openPopup() {
	var popupWidth = 500;
    var popupHeight = 500;
    var left = (screen.width - popupWidth) / 2;
    var top = (screen.height - popupHeight) / 2;

    window.open('orderSelectStaff.do', 'Popup', 'width=' + popupWidth + ', height=' + popupHeight + ', left=' + left + ', top=' + top);
}

function assignDriver() {
    var driverValue = document.getElementById('driver').value;
    var newUrl = 'orderSelectDriver.do?order_no=${m_order.order_no}&m_driver=' + encodeURIComponent(driverValue);
    location.href = newUrl;
}

// 페이지 로딩 시 실행
document.addEventListener('DOMContentLoaded', function() {
    // 기사배정 버튼에 이벤트 리스너 추가
    document.getElementById('assignButton').addEventListener('click', assignDriver);
});

function showAlert() {
    //alert("출고서 출력 기능이 수행됩니다."); // 원하는 메시지로 변경 가능
    window.print();
};

</script>
</head>
<body>

	<div class="container-md mt-5 mb-5">
		
		<div class="row">
			<div class="col col-md-1.5"></div>

			<div class="col col-md-9">
			
					<h2 class="mt-5 text-start" id="join" style="opacity: 0.5">주문</h2>
				<table class="table">	
						
						<tr><th>주문 번호</th><td>${m_order.order_no }</td></tr>
						<tr><th>주문자 이메일</th><td>${m_order.m_email }</td></tr>
						<tr><th>주문 날짜</th><td>${m_order.order_date }</td></tr>
						<tr><th>주문 상태</th><td>${m_order.status }</td></tr>
						<tr><th>주문 상품 코드</th><td>${m_order.productcode }</td></tr>
						<tr><th>환불 여부</th><td>${m_order.refund_chk }</td></tr>
						<tr><th>총가격</th><td>${m_order.total_price }</td></tr>
						<tr><th>주문자 이름</th><td>${m_order.ju_name }</td></tr>
						<tr><th>주문자 연락처</th><td>${m_order.ju_tel }</td></tr>
						<tr><th>주문자 주소</th><td>${m_order.ju_addr }</td></tr>
						<tr><th>주문자 상세주소</th><td>${m_order.ju_addr_detail }</td></tr>
						<tr><th>수령자 이름</th><td>${m_order.su_name }</td></tr>
						<tr><th>수령자 연락처</th><td>${m_order.su_tel }</td></tr>
						<tr><th>수령자 주소</th><td>${m_order.su_addr }</td></tr>
						<tr><th>수령자 상세주소</th><td>${m_order.su_addr_detail }</td></tr>
						<tr>
						<th>출하 기사 배정</th><td><input type="text" readonly id="driver">
						
							<button type="button" onclick="openPopup()" id="button">기사 선택</button>
						
						</td>
						</tr>
						<tr><th>주문 상태 변경</th>
						<td class="text-center" colspan="2">
						<button type="button" id="" class="btn btn-primary"
						onclick="showAlert()">출고서 출력</button>
						<button type="button" id="assignButton" class="btn btn-primary"
						onclick="location.href=''">기사배정</button>
						<button type="button" class="btn btn-primary"
						onclick="location.href='orderCheck2.do?order_no=${m_order.order_no}&order_quantity=${m_order.order_quantity}&productcode=${m_order.productcode}&m_userId=${m_order.m_userId}&total_price=${m_order.total_price}'">출고완료</button>
						<button type="button" class="btn btn-primary"
						onclick="location.href='orderCheck3.do?order_no=${m_order.order_no}'">검품확인 및 배송시작</button>
						<button type="button" class="btn btn-primary"
						onclick="location.href='orderCheck4.do?order_no=${m_order.order_no}'">배송완료</button>
						<button type="button" class="btn btn-danger"
						onclick="location.href='orderCancel.do?order_no=${m_order.order_no}&order_quantity=${m_order.order_quantity}&productcode=${m_order.productcode}&m_userId=${m_order.m_userId}&total_price=${m_order.total_price}'">발송취소(환불)</button>
						</tr>
						
						
						
				</table>	
					<div></div>
			</div>
			<div class="col col-md-1.5"></div>
		</div>
	</div>
	<div style="display: flex; justify-content: center;">
		<a href="orderList.do" style="text-decoration: none;">주문리스트</a>
    	<a href="adminPage.do" style="text-decoration: none;">홈으로</a>
	</div>
</body>
</html>