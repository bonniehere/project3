<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>주문 메인 페이지</title>
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <link rel="stylesheet" href="../../resources/css/release/ReleaseMain.css">
<!--     <link rel="stylesheet" href="../../resources/css/release/table.css"> -->
    
    <style>
   table {
            border-collapse: collapse;
            width: 100%;
            max-width: 800px; /* 예시로 너비를 제한 */
            margin: 20px auto; /* 중앙 정렬을 위한 마진 설정 */
        }

        /* 테이블 셀 스타일 */
        td {
            padding: 8px; /* 셀 안에 여백 설정 */
            border: 1px solid #ddd; /* 테두리 선 설정 */
            text-align: left; /* 텍스트를 왼쪽 정렬 */
        }

        /* 짝수 행 배경색 지정 */
        tr:nth-child(odd) {
            background-color: #f2f2f2;
        }

        /* 홀수 행 배경색 지정 */
        tr:nth-child(even) {
            background-color: #ffffff;
        }

        /* 비밀번호 변경 버튼 스타일 */
        .change-password-button {
            padding: 8px 16px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        /* 버튼 호버 시 배경색 변경 */
        .change-password-button:hover {
            background-color: #45a049;
        }
    </style>
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
        <table>
            <c:forEach items="${detail}" var="detail">
                <tr>
                    <td>이메일:</td><td>${detail.m_email}</td>
                </tr>
                <tr>
                    <td>아이디:</td><td>${detail.m_userId}<input type="hidden" id="m_userId" value="${detail.m_userId}"> </td>
                    
                </tr>
                <tr>
                    <td>비밀번호:</td><td><input type="password" id="present_userpw" value="${detail.m_userPw}" readonly></td>
                </tr>
                <tr>
                    <td><input id="newPassword" type="password" style="width:100%;border:none;" placeholder="변경하고싶은 비밀번호를 입력하세요."></td>
                    <td><button id="changePasswordButton" class="change-password-button">비밀번호 변경</button></td>
                </tr>
                <tr>
                    <td>이름:</td><td>${detail.m_name}</td>
                </tr>
                <tr>
                    <td>연락처:</td><td>${detail.m_tel}</td>
                </tr>
                <tr>
                    <td>우편번호:</td><td>${detail.m_zipCd}</td>
                </tr>
                <tr>
                    <td>주소:</td><td>${detail.m_addr}</td>
                </tr>
                <tr>
                    <td>상세내용:</td><td>${detail.m_addr_detail}</td>
                </tr>
                <tr>
                    <td>가입일:</td><td>${detail.join_date}</td>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>

<script>

var present_userpw = $('#present_userpw').val();
$(document).ready(function() {
    $('#changePasswordButton').click(function() {
        // 현재 비밀번호 가져오기
        var currentPassword = prompt("현재 비밀번호를 입력하세요:");

        // 현재 비밀번호와 사용자가 입력한 값이 일치하는지 확인
        if (currentPassword == present_userpw) {
            // 확인 창 표시
            var confirmChange = confirm("비밀번호를 변경하시겠습니까?");
            
            // 사용자가 "예"를 선택한 경우에만 비밀번호 변경 요청을 서버에 전송
            if (confirmChange) {
                var newPassword = $('#newPassword').val();
                var m_userId = $('#m_userId').val();

                // AJAX를 통해 서버에 새 비밀번호 전송
                $.ajax({
                    url: 'changePassword', // 컨트롤러에 요청을 보낼 엔드포인트 URL
                    type: 'POST',
                    data: { 
                        m_userId: m_userId,
                        m_userPw: newPassword 
                    }, // 새 비밀번호 데이터
                    success: function(response) {
                        // 성공 시 페이지 새로고침
                        location.reload();
                    },
                    error: function(xhr, status, error) {
                        console.log('Error:', error);
                    }
                });
            }
        } else {
            alert("현재 비밀번호가 일치하지 않습니다.");
        }
    });
});


</script>
</body>
</html>