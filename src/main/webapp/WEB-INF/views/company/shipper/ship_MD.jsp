<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>C-Market</title>

<link rel="stylesheet" href="https://t1.daumcdn.net/kakaomapweb/place/jscss/roughmap/6af7869e/roughmapLander.css">
<script src="//ssl.daumcdn.net/dmaps/map_js_init/v3.js?autoload=false"></script>
<script src="https://t1.daumcdn.net/mapjsapi/js/main/4.4.14/v3.js"></script>
<!-- 내가 추가한 css -->

<link type="text/css" rel="stylesheet" href="../../../../resources/css/shipper/ship_MD.css">


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

 

<script>
    document.addEventListener("DOMContentLoaded", function () {
        // 현재 URL에서 Query String을 가져옵니다.
        var queryString = window.location.search.substring(1);

        // Query String을 '&'로 나누어 key-value 쌍으로 분리합니다.
        var queryParams = queryString.split('&');

        // 결과를 저장할 객체를 생성합니다.
        var params = {};

        // 각 key-value 쌍을 params 객체에 저장합니다.
        for (var i = 0; i < queryParams.length; i++) {
            var pair = queryParams[i].split('=');
            var key = decodeURIComponent(pair[0]);
            var value = decodeURIComponent(pair[1]);
            params[key] = value;
        }

        // 필요한 값에 접근하는 예시
        var m_name = params.m_name;
        var m_phone = params.m_phone;

        // 가져온 값 확인을 위해 로그에 출력합니다.
        //alert(driverName);

        // 이제 driverName 등의 값을 사용하여 페이지를 구성하면 됩니다.
        document.getElementById("driverName").innerText = m_name;
        document.getElementById("driverNameParagraph").innerText = m_name;
        document.getElementById("driverPhoneParagraph").innerText = m_phone;
        
    });
</script>


 <!-- 상단 메뉴 추가 -->
    <div class="header">
        <!-- 여기에 메뉴 내용 추가 -->
        <nav>
            <ul>
                <li><a href="#" onClick="history.go(-2);" style="text-decoration: none;">Home</a></li>
                <li><a href="../logout">logout</a></li>
            </ul>
        </nav>
    </div>
    
	<div class="top">
	<h2 > 기사 <a id="driverName"></a> 님의 배송 상태입니다.</h2>
	</div>





<div class="body">
<div class="driver_profile">
<table class="cute-table">

<tr>
<td rowspan="3"><img id="driver" src="../../../../resources/img/shipper/driver.png"> </td>
<td colspan="2">배송 기사 이름 : <a id="driverNameParagraph"></a></td>
</tr>
<tr>
<td colspan="2">배송 기사 연락처 : <a id="driverPhoneParagraph"></a></td>

</tr>


</table>

</div>

<!-- include를 사용하여 스크롤 가능한 테이블 삽입 -->
<%@ include file="ship_MD2.jsp" %>

<!-- 
<div class="deliverytable">
<table class="cute-table">
<tr>
	<th width="100px;">주문 번호</th>
	<th width="100px;">받는 사람</th>
	<th>배송 목적지</th>
</tr>
<c:forEach items="${m_order}" var ="delist">
<tr>
	<td>${delist.order_no}</td>
	<td>${delist.su_name}</td>
	<td>${delist.ju_addr}</td>
</tr>
</c:forEach>
</table>

</div>
 -->






	<div class="map" id="map" style="width:600px;height:600px;">	
</div>

<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
  <div id="chart_div"></div>

<input type="hidden" name="userId" id="userId" value="${dlist[0].m_userId}">
<input type="hidden" name="userPw" id="userPw" value="${dlist[0].m_userPw}">
<input type="hidden" name="driverNm" value="${dlist[0].m_name}">
<input type="hidden" name="driverPhone" value="${dlist[0].m_phone}">
<input type="hidden" name="driverLat" id="driverLat" value="${dlist[0].driverLat}">
<input type="hidden" name="driverLon" id="driverLon" value="${dlist[0].driverLon}">




<!-- 	<div class="map_area" style="width:400px;height:400px;"> -->
							 
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
		
			 
	</script>		 
					 
		  
  <div id=homediv>
	<a id="home" onclick=" window.history.back();">이전</a>
	</div>			 
					 
	</div>

<!-- </div>  -->



<script>
google.charts.load('current', {packages: ['corechart', 'line']});
google.charts.setOnLoadCallback(drawBasic);

var date = [];
var temp = [];
var maxDataPoints = 15;  // 최대 데이터 포인트 수 설정

function drawBasic() {


    $.ajax({
        type: "GET",
        url: "/company/shipper/AdminTempLoad.do",
        dataType: "json",
        success: function (data) {
            for (i = 0; i < data.length; i++) {
                date[i] = new Date(data[i]["liveTime"]);
                temp[i] = parseInt(data[i]["temp"]);
            }

            console.log(date); // 날짜 데이터 확인용 로그

            var chartData = new google.visualization.DataTable();
            chartData.addColumn('datetime', 'Time');
            chartData.addColumn('number', 'Temperature');
            

            for (j = Math.max(0, temp.length - maxDataPoints); j < temp.length; j++) {
                chartData.addRows([[date[j], temp[j]]]);
            }
            //alert(chartData.addRows(1));

            var options = {
                hAxis: {
                    title: 'Time',
                    format: 'HH:mm'  // 시간 표시 형식 설정 (원하는 형식으로 변경 가능)
                },
                vAxis: {
                    title: 'Temperature'
                }
            };

            var chart = new google.visualization.LineChart(document.getElementById('chart_div'));
            chart.draw(chartData, options);
        },
        error: function (request, status, error) {
            console.log("실패");
            alert("처리 중 오류가 발생되었습니다.\nerror:" + error + "request:" + request + "status:" + status);
        }
    });
    
}setInterval('drawBasic()', 3000); // 3초 마다 함수실행



</script>






<script type="text/javascript">
function autoChase(){
	var userPw = $('input[name=userPw]').val();
	$.ajax({
		type : "POST",
		url  : "/company/shipper/MasterLoad.do",
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



<!-- 하단 푸터 추가 -->
    <div class="footer">
        <!-- 여기에 푸터 내용 추가 -->
        <p>&copy; ConstantCompany</p>
    </div>


</body>
</html>