<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.constant01.model.DriverDTO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://t1.daumcdn.net/kakaomapweb/place/jscss/roughmap/6af7869e/roughmapLander.css">
<script src="//ssl.daumcdn.net/dmaps/map_js_init/v3.js?autoload=false"></script>
<script src="https://t1.daumcdn.net/mapjsapi/js/main/4.4.14/v3.js"></script>

<script type="text/javascript" src="../../../../resources/js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="../../../../resources/js/jquery-ui.min.js"></script>
<script type="text/javascript" src="../../../../resources/js/CommonUtil.c3r-custom.js"></script>
</head>
<body>
		
		<% 
			DriverDTO driver = (DriverDTO)session.getAttribute("login");
			String userId = request.getParameter("userId");
			String userPw = request.getParameter("userPw");
			String driverNm = request.getParameter("driverNm");
			String driverPhone = request.getParameter("driverPhone");
		%>

	
	<h2>택배 기사가 띄우고 있어야 되는 지도 페이지렁이</h2>
	<h2>기사 이름 뜰까용? <%=driver.getDriverNm()%> </h2>

 <!--출고 전 공급사측에서 확인할 수 있는 db에 추가하면 될 듯  -->
	<input type="hidden" name="userId" value="<%=driver.getUserId()%>">
	<input type="hidden" name="userPw" value="<%=driver.getUserPw()%>">
	<input type="hidden" name="driverNm" value="<%=driver.getDriverNm()%>">
	<input type="hidden" name="driverPhone" value="<%=driver.getDriverPhone()%>">


	 <!-- 내가 가져온 지도 constant 지도-->

					 
					 

<!--  <div class="map_area">  -->

<div class="map" id="map" style="width:100% ;height:380px;">					 
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
			 	var userId = $('input[name=userId]').val();
				var userPw = $('input[name=userPw]').val();
				var driverNm = $('input[name=driverNm]').val();
				var driverPhone = $('input[name=driverPhone]').val();
				
				
				console.log(userId);
				console.log(userPw);
				console.log(driverNm);
				console.log(driverPhone);
				console.log(driverLat);
				console.log(driverLon);
				
				
				$.ajax({
					type : "POST",
					url  : "/company/shipper/Drivermap.do",
					data : {
						"userId"		: userId,
						"userPw"		: userPw,
						"driverNm" 		: driverNm,
						"driverPhone"	: driverPhone,
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
				
				
			}
			   
			
	</script>		
	 
	
					 
					 
					 
	</div>

<!--  </div>  -->





</body>
</html>