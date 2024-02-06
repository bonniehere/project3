<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="../../../../resources/js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="../../../../resources/js/jquery-ui.min.js"></script>
<script type="text/javascript" src="../../../../resources/js/CommonUtil.c3r-custom.js"></script>

<link type="text/css" rel="stylesheet" href="../../../../resources/css/shipper/Driver_main.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<meta charset="UTF-8">
<title>C-MARKET</title>

</head>
<script>
//기사 페이지 가기~
function yaho(obj){
	var oTd = $(obj).parent();
	G_Util.newFormSubmit({
		"action" : "/company/shipper/ship_Driver.do",
		"param"  : {
			"m_userId"      : oTd.find("input[name=userId]").val(),
			"m_userPw"      : oTd.find("input[name=userPw]").val(),
			"m_name"      : oTd.find("input[name=driverNm]").val()
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
                <li><a href="homelog.do">Home</a></li>
                <li><a href="#">About Us</a></li>
                <li><a href="../logout">logout</a></li>
            </ul>
        </nav>
    </div>



<!-- 
<a href="/company/shipper/ship_Driver.do">
 -->






<div>
<c:forEach items="${list}" var="list" varStatus="status">

<input type="hidden" name="userId" value="${list.m_userId}">
<input type="hidden" name="userPw" value="${list.m_userPw}">
<input type="hidden" name="driverNm" value="${list.m_name}">

</c:forEach>
<div class="col-md-5 text-center" style="margin-left:auto; margin-right:auto;">
<h2 class="mt-5 text-start" id="join">　배송기사 페이지<br>　</h2>
<ul class="custom-list">
<li><div onclick="javascript:yaho(this);">기사 지도 페이지</div></li>
<li><div onclick="location.href='#'">1</div></li>
<li><div onclick="location.href='#'">2</div></li>
<li><div onclick="location.href='#'">3</div></li>
<li><div onclick="location.href='#'">4</div></li>
<li><div onclick="location.href='#'">5</div></li>
</ul>
</div>





<!-- 
<a href="javascript:void(0);" onclick="javascript:yaho(this);">기사P</a>
 -->
</div>



<!-- 하단 푸터 추가 -->
    <div class="footer">
        <!-- 여기에 푸터 내용 추가 -->
        <p>&copy; 2024 Your Company. All rights reserved.</p>
    </div>

</body>
</html>