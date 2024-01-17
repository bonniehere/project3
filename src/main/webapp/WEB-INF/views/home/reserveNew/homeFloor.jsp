<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Script-Type" content="text/javascript">
<meta http-equiv="Content-Style-Type" content="text/css">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimun-scale=1.0, user-scalable=no, target-densitydpi=medium-dpi, viewport-fit=cover">
<meta name="description" content="끝까지 들어주고 알기쉽게 설명하는 중앙대학교광명병원입니다. 대표번호 1811-7000">
<meta name="keywords" content="중앙대학교광명병원, 종합병원, 시병원, 응급의료센터, 심뇌혈관센터, 재활치료센터, 건강증진센터, 소아청소년과, 산부인과, 직장어린이집">
<meta name="title" content="중앙대학교광명병원 | 층별배치도">
<title>CONSTANT 메디컬  | 층별배치도</title>
<link rel="shortcut icon" href="/common/front/home/favicon.ico" type="image/x-icon">
<link rel="icon" href="/common/front/home/favicon.ico" type="image/x-icon">
<link type="text/css" rel="stylesheet" href="/common/front/home/css/default.css">
<link type="text/css" rel="stylesheet" href="/common/front/home/css/swiper-bundle.min.css">
<link type="text/css" rel="stylesheet" href="/common/front/home/css/reservation.css">
<link type="text/css" rel="stylesheet" href="/common/front/home/css/floor.css">
<script type="text/javascript" src="/common/front/home/js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="/common/front/home/js/jquery-ui.min.js"></script>
<script type="text/javascript" src="/common/front/home/js/design.js"></script>
<script type="text/javascript" src="/common/front/home/js/swiper.min.js"></script>
<script type="text/javascript" src="/common/front/home/js/rolling.js"></script>
<script type="text/javascript" src="/common/front/home/js/scrolla.jquery.js"></script>
<script type="text/javascript" src="/common/front/home/js/scrolloverflow.js"></script>
<script type="text/javascript" src="/common/front/home/js/fullpage.js"></script>
<script type="text/javascript" src="/common/front/home/js/scrolla.jquery.js"></script>
<script type="text/javascript" src="/common/front/home/js/common.js"></script>

<!-- <script type="text/javascript">
	$(document).ready(function(){
		 $(".close_Pop").on("click", function(){
		 	window.close();
		 });
		
		// $("#allFloor").on("click", function(){
		// 	location.href = "/home/introduce/floor0Pop.do";
		// });
		
		// $(".floorClass").on("click", function(){
		// 	location.href = "/home/introduce/"+$(this).attr("id")+".do";
		// });


		//  중앙관/다정관 탭
        $('.tab_1').click(function(){
			$('.tt > img').attr('src', '/common/front/home/images/floor/tit.png');

            $('.floor_tab li').removeClass('on');
            $(this).parent().addClass('on');

            $('.info_wrap1_1').attr('class', 'info_wrap1');
            $('.info_wrap1').show();
            $('.info_wrap2').hide();
            $('.info_wrap2_1').hide();

            $('.floor_list').attr('class', 'floor_list');
            $('.floor_list').find('a').removeClass('on');
        });

        $('.tab_2').click(function(){
			$('.tt > img').attr('src', '/common/front/home/images/floor/tit_2.png');

            $('.floor_tab li').removeClass('on');
            $(this).parent().addClass('on');

            $('.info_wrap2_1').attr('class', 'info_wrap2');
            $('.info_wrap2').show();
            $('.info_wrap1').hide();
            $('.info_wrap1_1').hide();

            $('.floor_list').attr('class', 'floor_list');
            $('.floor_list').find('a').removeClass('on');
        });

        //  중앙관
        $('.info_wrap1 .floor_list dd a').click(function(){
            $('.info_wrap1').attr('class', 'info_wrap1_1');

            var floorName = $(this).attr('id');

            $('.floor_list dd').find('a').removeClass('on');
            $('.floor_list').attr('class', 'floor_list');

            $(this).parent().parent().attr('class', 'floor_list on ' + floorName);
            $(this).addClass('on');
        });

        //  다정관
        $('.info_wrap2 .floor_list dd a').click(function(){
            $('.info_wrap2').attr('class', 'info_wrap2_1');

            var floorName = $(this).attr('id');

            $('.floor_list dd').find('a').removeClass('on');
            $('.floor_list').attr('class', 'floor_list');

            $(this).parent().parent().attr('class', 'floor_list on ' + floorName);
            $(this).addClass('on');
        });
	});
</script>  
<script type="text/javascript">
</script>-->

<style>

h1{
	text-align: center;
	color: #369;
}


/*테이블 css */
table.type03 {
  border-collapse: collapse;
  text-align: left;
  line-height: 1.5;
  border-top: 0px solid #ccc;
  border-left: 3px solid #369;
  margin : 20px 10px;
 
}

table.type03 th {
  width: 147px;
  padding: 10px 10px 10px 10px;
  font-weight: bold;
  vertical-align: top;
  color: #153d73;
  border-right: 0px solid #ccc;
  border-bottom: 0px solid #ccc;
  font-size: 120%;
  text-align: center;
  vertical-align : middle;

}

table.type03 td {
	width: 600px;
	height: 90px;
	table-layout: fixed;
	padding: 10px;
	vertical-align: top;
	border-right: 0px solid #ccc;
	border-bottom: 0px solid #ccc;
	font-size: 100%;
	text-align: center;
	vertical-align : middle;
	font-weight: 700;
}

#table{
    display: flex;
    justify-content: center;
    align-content: center;

}

.type03{
	margin: auto;

}

.type03 tr:hover {
background-color: #eeeeee;
}

/*여기는 밑에 프리뷰 버튼 css*/
.prev{
	width: 80px;
	height: 40px;
	float: left;
	background-color: #1474d0;
	border-radius: 20px;
	text-align: center;
	display : flex;
	justify-content : center;
	align-items : center;
	
}

a{
	text-decoration-line: none;
	color: white;
	font-size: 15px;
	font-weight: bold;
	margin: 10px 17px 10px 17px;
}



</style>


</head>
</head>
<body>


<h1>전층 안내</h1>

<div id="table">
<table class="type03" id="type03">
<!-- 
<tr>
<th id="point">층</th>
<td id="point">층별 안내</td>
</tr>
 -->
<tr>
<th>7F</th>
<td>치과교정과, 교수연구실, 의학정보도서관A/B</td>
</tr>

<tr>
<th>6F</th>
<td>분만실, 신생아실, 신생아중환자실, 산모치료실, 의료정보팀, 옥상정원</td>
</tr>

<tr>
<th>5F</th>
<td>후원자 라운지, 직원식당, 물류공급파트, 임원실</td>
</tr>

<tr>
<th>4F</th>
<td>수술실, 마취회복실, 당일수술센터, 기관지내시경실, 내과계 중환자실, 외과계 중환자실</td>
</tr>

<tr>
<th>3F</th>
<td>소아청소년과, 재활의학과, 병리과, 가정의학과, 심장뇌혈관병원</td>
</tr>

<tr>
<th>2F</th>
<td>암병원, 소화기센터, 호흡기알레르기센터, 감염내과, 내분비내과, 성형외과, 신장내과, 안과, 외과, 정신건강의학과, 피부과</td>
</tr>

<tr>
<th>1F</th>
<td>치과, 관절센터, 척추센터, 비뇨의학과, 산부인과, 이비인후과, 외래약국</td>
</tr>


</table>
</div>

<div class="prev"><a href="/home.do">홈으로</a></div>



</body>
</html>