<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page import="com.constant01.model.CMember"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>C-Market</title>
<link rel="stylesheet" href="https://t1.daumcdn.net/kakaomapweb/place/jscss/roughmap/6af7869e/roughmapLander.css">
<script src="//ssl.daumcdn.net/dmaps/map_js_init/v3.js?autoload=false"></script>
<script src="https://t1.daumcdn.net/mapjsapi/js/main/4.4.14/v3.js"></script>

<script type="text/javascript" src="../../../../resources/js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="../../../../resources/js/jquery-ui.min.js"></script>
<script type="text/javascript" src="../../../../resources/js/CommonUtil.c3r-custom.js"></script>

<link type="text/css" rel="stylesheet" href="../../../../resources/css/shipper/ship_Driver.css">
<style type="text/css">
/* 모바일 환경 스타일 */
@media screen and (max-width: 68px) {
    .table {
        width: 100%;
        overflow-x: auto;
    }
    .cute-table th, .cute-table td {
        white-space: nowrap;
    }
    .map {
        width: 100%;
        height: 250px;
    }
    .footer {
        position: relative;
    }
}
</style>
</head>
<body>

<!-- 상단 메뉴 추가 -->
    <div class="header">
        <!-- 여기에 메뉴 내용 추가 -->
        <nav>
            <ul>
                 <li><a href="#" onClick="history.go(-1);">Home</a></li>
                <li><a href="../logout">logout</a></li>
            </ul>
        </nav>
    </div>


		
		<% 
			CMember customer = (CMember)session.getAttribute("login");
			System.out.println(customer);
			String userId = request.getParameter("m_userId");
			String userPw = request.getParameter("m_userPw");
			String driverNm = request.getParameter("m_name");
			String driverPhone = request.getParameter("m_phone");
		%>

	<div class="top">
	<h2>Driver Page <%=customer.getM_name()%> 님 </h2>
	</div>

<!-- 여까지 지우기 -->
 <div class="table">
        <table class="cute-table">
            <tr>
                <th height="30">주문 번호</th>
                <th>상품 코드</th>
                <th>받는 사람</th>
                <th>배달 목적지</th>
                <th>우편 번호</th>
                <th>배송 상태</th>
                <th>배송 시작</th>
                <th>배송 완료</th>
                
            </tr>
            <!-- dlist의 길이만큼 반복하여 테이블 행 생성 -->
  <c:forEach items="${m_order}" var="delist">
            <tr>
                <td width="120px">${delist.order_no}</td>
                <td width="100px">${delist.productcode}</td>
                <td width="120px">${delist.su_name}</td>
                <td width="250px">${delist.su_addr}</td>
                <td width="120px">${delist.su_zipCd}</td>
                <td width="150px">${delist.status}</td>
                <td width="280px">
                    <c:if test="${delist.status == '출고완료'}">
                        <button type="button" class="btn" id="start_${delist.order_no}"
                            onclick="location.href='deliverydone.do?order_no=${delist.order_no}'">검품확인 및 배송시작</button>
                    </c:if>
                </td>
                <td width="200px">
                    <c:if test="${delist.status == '배송중'}">
                        <button type="button" class="btn" id="complete_${delist.order_no}"
                            onclick="location.href='deliverydone2.do?order_no=${delist.order_no}'">배송완료</button>
                    </c:if>
                </td>
            </tr>
        </c:forEach>
        </table>
    </div>



 <!--출고 전 공급사측에서 확인할 수 있는 db에 추가하면 될 듯  -->
 
 <form id="frm" name="frm" method="post" action="/company/shipper/deliverydone.do">
	
	
	<input type="hidden" value="yphl1@naver.com"> <!-- 메일 발송할 주소 -->

	<input type="hidden" name="userId" value="<%=customer.getM_userId()%>">
	<input type="hidden" name="userPw" value="<%=customer.getM_userPw()%>">
	<input type="hidden" name="driverNm" value="<%=customer.getM_name()%>">
	<input type="hidden" name="driverPhone" value="<%=customer.getM_phone()%>">

</form>


