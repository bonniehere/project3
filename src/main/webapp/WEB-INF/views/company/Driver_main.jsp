<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.constant01.model.CMember"%>

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

var G_Util = {
newFormSubmit : function(json){
	if( json != undefined ){
		$("form#tmpForm").remove();
		var oForm = $("<form/>",{
			id     : "tmpForm",
			name   : "tmpForm",
			method : "GET",
			action : json.action
		});
		$.each(json.param,function(key,value){
			var oHidden = $("<input/>",{
				type  : "hidden",
				id    : key,
				name  : key,
				value : value
			});
			oForm.append(oHidden);
		});
		$("body").append(oForm);
		oForm.submit();
	}
}
}
</script>


<body>
<!-- 상단 메뉴 추가 -->
    <div class="header">
        <!-- 여기에 메뉴 내용 추가 -->
        <nav>
            <ul>
                <li><a href="homelog.do">Home</a></li>
                <li><a href="../logout">logout</a></li>
            </ul>
        </nav>
    </div>




<div>

 		<% 
			CMember customer = (CMember)session.getAttribute("login");
			System.out.println(customer);
			String userId = request.getParameter("m_userId");
			String userPw = request.getParameter("m_userPw");
			String driverNm = request.getParameter("m_name");
			String driverPhone = request.getParameter("m_phone");
		%>
 
<div class="col-md-5 text-center" style="margin-left:auto; margin-right:auto;">
<h2 class="mt-5 text-start" id="join">　배송기사 페이지<br>　</h2>
<ul class="custom-list">

<li id="mappage"><div onclick="location.href='/company/shipper/Drivermap.do?m_name=<%=customer.getM_name()%>'">기사 지도 페이지</div></li>

</ul>
</div>



</div>



<!-- 하단 푸터 추가 -->
    <div class="footer">
        <!-- 여기에 푸터 내용 추가 -->
        <p>&copy; ConstantCompany</p>
    </div>

</body>
</html>