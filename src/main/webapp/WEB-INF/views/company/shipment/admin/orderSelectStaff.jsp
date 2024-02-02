<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>출하직원 선택</title>
 <style type="text/css">
        body {
            font-family: Arial, sans-serif;
        }

        .col-md-9 {
            width: 75%;
            margin: 0 auto;
        }

        .mt-5 {
            margin-top: 3rem;
        }

        .text-start {
            text-align: start;
        }

        .table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 2rem;
        }

        .table th, .table td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: center;
        }

        .table th {
            background-color: #007bff;
            color: #fff;
        }

        .table td {
            padding: 10px;
        }

        .table tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        .button {
    display: inline-block;
    padding: 8px 16px;
    font-size: 14px;
    font-weight: bold;
    text-align: center;
    text-decoration: none;
    cursor: pointer;
    background-color: #007bff;
    color: #fff;
    border: 1px solid #007bff;
    border-radius: 4px;
}

.button:hover {
    background-color: #0056b3;
    color: #fff;
}
        
    </style>
<script type="text/javascript">
        // 부모 창으로 기사 이름 전달하는 함수
        function sendDriverNameToParent(driverName) {
            // 부모 창의 #driver 입력 필드에 기사 이름 삽입
            window.opener.document.getElementById('driver').value = driverName;
            // 팝업 창 닫기
            window.close();
        }
</script>
</head>
<body>

	<div class="col col-md-9">
			
					<h2 class="mt-5 text-start" id="join" style="opacity: 0.5">출하직원 리스트</h2>
				<table class="table">	
						<tr><th>출하직원 ID</th><th>출하직원 이름</th><th>배정</th></tr>
					<c:forEach var="st" items="${stList }">
						<tr>
						<th>${st.m_userId }</th>
						<td>${st.m_name }</td>
						<td><button class="button" onclick="sendDriverNameToParent('${st.m_name }')">선택</button></td>
						</tr>
						
					</c:forEach>
				</table>
				
					
			<!-- 	</div> -->
			</div>

</body>
</html>