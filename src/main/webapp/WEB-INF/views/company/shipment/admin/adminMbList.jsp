<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 목록</title>
<c:set var="path" value="${pageContext.request.contextPath }"></c:set>
<script type="text/javascript" src="${path }/resources/js/jquery.js"></script>
<script type="text/javascript" src="${path }/resources/js/scripts.js"></script>
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
<!-- 추가 -->
.pagination .page-item.active-page .page-link {
  background-color: #007bff; /* 현재 페이지 배경 색상 */
  color: #fff; /* 현재 페이지 텍스트 색상 */
}

.pagination .page-link:hover {
  background-color: #007bff; /* 페이지 링크 호버시 배경 색상 */
  color: #fff; /* 페이지 링크 호버시 텍스트 색상 */
}
</style>

</head>
<body>
	<div class="container-md mt-5 mb-5">
		<p></p>
		<p></p>
		<p></p>
		<p></p>
		<p></p>
		<p></p>
		<br /> <br /> <br /> <br /> <br />
		<div class="row">
			<div class="col col-md-1.5"></div>

			<div class="col col-md-9">
			
					<h2 class="mt-5 text-start" id="join" style="opacity: 0.5">회원 목록</h2>
				<table class="table">	
						<tr><th>병원명</th>
							<th>아이디</th>
							<th>이메일</th><th>담당자</th><th>휴대전화번호</th><th>전화번호</th><th>우편번호</th><th>주소</th>
							<th>가입일자</th><th>누적금액</th><th>회원구분</th><th>탈퇴여부</th>
							<th>상세정보</th></tr>
					<c:forEach var="mb" items="${mbList }">
						<tr><th>${mb.m_hspNm}</th>
						<td>${mb.m_userId }</td>
						<td>${mb.m_email }</td>
						<td>${mb.m_name }</td>
						<td>${mb.m_phone }</td>
						<td>${mb.m_tel }</td>
						<td>${mb.m_zipCd }</td>
						<td>${mb.m_addr }</td>
						<td>${mb.join_date }</td>
						<td>${mb.amount }</td>
						<td>${mb.m_userStat }</td>
						<td>${mb.del }</td>
						<td><button type="button" class="btn btn-info" 
						onclick="location.href='adminMbView.do?m_userId=${mb.m_userId}' ">
						상세정보</button></td>
						</tr>
						
					</c:forEach>
				</table>
				
		<div style="display: flex; justify-content: center;">		
		<nav aria-label="..." id="page_btn">
			<ul class="pagination pagination-lg justify-content-center" >
				<!-- 시작페이지가 pagePerBlock(10)보다 크면 앞에 보여줄 페이지가 있다 -->
				<c:if test="${pb.startPage > pb.pagePerBlock }">
					<li class="page-item"><a href="adminMbList.do?pageNum=1"
							class="page-link"><span aria-current="page"><<</span></a></li>
					<li class="page-item"><a href="adminMbList.do?pageNum=${pb.startPage - 1 }"
						class="page-link"><span aria-current="page"><</span></a></li>
				</c:if>
				<c:forEach var="i" begin="${pb.startPage }" end="${pb.endPage }">
					<!-- 현재 머물고 있는 페이지가 몇 페이지인지 구별할 때 -->
					<c:if test="${pb.currentPage == i }">
						<li class="page-item"><a href="adminMbList.do?pageNum=${i }"
							class="page-link" style=" background-color: #007bff; color: #fff;">ㅤ${i}ㅤ</a></li>
					</c:if>
					<c:if test="${pb.currentPage != i }">
						<li class="page-item"><a href="adminMbList.do?pageNum=${i }"
							class="page-link">ㅤ${i}ㅤ</a></li>
					</c:if>
				</c:forEach>
				<!-- 보여줄 페이지가 뒤에 남아있는 경우(다음 버튼 활성화)=> endPage < totalPage인 경우 -->
				<c:if test="${pb.endPage < pb.totalPage }">
					<li class="page-item"><a href="adminMbList.do?pageNum=${pb.endPage + 1 }"
						class="page-link"><span aria-current="page">></span>
					</a></li>
					<li class="page-item"><a href="adminMbList.do?pageNum=${pb.totalPage }"
						class="page-link"><span aria-current="page">>></span>
					</a></li>
				</c:if>
				
			</ul>
		</nav>
			</div>		
			<!-- 	</div> -->
			</div>
			
			
		</div>
	</div>
	<div style="display: flex; justify-content: center;">
    	<a href="adminPage.do" style="text-decoration: none;">홈으로</a>
	</div>

</body>
</html>