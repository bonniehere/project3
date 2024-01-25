<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="https://t1.daumcdn.net/kakaomapweb/place/jscss/roughmap/6af7869e/roughmapLander.css">
<script src="//ssl.daumcdn.net/dmaps/map_js_init/v3.js?autoload=false"></script>
<script src="https://t1.daumcdn.net/mapjsapi/js/main/4.4.14/v3.js"></script>
<!-- 내가 추가한 css -->

<link type="text/css" rel="stylesheet" href="../../../../resources/css/shipper/ship_Customer2.css">


</head>

<script type="text/javascript" src="../../../../resources/js/jquery-1.11.0.min.js"></script>
	<script type="text/javascript" src="../../../../resources/js/jquery-ui.min.js"></script>
	<script type="text/javascript" src="../../../../resources/js/design.js"></script>
	<script type="text/javascript" src="../../../../resources/js/swiper.min.js"></script>
	<script type="text/javascript" src="../../../../resources/js/rolling.js"></script>
	<script type="text/javascript" src="../../../../resources/js/scrolla.jquery.js"></script>
	<script type="text/javascript" src="../../../../resources/js/scrolloverflow.js"></script>
	<script type="text/javascript" src="../../../../resources/js/fullpage.js"></script>
	<script type="text/javascript" src="../../../../resources/js/scrolla.jquery.js"></script>
	<script type="text/javascript" src="../../../../resources/js/common.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>



<body>
<h2>클라이언트가 배송자의 위치를 볼 수 있는 페이지임</h2>

<!-- 여기서는 ship_Driver의 위도, 경도, 배달기사의 이름을 받아와서 보여준다 -->
<h2>배달 기사 : ${dlist[0].driverNm} </h2>

<input type="hidden" name="userId" id="userId" value="${dlist[0].userId}">
<input type="hidden" name="userPw" id="userPw" value="${dlist[0].userPw}">
<input type="hidden" name="driverNm" value="${dlist[0].driverNm}">
<input type="hidden" name="driverPhone" value="${dlist[0].driverPhone}">
<input type="hidden" name="driverLat" id="driverLat" value="${dlist[0].driverLat}">
<input type="hidden" name="driverLon" id="driverLon" value="${dlist[0].driverLon}">




<div class="map_area" style="width:400px;height:400px;">
				<div class="map" id="map" style="width:400px;height:400px;">					 
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
			
			
			var flag1=false;
			var dcontent;
			var dposition;
			var dcustomOverlay;
			var positionlat = $('input[name=driverLat]').val();
			var positionlon = $('input[name=driverLon]').val();
			var dcontentNm = $('input[name=driverNm]').val();
			
			

			var options = {
			      enableHighAccuracy: true,
			      timeout: 3000000,
			      maximunAge: 0
			};
			
			function success(position){
			   console.log(position);
			   console.log("시작위치");

			        positionlat = $('input[name=driverLat]').val();
			        positionlon = $('input[name=driverLon]').val();
			        var locPosition = new kakao.maps.LatLng(positionlat, positionlon), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
			         message = '<div style="padding:5px;">'+dcontentNm+' 환자</div>'; // 인포윈도우에 표시될 내용입니다
			         
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
			   console.log("마커갱신");
			   marker.setMap(map);
			   flag=true;
			        
			   map.setCenter(locPosition);
			}
			
			
			//병원 위치 마커 찍기
			
			//위치 정보 가져오기

			// 마커를 생성합니다
			/*
			var hsp = new kakao.maps.LatLng(35.54297, 129.33657); //병원 중심좌표
			var hspmarker = new kakao.maps.Marker({
			    position: hsp
			});
			
			hspcontent = '<div class ="label"><span class="left"></span><span class="hsp">병원</span><span class="right"></span></div>';
			
			// 커스텀 오버레이를 생성합니다
			hspcustomOverlay = new kakao.maps.CustomOverlay({
			    position: hsp,
			    content: hspcontent   
			});
			
			// 마커가 지도 위에 표시되도록 설정합니다
			hspcustomOverlay.setMap(map);
			   
			var mppositionlat = (35.54297+parseFloat(positionlat))/2;
			var mppositionlon = (129.33657+parseFloat(positionlon))/2;
			var mapposition = new kakao.maps.LatLng(mppositionlat, mppositionlon);
			*/
			
			
		
			 
	</script>		 
					 
					 
					 
	</div>

</div>

<script type="text/javascript">
function autoChase(){
	var userPw = $('input[name=userPw]').val();
	$.ajax({
		type : "POST",
		url  : "/company/shipper/DriverLoad.do",
		data : {
			"userPw"		: userPw
		},
		dataType : "json",
		success  : function(data){
			document.querySelector("#driverLat").value = data[0].driverLat;
			document.querySelector("#driverLon").value = data[0].driverLon;
			qq = document.querySelector("#driverLat").value; //갱신 위도
			ww = document.querySelector("#driverLon").value; //갱신 경도
			console.log("성공");
			var locPosition = new kakao.maps.LatLng(qq, ww), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
	         message = '<div style="padding:5px;">'+dcontentNm+' 환자</div>'; // 인포윈도우에 표시될 내용입니다
	         
	           // 마커와 인포윈도우를 표시합니다
	           displayMarker(locPosition, message);
		},
		error:function(request,status,error){
			console.log("실패");
			alert("처리 중 오류가 발생되었습니다.\nerror:"+error+"request:"+request+"status:"+status);
		}
	});
	
}
setInterval('autoChase()', 3000); // 3초 마다 함수실행

</script>

<div class="driver_profile">
<table border="1">

<tr>
<td rowspan="3"><img src="../../../../resources/img/company/default_profile.png"> </td>
<td colspan="2">배송 기사 이름 : ${dlist[0].driverNm}</td>
</tr>
<tr>
<td colspan="2">배송 기사 연락처 : ${dlist[0].driverPhone}</td>

</tr>
<tr>
<td>흠</td>
<td>일단 추가함</td>
</tr>

</table>

</div>



</body>
</html>