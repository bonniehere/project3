<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>C-MARKET</title>


<script type="text/javascript" src="../../../../resources/js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="../../../../resources/js/jquery-ui.min.js"></script>
<script type="text/javascript" src="../../../../resources/js/CommonUtil.c3r-custom.js"></script>
<link type="text/css" rel="stylesheet" href="../../../resources/css/shipper/CustomerPage.css">

</head>
<script>
	
	//고객 페이지 가기~
	function hohoho(obj){
		var oTd = $(obj).parent();
		G_Util.newFormSubmit({
			"action" : "/company/shipper/ship_Customer2.do",
			"param"  : {
				"m_userPw"      : oTd.find("input[name=m_userPw]").val(),
				"m_name"      : oTd.find("input[name=m_name]").val(),
				"driverLat"      : oTd.find("input[name=driverLat]").val(),
				"driverLon"      : oTd.find("input[name=driverLon]").val()
			}
		
		})
	}
	
	</script>
<body>
   <!-- 상단 메뉴 추가 -->
    <div class="header">
        <!-- 여기에 메뉴 내용 추가 -->
        <nav>
            <ul>
                <li><a href="#" onClick="history.go(-1);" style="text-decoration: none;">Home</a></li>
                <li><a href="#">About Us</a></li>
                <li><a href="../logout">logout</a></li>
            </ul>
        </nav>
    </div>

<h2>클라이언트가 배송 상태를 볼 수 있는 페이지</h2>
<h3>이게 http://localhost:8080/test2 배송관리임</h3>


    <!-- 드라이버 정보를 표시할 테이블 -->
    <div class="table">
        <table class="cute-table">
            <tr>
                <th height="30">배정 기사</th>
                <th>배달 상태</th>
                <th>배달 목적지</th>
            </tr>
            <!-- dlist의 길이만큼 반복하여 테이블 행 생성 -->
            <c:forEach items="${orderlist}" var="orderlist" varStatus="status">
                <tr>
                	<!-- <td><img src="path/to/profile_images/${driver.m_name.toLowerCase()}_profile.jpg" alt="프로필 사진"></td> -->
                    <td><span><img src="../../../../resources/img/shipper/driver.png" alt="프로필 사진"></span><p id="orderlist">${orderlist.SU_name}</p></td>
                    <td width="150px">${orderlist.confirm}</td>
                    <td>${orderlist.addr}</td> <!-- 도착지 -->
                </tr>
            </c:forEach>
        </table>
    </div>
    
    
    
<div>
<c:forEach items="${dlist}" var="dlist" varStatus="status">

<input type="hidden" name="m_userPw" value="${dlist.m_userPw}">
<input type="hidden" name="m_name" value="${dlist.m_name}">
<input type="hidden" name="driverLat" value="${dlist.driverLat}">
<input type="hidden" name="driverLon" value="${dlist.driverLon}">


</c:forEach>


<a href="javascript:void(0);" onclick="javascript:hohoho(this);">고객P</a>
</div>


 <!-- 하단 푸터 추가 -->
    <div class="footer">
        <!-- 여기에 푸터 내용 추가 -->
        <p>&copy; 2024 Your Company. All rights reserved.</p>
    </div>
</body>
</html>