<div class="map" id="map" style="width:100% ;height:700px;">					 
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4964815528aa3bf5334721911ccdc6964964815528aa3bf5334721911ccdc696"></script>
	<script>
	
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
			    mapOption = { 
			        center: new kakao.maps.LatLng(35.542990773269565, 129.33653130703433), // 지도의 중심좌표
			        level: 2 // 지도의 확대 레벨 
			}; 
			
			var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
			
			// 지도에 확대 축소 컨트롤을 생성한다
			var zoomControl = new kakao.maps.ZoomControl();

			// 지도의 우측에 확대 축소 컨트롤을 추가한다
			map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);

			//var hsp = new kakao.maps.LatLng(35.54297, 129.33657);
			
			//위치 정보 가져오기
			var lat;
			var lon;
			var options = {
			      enableHighAccuracy: true,
			      timeout: 3000,
			      maximunAge: 0
			};
			var driverLat;
			var driverLon;
			function success(position){
			   console.log(position);
			       lat = position.coords.latitude, // 위도
			        lon = position.coords.longitude; // 경도
			        driverLat = lat.toString();
			        driverLon = lon.toString();
			        var locPosition = new kakao.maps.LatLng(lat, lon), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
			         message = '<div style="padding:5px;">여기에 계신가요?!</div>'; // 인포윈도우에 표시될 내용입니다
			         
			           // 마커와 인포윈도우를 표시합니다
			           displayMarker(locPosition, message);
			   
			};
			
			function error(err){
			   console.log(err);
			};
			
			
			//HTML5의 geolocation으로 사용할 수 있는지 확인합니다 
			if (navigator.geolocation) {
			    
			    var na = navigator.geolocation.watchPosition(success,error,options);
			    console.log(na);
			}
			
			var marker;
			var flag = false;
			function displayMarker(locPosition, message){
			   
			   if(flag){
			      marker.setMap(null);
			   }
			   //마커를 생성합니다
			   marker = new kakao.maps.Marker({
			      position: locPosition
			   });
			   marker.setMap(map);
			   
			   flag=true;
			   console.log("본인위치 마커생성");  
			    // 지도 중심좌표를 접속위치로 변경합니다
			    map.setCenter(locPosition);  
			    
			    
			 // 마커 생성후 마커 위도,경도,이름,패스워드 DB저장위한 폼
			 	var m_userId = $('input[name=userId]').val();
				var m_userPw = $('input[name=userPw]').val();
				var m_name = $('input[name=driverNm]').val();
				var m_phone = $('input[name=driverPhone]').val();
				
				
				console.log(m_userId);
				console.log(m_userPw);
				console.log(m_name);
				console.log(m_phone);
				console.log(driverLat);
				console.log(driverLon);
				
				
				$.ajax({
					type : "POST",
					url  : "/company/shipper/Drivermap.do",
					data : {
						"m_userId"		: m_userId,
						"m_userPw"		: m_userPw,
						"m_name" 		: m_name,
						"m_phone"	: m_phone,
						"driverLat" 	: driverLat,
						"driverLon"   	: driverLon
					},
					dataType : "text",
					success  : function(){
						
						console.log("성공");
					},
					error:function(request,status,error){
						console.log("실패");
						alert("처리 중 오류가 발생되었습니다.\nerror:"+error+"request:"+request+"status:"+status);
					}
				});
				
				/*
				$.ajax({
					type : "POST",
					url  : "/company/shipper/MDmap.do",
					data : {
						"m_userId"		: m_userId,
						"m_userPw"		: m_userPw,
						"m_name" 		: m_name,
						"m_phone"	: m_phone,
						"driverLat" 	: driverLat,
						"driverLon"   	: driverLon
					},
					dataType : "text",
					success  : function(){
						
						console.log("성공");
					},
					error:function(request,status,error){
						console.log("실패");
						alert("처리 중 오류가 발생되었습니다.\nerror:"+error+"request:"+request+"status:"+status);
					}
				});*/
				
				
			}
			   
			
	</script>		
	 
	
					 
					 
					 
	</div>

<!--  </div>  -->

<div style="display: flex; justify-content: center;">
<a id="home" href="Driver_main.do" style="text-decoration: none;">홈으로</a>
</div>	







<div>


<c:forEach items="${m_order}" var="delist">


</c:forEach>
</div>

 




<!-- 하단 푸터 추가 -->
    <div class="footer">
        <!-- 여기에 푸터 내용 추가 -->
        <p>&copy; ConstantCompany</p>
    </div>

</body>
</html>