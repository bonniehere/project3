<%@page import="com.constant01.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta charset="utf-8">
<meta http-equiv="Content-Script-Type" content="text/javascript">
<meta http-equiv="Content-Style-Type" content="text/css">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimun-scale=1.0, user-scalable=no, target-densitydpi=medium-dpi, viewport-fit=cover">
<link rel="shortcut icon" href="/common/front/health/images/favicon.ico" type="image/x-icon">
<link rel="icon" href="/common/front/health/images/favicon.ico" type="image/x-icon">
<title>CONSTANT 메디컬 온라인 진료예약</title>
<link type="text/css" rel="stylesheet" href="../../../../resources/css/default.css"/>
<link type="text/css" rel="stylesheet" href="../../../../resources/css/swiper-bundle.min.css" />
<link type="text/css" rel="stylesheet" href="../../../../resources/css/reservation.css?11"/>
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
<!-- <script type="text/javascript" src="../../../../resources/js/CommonUtil.c3r-custom.js"></script> -->
<% 
         MemberDTO member = (MemberDTO)session.getAttribute("login");
%>

<!-- css 내가 적용한 거 -->
<link type="text/css" rel="stylesheet" href="../../../../resources/css/step1Pop.css"/>



<script type="text/javascript">
	$(document).ready(function(){
		if($("#resvIdx").val() != "<%=member.getUserNm() %>";
			$("#phoneDt").text(<%=member.getTelNo() %>);
			$("#userBirthDt").val("<%=member.getBirthDt() %>");
			$("#brdDt").text("<%=member.getBirthDt() %>");
			$("#gender").val("<%=member.getSex() %>");
		)}
		
		fn_DeptList(1,"002011001");
		
		$(document).on("click", ".btnClose", function(){
			window.close();
		});
		
		$(document).on("click", ".btn_reset", function(){
			$(this).parent("span").remove();
			var selDetpHtml = "<span class='empty_txt'>선택된 진료과가 없습니다.</span>";
			$("#selDept").append(selDetpHtml);
			$("#selDeptNo").val("");
		});

		$(document).on("click", ".departClass", function(){
			$(".departClass").removeClass("on");
			$(this).addClass("on");
		});
	});
</script>

 
 
 <!--      내가 필요한 css 파일 불러온 거임
<link type="text/css" rel="stylesheet" href="../../../../resources/css/default.css"/>
<link type="text/css" rel="stylesheet" href="../../../../resources/css/swiper-bundle.min.css" />
<link type="text/css" rel="stylesheet" href="../../../../resources/css/reservation.css?11"/>
<link type="text/css" rel="stylesheet" href="../../../../resources/css/constant01_reserve1"/>
 
  -->
 
 
 
 <!--     내가 필요한 js 파일 불러온 거임 
 
<script type="text/javascript" src="../../../../resources/js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="../../../../resources/js/jquery-ui.min.js"></script>
<script type="text/javascript" src="../../../../resources/js/design.js"></script>
<script type="text/javascript" src="../../../../resources/js/swiper.min.js"></script>
<script type="text/javascript" src="../../../../resources/js/rolling.js"></script>
<script type="text/javascript" src="../../../../resources/js/scrolla.jquery.js"></script>
<script type="text/javascript" src="../../../../resources/js/scrolloverflow.js"></script>
<script type="text/javascript" src="../../../../resources/js/fullpage.js"></script>
<script type="text/javascript" src="../../../../resources/js/common.js"></script>
 
 -->
 
 
 


<script type="text/javascript">
	function fn_GetHangulFst(str){
		var cho    = ["ㄱ","ㄲ","ㄴ","ㄷ","ㄸ","ㄹ","ㅁ","ㅂ","ㅃ","ㅅ","ㅆ","ㅇ","ㅈ","ㅉ","ㅊ","ㅋ","ㅌ","ㅍ","ㅎ"];
		var result = "";
		for( var i=0; i<str.length; i++ ){
			code = str.charCodeAt(i)-44032;
			if(code>-1 && code<11172) result += cho[Math.floor(code/588)];
		}
		return result;
	}
	function fn_Search(obj){
		var text = $(obj).text();
		$("ul.chosung_area > li").removeClass("on");
		$(obj).parent("li").addClass("on");

		console.log(text);
		$(".departClass").hide();
		$(".departClass").each(function(idx){
			var deptNm = $(this).find("a").text();
			if( text == "전체" ){
				$(this).show();
			}else{
				var deptFstNm = fn_GetHangulFst(deptNm).substring(0,1);
				if( text == deptFstNm ){
					$(this).show();
				}else{
					$(this).hide();
				}
			}
		});
	}
	
	
	/*
  	function fn_DeptList(tabNo,deptTp){
		$("ul.chosung_area > li").removeClass("on");
		$("ul.chosung_area > li").eq(0).addClass("on");
		$(".deptTabClass").find("li").removeClass("on");
		$(".deptTabClass").find("li").eq((tabNo-1)).addClass("on");
		$("#dp_area > li").remove();
		$.ajax({
			type : "POST",
			url  : "/home/reserveNew/resvDeptListAjax.do",
			data : {
				"headHspCd" : $("#hspCd").val()
				, "deptTp"	: deptTp
			},
			dataType: "text",
			success : function(data){
				var rData = $.parseJSON(data);
				console.log(rData);
				if( rData != null && rData != undefined && rData.length > 0 ){
					//<li class=""><a href=""><span style="background: url(/common/front/home/images/icon/ico_medical01.png) no-repeat 50% 25px;">가정의학과</span></a></li>
					var dentCnt = 1;
					for(var i=0;i<rData.length;i++){
						var depthHtml = "";
						//구강악안면외과/치과보존과•보철과/치과교정과 제외
						if(rData[i].DEPT_CD == "2240000000"){
							if(dentCnt == 1){
								depthHtml += "<li class='departClass'>";
								depthHtml += '<a href="javascript:void(0);" onclick="javascript:fn_SelDept(\'81\',\'2240000000\',\'구강악안면외과\',\'2240000000\');">';
								depthHtml += "<span style='background: url(/_upload/deptImg/d15adc43-1508-412d-ad2f-f6a0ab42279a) no-repeat 50% 25px;'>구강악안면외과</span>";
								depthHtml += "</a>";
								depthHtml += "</li>";
							}else if(dentCnt == 2){
								depthHtml += "<li class='departClass'>";
								depthHtml += '<a href="javascript:void(0);" onclick="javascript:fn_SelDept(\'97\',\'2240000000\',\'치과교정과\',\'2240000000\');">';
								depthHtml += "<span style='background: url(/_upload/deptImg/9b5c1b99-2e97-426d-9440-cdf1212b6068) no-repeat 50% 25px;'>치과교정과</span>";
								depthHtml += "</a>";
								depthHtml += "</li>";
							}else if(dentCnt == 3){
								depthHtml += "<li class='departClass'>";
								depthHtml += '<a href="javascript:void(0);" onclick="javascript:fn_SelDept(\'98\',\'2240000000\',\'치과보존과•보철과\',\'2240000000\');">';
								depthHtml += "<span style='background: url(/_upload/deptImg/f8aa9e9b-c28e-4476-9cac-ae40842d69f4) no-repeat 50% 25px;'>치과보존과•보철과</span>";
								depthHtml += "</a>";
								depthHtml += "</li>";
							}
							dentCnt++;
						}else{
							depthHtml += "<li class='departClass'>";
							depthHtml += '<a href="javascript:void(0);" onclick="javascript:fn_SelDept(\''+rData[i].DEPT_NO+'\',\''+rData[i].DEPT_CD+'\',\''+rData[i].DEPT_KOR_NM+'\',\''+rData[i].cd+'\');">';

							depthHtml += "<span style='background: url(/_upload/deptImg/"+rData[i].UUID_NM_2+") no-repeat 50% 25px;'>"+rData[i].DEPT_KOR_NM+"</span>";
							
							depthHtml += "</a>";
							depthHtml += "</li>";
						}
						$("#dp_area").append(depthHtml);
					}
				}
			},
			error:function(request,status,error){
				alert("처리 중 오류가 발생되었습니다.\nerror:"+error+"request:"+request+"status:"+status);
			}
		});
	} */
	function fn_SelDept(deptNo,deptCd,deptNm,emrDeptCd){
		$("#selDept > span").remove();
		var selDetpHtml = "<span>"+deptNm+" <a href='javascript:void(0);' class='btn_reset'><span class='skip'>초기화</span></a></span>";
		$("#selDept").append(selDetpHtml);
		$("#selDeptNo").val(deptNo);
		$("#selDeptCd").val(deptCd);
		$("#selDeptNm").val(deptNm);
		$("#emrDeptCd").val(emrDeptCd);
	}    
	
	function fn_Step(step){
		if($("#selDeptNo").val() == ""){
			alert("진료과를 선택해 주세요.");
			return false;
		} 
		
		$("#frm").attr("action","/home/reserveNew/step"+step+"Pop.do").submit();
	}
</script> 
<style>
   	#section1 {position: relative; z-index: 9;}
	::-webkit-scrollbar { width: 10px; }
	::-webkit-scrollbar-thumb { background: #000; }
</style>
</head>


<body class="group_main">
<form id="frm" name="frm" method="POST">
	<input type="hidden" id="sitePath" name="sitePath" value="home">
	<input type="hidden" id="resvIdx" name="resvIdx" value="<%=member.getUserPw() %>">
	<input type="hidden" id="hspCd" name="hspCd" value="G">
	<input type="hidden" id="memYn" name="memYn" value="Y">

	<input type="hidden" id="userType" name="userType" value="<%=member.getUserStat() %>">
	<input type="hidden" id="resvType" name="resvType" value="me">
	<input type="hidden" id="userNm" name="userNm" value="<%=member.getUserNm() %>">
	<input type="hidden" id="gender" name="gender" value="<%=member.getSex() %>">
	<input type="hidden" id="ptNo" name="ptNo" value="<%=member.getUserPw() %>"> <!-- ptNo = 환자번호 -> pw로 대체 -->
	<input type="hidden" id="userBirthDt" name="userBirthDt" value="<%=member.getBirthDt() %>">
	<input type="hidden" id="phone" name="phone" value="<%=member.getTelNo() %>">
	<input type="hidden" id="zipCd" name="zipCd" value="<%=member.getZipCd() %>">
	<input type="hidden" id="addr" name="addr" value="<%=member.getAddr() %>">
	<input type="hidden" id="detlAddr" name="detlAddr" value="<%=member.getDetlAddr() %>">
	
	
	
	
	
	<!-- 진협 예약시 추가되는 파라메타  -->

	<input type="hidden" id="ssnNo1" name="ssnNo1" value="">
	<input type="hidden" id="ssnNo2" name="ssnNo2" value="">
	<input type="hidden" id="Corporal" name="Corporal" value="XN8x0/F+JOcNzB3hJWkyaw==">
	<input type="hidden" id="memo" name="memo" value="XN8x0/F+JOcNzB3hJWkyaw==">
	<input type="hidden" id="returnContYN" name="returnContYN" value="">
	<input type="hidden" id="refer_resvYN" name="refer_resvYN" value="N">
	<input type="hidden" id="resv_flag" name="resv_flag" value="HOME">




	<!-- 진료과 정보 -->
	
	<input type="hidden" id="selDeptNo" name="selDeptNo">
	<input type="hidden" id="selDeptCd" name="selDeptCd">
	<input type="hidden" id="selDeptNm" name="selDeptNm">
	<input type="hidden" id="emrDeptCd" name="emrDeptCd"> 
	
	
	
	<!--  
	<input type="hidden" id="selDeptNo" name="selDeptNo">  과 번호 (얘도 밑에 값이 있음)
	<input type="hidden" id="selDeptCd" name="selDeptCd">  과 번호2 (이값은 밑에 나와있음)
	<input type="hidden" id="selDeptNm" name="selDeptNm">  과 이름 (내분비과)
	<input type="hidden" id="emrDeptCd" name="emrDeptCd">  과 번호2  selDeptCd 얘랑 동일
	-->
	
	
	
	<!-- 진료예약 -->
   	<div class="reservation_wrap">
		<div class="inner">
			<div class="reservation_header">
				<h1 class="tit">온라인 예약</h1>
				<a href="javascript:void(0);" class="btn_close btnClose"><span class="skip">닫기</span></a>
			</div>
			<div class="reservation_content">
				<!-- 환자정보 -->
				<div class="patient_wrap">
					<p class="p_name"><%=member.getUserNm() %></p>
					<p class="p_num">유저ID <span><%=member.getUserId() %></span></p>
					<div class="dec_list_wrap">
						<dl>
							<dt class="">연락처</dt>
							<dd class="p_phone" id="phoneDt"><%=member.getTelNo() %></dd>
						</dl>
						<dl>
							<dt>생년월일</dt>
							<dd class="p_birth" id="brdDt"><%=member.getBirthDt() %></dd>
						</dl>
						
						<!-- 안 쓸래이이아ㅓ리ㅏㅓㄴ 
						<dl>
							<dt>최근진료일</dt>
							<dd class="p_c_date"><span class="empty_txt">최근진료일이 없습니다.</span></dd>
						</dl>
						-->
						
					</div>
				</div>
				<!-- // 환자정보 -->
				<!-- 예약 항목-->
				<div class="content_wrap">
					<!-- 진료과 선택 -->
					<div class="dept_sec" style="display:block;">
						<div class="header_tit_area">
							<div class="tit_area fix">
								<dl class="state_now">
									<dt>STEP 01</dt>
									<dd class="tit">진료과 선택</dd>
								</dl>
								<dl class="step_next">
									<dt>STEP 02</dt>
									<dd class="tit">의료진 선택</dd>
								</dl>
							</div>
							
						</div>
	                    <!-- 진료과 -->
						<div class="info_area" style="display:block; position:relative;">
							<div class="search_index_area">
								<ul class="chosung_area">
									<li class="on"><a href="javascript:void(0);" onclick="javascript:fn_Search(this);">전체</a></li>
									<!-- <li><a href="javascript:void(0);" onclick="javascript:fn_Search(this);">ㄱ</a></li>
									<li><a href="javascript:void(0);" onclick="javascript:fn_Search(this);">ㄴ</a></li>
									<li><a href="javascript:void(0);" onclick="javascript:fn_Search(this);">ㄷ</a></li>
									<li><a href="javascript:void(0);" onclick="javascript:fn_Search(this);">ㄹ</a></li>
									<li><a href="javascript:void(0);" onclick="javascript:fn_Search(this);">ㅁ</a></li>
									<li><a href="javascript:void(0);" onclick="javascript:fn_Search(this);">ㅂ</a></li>
									<li><a href="javascript:void(0);" onclick="javascript:fn_Search(this);">ㅅ</a></li>
									<li><a href="javascript:void(0);" onclick="javascript:fn_Search(this);">ㅇ</a></li>
									<li><a href="javascript:void(0);" onclick="javascript:fn_Search(this);">ㅈ</a></li>
									<li><a href="javascript:void(0);" onclick="javascript:fn_Search(this);">ㅊ</a></li>
									<li><a href="javascript:void(0);" onclick="javascript:fn_Search(this);">ㅋ</a></li>
									<li><a href="javascript:void(0);" onclick="javascript:fn_Search(this);">ㅌ</a></li>
									<li><a href="javascript:void(0);" onclick="javascript:fn_Search(this);">ㅍ</a></li>
									<li><a href="javascript:void(0);" onclick="javascript:fn_Search(this);">ㅎ</a></li>
								 -->
								
								
								</ul>
							</div>
							
							
							<div class="dept_area">
								<div class="dept_inner">
									<ul id="dp_area">
									<li class="departClass">
									<a href="javascript:void(0);" onclick="javascript:fn_SelDept('79','2230000000','가정의학과','2230000000');">
									<span style="background: url(../../../../resources/reserveimg/0deb3859-8791-4361-b878-56f4f53d1745.png) no-repeat 50% 25px;">가정의학과</span></a></li>
									<li class="departClass">
									<a href="javascript:void(0);" onclick="javascript:fn_SelDept('80','2011000000','감염내과','2011000000');">
									<span style="background: url(../../../../resources/reserveimg/74d59e42-f209-4ed1-b468-170d69bb852e.png) no-repeat 50% 25px;">감염내과</span></a></li>
									
									<li class="departClass"><a href="javascript:void(0);" onclick="javascript:fn_SelDept('82','2010500000','내분비내과','2010500000');">
									<span style="background: url(../../../../resources/reserveimg/177ad0a7-9030-466b-b83e-cc09f732e63c.png) no-repeat 50% 25px;">내분비내과</span></a></li>
									
									<li class="departClass"><a href="javascript:void(0);" onclick="javascript:fn_SelDept('84','2011100000','류마티스내과','2011100000');">
									<span style="background: url(../../../../resources/reserveimg/11766d33-9a4a-43f1-8fb4-96d5ecf1ec3d.png) no-repeat 50% 25px;">류마티스내과</span></a></li>
									
									<li class="departClass"><a href="javascript:void(0);" onclick="javascript:fn_SelDept('85','2090000000','마취통증의학과','2090000000');">
									<span style="background: url(../../../../resources/reserveimg/20a956e2-cba2-4ff2-8089-cb310fbdee98.png) no-repeat 50% 25px;">마취통증의학과</span></a></li>
									
									<li class="departClass"><a href="javascript:void(0);" onclick="javascript:fn_SelDept('89','2170000000','방사선종양학과','2170000000');">
									<span style="background: url(../../../../resources/reserveimg/40b62ead-432a-4e82-9b96-a1813a2c2dc0.png) no-repeat 50% 25px;">방사선종양학과</span></a></li>
									
									<li class="departClass"><a href="javascript:void(0);" onclick="javascript:fn_SelDept('96','2210000000','병리과','2210000000');">
									<span style="background: url(../../../../resources/reserveimg/faa48102-8ab2-4dff-8666-e47175a33426.png) no-repeat 50% 25px;">병리과</span></a></li>
									
									<li class="departClass"><a href="javascript:void(0);" onclick="javascript:fn_SelDept('99','2150000000','비뇨의학과','2150000000');">
									<span style="background: url(../../../../resources/reserveimg/66860e3c-60c0-4b2f-82f5-d9e7cf15c7e9.png) no-repeat 50% 25px;">비뇨의학과</span></a></li>
									
									<li class="departClass"><a href="javascript:void(0);" onclick="javascript:fn_SelDept('102','2100000000','산부인과','2100000000');">
									<span style="background: url(../../../../resources/reserveimg/35fda3fc-33b9-49df-9cee-94ff1805af6c.png) no-repeat 50% 25px;">산부인과</span></a></li>
									
									<li class="departClass"><a href="javascript:void(0);" onclick="javascript:fn_SelDept('105','2080000000','성형외과','2080000000');">
									<span style="background: url(../../../../resources/reserveimg/ea256e78-76a4-4d33-b9b3-a5a98b6702f2.png) no-repeat 50% 25px;">성형외과</span></a></li>
									
									<li class="departClass"><a href="javascript:void(0);" onclick="javascript:fn_SelDept('106','2110000000','소아청소년과','2110000000');">
									<span style="background: url(../../../../resources/reserveimg/c7deceb9-1296-4da0-b005-526a32715431.png) no-repeat 50% 25px;">소아청소년과</span></a></li>
									
									<li class="departClass"><a href="javascript:void(0);" onclick="javascript:fn_SelDept('108','2010300000','소화기내과','2010300000');">
									<span style="background: url(../../../../resources/reserveimg/7aa11257-31b2-4a16-b81a-c064f4326484.png) no-repeat 50% 25px;">소화기내과</span></a></li>
									
									<li class="departClass"><a href="javascript:void(0);" onclick="javascript:fn_SelDept('109','2010400000','순환기내과','2010400000');">
									<span style="background: url(../../../../resources/reserveimg/6f90a214-efb8-49a9-99bc-cd79f33409ea.png) no-repeat 50% 25px;">순환기내과</span></a></li>
									
									<li class="departClass"><a href="javascript:void(0);" onclick="javascript:fn_SelDept('110','2020000000','신경과','2020000000');">
									<span style="background: url(../../../../resources/reserveimg/7aa9f28c-88f7-4e67-aa43-1ce75cbb6f86.png) no-repeat 50% 25px;">신경과</span></a></li>
									
									<li class="departClass"><a href="javascript:void(0);" onclick="javascript:fn_SelDept('111','2060000000','신경외과','2060000000');">
									<span style="background: url(../../../../resources/reserveimg/47049471-b6b5-45bb-8e7b-f31b56d5c3bf.png) no-repeat 50% 25px;">신경외과</span></a></li>
									
									<li class="departClass"><a href="javascript:void(0);" onclick="javascript:fn_SelDept('112','2010700000','신장내과','2010700000');">
									<span style="background: url(../../../../resources/reserveimg/5ef64574-94d4-41a9-9684-a09dd2ef811a.png) no-repeat 50% 25px;">신장내과</span></a></li>
									
									<li class="departClass"><a href="javascript:void(0);" onclick="javascript:fn_SelDept('107','2070000000','심장혈관흉부외과','2070000000');">
									<span style="background: url(../../../../resources/reserveimg/8a0405cc-07be-4871-833d-0cb23f187ed5.png) no-repeat 50% 25px;">심장혈관흉부외과</span></a></li>
									
									<li class="departClass"><a href="javascript:void(0);" onclick="javascript:fn_SelDept('113','2120000000','안과','2120000000');">
									<span style="background: url(../../../../resources/reserveimg/56110765-11ff-4b7e-bcc8-5f00ebabb853.png) no-repeat 50% 25px;">안과</span></a></li>
									
									<li class="departClass"><a href="javascript:void(0);" onclick="javascript:fn_SelDept('114','2160000000','영상의학과','2160000000');">
									<span style="background: url(../../../../resources/reserveimg/c61e1dd1-ad97-4587-81ba-c1a8a6b68966.png) no-repeat 50% 25px;">영상의학과</span></a></li>
									
									<li class="departClass"><a href="javascript:void(0);" onclick="javascript:fn_SelDept('115','2040000000','외과','2040000000');">
									<span style="background: url(../../../../resources/reserveimg/db2f79ed-0364-4593-804d-ffc6ba99746a.png) no-repeat 50% 25px;">외과</span></a></li>
									
									<li class="departClass"><a href="javascript:void(0);" onclick="javascript:fn_SelDept('86','2280000000','응급의학과','2280000000');">
									<span style="background: url(../../../../resources/reserveimg/08cca58f-406b-47c8-ac44-3e834aff0b08.png) no-repeat 50% 25px;">응급의학과</span></a></li>
									
									<li class="departClass"><a href="javascript:void(0);" onclick="javascript:fn_SelDept('87','2130000000','이비인후과','2130000000');">
									<span style="background: url(../../../../resources/reserveimg/55d374b9-b565-4917-8edb-a66112f6aa11.png) no-repeat 50% 25px;">이비인후과</span></a></li>
									
									<li class="departClass"><a href="javascript:void(0);" onclick="javascript:fn_SelDept('88','2012800000','입원내과','2012800000');">
									<span style="background: url(../../../../resources/reserveimg/e41df77c-b022-44e9-854d-8e70137c0a8e.png) no-repeat 50% 25px;">입원내과</span></a></li>
									
									<li class="departClass"><a href="javascript:void(0);" onclick="javascript:fn_SelDept('90','2220000000','재활의학과','2220000000');">
									<span style="background: url(../../../../resources/reserveimg/196ff2d8-3432-409b-bccc-3d02b7af3d3e.png) no-repeat 50% 25px;">재활의학과</span></a></li>
									
									<li class="departClass"><a href="javascript:void(0);" onclick="javascript:fn_SelDept('91','2030000000','정신건강의학과','2030000000');">
									<span style="background: url(../../../../resources/reserveimg/43670ef4-fb25-4ffc-be0e-77f72efd3492.png) no-repeat 50% 25px;">정신건강의학과</span></a></li>
									
									<li class="departClass"><a href="javascript:void(0);" onclick="javascript:fn_SelDept('92','2050000000','정형외과','2050000000');">
									<span style="background: url(../../../../resources/reserveimg/9870f94c-28e1-473a-9cd1-f2116fd43670.png) no-repeat 50% 25px;">정형외과</span></a></li>
									
									<li class="departClass"><a href="javascript:void(0);" onclick="javascript:fn_SelDept('94','2200000000','진단검사의학과','2200000000');">
									<span style="background: url(../../../../resources/reserveimg/aafb2a87-2f42-464f-b3fb-d242a8e0f69f.png) no-repeat 50% 25px;">진단검사의학과</span></a></li>
									
									<li class="departClass"><a href="javascript:void(0);" onclick="javascript:fn_SelDept('81','2240000000','구강악안면외과','2240000000');">
									<span style="background: url(../../../../resources/reserveimg/d15adc43-1508-412d-ad2f-f6a0ab42279a.png) no-repeat 50% 25px;">구강악안면외과</span></a></li>
									
									<li class="departClass"><a href="javascript:void(0);" onclick="javascript:fn_SelDept('97','2240000000','치과교정과','2240000000');">
									<span style="background: url(../../../../resources/reserveimg/9b5c1b99-2e97-426d-9440-cdf1212b6068.png) no-repeat 50% 25px;">치과교정과</span></a></li>
									
									<li class="departClass"><a href="javascript:void(0);" onclick="javascript:fn_SelDept('98','2240000000','치과보존과•보철과','2240000000');">
									<span style="background: url(../../../../resources/reserveimg/f8aa9e9b-c28e-4476-9cac-ae40842d69f4.png) no-repeat 50% 25px;">치과보존과•보철과</span></a></li>
									
									<li class="departClass"><a href="javascript:void(0);" onclick="javascript:fn_SelDept('100','2140000000','피부과','2140000000');">
									<span style="background: url(../../../../resources/reserveimg/0436e955-0677-49cd-8a89-858980e54f5a.png) no-repeat 50% 25px;">피부과</span></a></li>
									
									<li class="departClass"><a href="javascript:void(0);" onclick="javascript:fn_SelDept('101','2180000000','핵의학과','2180000000');">
									<span style="background: url(../../../../resources/reserveimg/e60dda32-db1f-4cdf-a17e-532932bd4412.png) no-repeat 50% 25px;">핵의학과</span></a></li>
									
									<li class="departClass"><a href="javascript:void(0);" onclick="javascript:fn_SelDept('103','2011200000','혈액종양내과','2011200000');">
									<span style="background: url(../../../../resources/reserveimg/2a825215-a0b3-4fef-84cd-d4ca8f2ae39c.png) no-repeat 50% 25px;">혈액종양내과</span></a></li>
									
									<li class="departClass"><a href="javascript:void(0);" onclick="javascript:fn_SelDept('104','2010600000','호흡기알레르기내과','2010600000');">
									<span style="background: url(../../../../resources/reserveimg/bfaeeb4f-08bd-40f6-a921-debebe82d9f9.png) no-repeat 50% 25px;">호흡기알레르기내과</span></a></li>
									</ul>
								</div>
							</div>
						 
						
						
						
						
				<!-- 여기 내가 만든 거 -->
				<!-- 
				<div class="dept_area">
								<div class="dept_inner">
									<ul id="dp_area">
									<li class="departClass"  onclick="statusChange(this);">
									<a href="javascript:void(0);" >
									<span style="background: url(../../../../resources/reserveimg/0deb3859-8791-4361-b878-56f4f53d1745.png) no-repeat 50% 25px;">가정의학과</span></a></li>
									<li class="departClass"  onclick="statusChange(this);">
									<a href="javascript:void(0);">
									<span style="background: url(../../../../resources/reserveimg/74d59e42-f209-4ed1-b468-170d69bb852e.png) no-repeat 50% 25px;">감염내과</span></a></li>
									<li class="departClass">
									<a href="javascript:void(0);" onclick="statusChange(this);">
									<span style="background: url(../../../../resources/reserveimg/7aa11257-31b2-4a16-b81a-c064f4326484.png) no-repeat 50% 25px;">소화기내과</span></a></li>
									
									<li class="departClass"><a href="javascript:void(0);" onclick="javascript:fn_SelDept('82','2010500000','내분비내과','2010500000');">
									<span style="background: url(../../../../resources/reserveimg/177ad0a7-9030-466b-b83e-cc09f732e63c.png) no-repeat 50% 25px;">내분비내과</span></a></li>
									
									<li class="departClass"><a href="javascript:void(0);" onclick="javascript:fn_SelDept('84','2011100000','류마티스내과','2011100000');">
									<span style="background: url(../../../../resources/reserveimg/11766d33-9a4a-43f1-8fb4-96d5ecf1ec3d.png) no-repeat 50% 25px;">류마티스내과</span></a></li>
									
									<li class="departClass"><a href="javascript:void(0);" onclick="javascript:fn_SelDept('85','2090000000','마취통증의학과','2090000000');">
									<span style="background: url(../../../../resources/reserveimg/20a956e2-cba2-4ff2-8089-cb310fbdee98.png) no-repeat 50% 25px;">마취통증의학과</span></a></li>
									
									<li class="departClass"><a href="javascript:void(0);" onclick="javascript:fn_SelDept('89','2170000000','방사선종양학과','2170000000');">
									<span style="background: url(../../../../resources/reserveimg/40b62ead-432a-4e82-9b96-a1813a2c2dc0.png) no-repeat 50% 25px;">방사선종양학과</span></a></li>
									
									<li class="departClass"><a href="javascript:void(0);" onclick="javascript:fn_SelDept('96','2210000000','병리과','2210000000');">
									<span style="background: url(../../../../resources/reserveimg/faa48102-8ab2-4dff-8666-e47175a33426.png) no-repeat 50% 25px;">병리과</span></a></li>
									
									<li class="departClass"><a href="javascript:void(0);" onclick="javascript:fn_SelDept('99','2150000000','비뇨의학과','2150000000');">
									<span style="background: url(../../../../resources/reserveimg/66860e3c-60c0-4b2f-82f5-d9e7cf15c7e9.png) no-repeat 50% 25px;">비뇨의학과</span></a></li>
									
									<li class="departClass"><a href="javascript:void(0);" onclick="javascript:fn_SelDept('102','2100000000','산부인과','2100000000');">
									<span style="background: url(../../../../resources/reserveimg/35fda3fc-33b9-49df-9cee-94ff1805af6c.png) no-repeat 50% 25px;">산부인과</span></a></li>
									
									<li class="departClass"><a href="javascript:void(0);" onclick="javascript:fn_SelDept('105','2080000000','성형외과','2080000000');">
									<span style="background: url(../../../../resources/reserveimg/ea256e78-76a4-4d33-b9b3-a5a98b6702f2.png) no-repeat 50% 25px;">성형외과</span></a></li>
									
									<li class="departClass"><a href="javascript:void(0);" onclick="javascript:fn_SelDept('106','2110000000','소아청소년과','2110000000');">
									<span style="background: url(../../../../resources/reserveimg/c7deceb9-1296-4da0-b005-526a32715431.png) no-repeat 50% 25px;">소아청소년과</span></a></li>
									
									<li class="departClass"><a href="javascript:void(0);" onclick="javascript:fn_SelDept('109','2010400000','순환기내과','2010400000');">
									<span style="background: url(../../../../resources/reserveimg/6f90a214-efb8-49a9-99bc-cd79f33409ea.png) no-repeat 50% 25px;">순환기내과</span></a></li>
									
									<li class="departClass"><a href="javascript:void(0);" onclick="javascript:fn_SelDept('110','2020000000','신경과','2020000000');">
									<span style="background: url(../../../../resources/reserveimg/7aa9f28c-88f7-4e67-aa43-1ce75cbb6f86.png) no-repeat 50% 25px;">신경과</span></a></li>
									
									<li class="departClass"><a href="javascript:void(0);" onclick="javascript:fn_SelDept('111','2060000000','신경외과','2060000000');">
									<span style="background: url(../../../../resources/reserveimg/47049471-b6b5-45bb-8e7b-f31b56d5c3bf.png) no-repeat 50% 25px;">신경외과</span></a></li>
									
									<li class="departClass"><a href="javascript:void(0);" onclick="javascript:fn_SelDept('112','2010700000','신장내과','2010700000');">
									<span style="background: url(../../../../resources/reserveimg/5ef64574-94d4-41a9-9684-a09dd2ef811a.png) no-repeat 50% 25px;">신장내과</span></a></li>
									
									<li class="departClass"><a href="javascript:void(0);" onclick="javascript:fn_SelDept('107','2070000000','심장혈관흉부외과','2070000000');">
									<span style="background: url(../../../../resources/reserveimg/8a0405cc-07be-4871-833d-0cb23f187ed5.png) no-repeat 50% 25px;">심장혈관흉부외과</span></a></li>
									
									<li class="departClass"><a href="javascript:void(0);" onclick="javascript:fn_SelDept('113','2120000000','안과','2120000000');">
									<span style="background: url(../../../../resources/reserveimg/56110765-11ff-4b7e-bcc8-5f00ebabb853.png) no-repeat 50% 25px;">안과</span></a></li>
									
									<li class="departClass"><a href="javascript:void(0);" onclick="javascript:fn_SelDept('114','2160000000','영상의학과','2160000000');">
									<span style="background: url(../../../../resources/reserveimg/c61e1dd1-ad97-4587-81ba-c1a8a6b68966.png) no-repeat 50% 25px;">영상의학과</span></a></li>
									
									<li class="departClass"><a href="javascript:void(0);" onclick="javascript:fn_SelDept('115','2040000000','외과','2040000000');">
									<span style="background: url(../../../../resources/reserveimg/db2f79ed-0364-4593-804d-ffc6ba99746a.png) no-repeat 50% 25px;">외과</span></a></li>
									
									<li class="departClass"><a href="javascript:void(0);" onclick="javascript:fn_SelDept('86','2280000000','응급의학과','2280000000');">
									<span style="background: url(../../../../resources/reserveimg/08cca58f-406b-47c8-ac44-3e834aff0b08.png) no-repeat 50% 25px;">응급의학과</span></a></li>
									
									<li class="departClass"><a href="javascript:void(0);" onclick="javascript:fn_SelDept('87','2130000000','이비인후과','2130000000');">
									<span style="background: url(../../../../resources/reserveimg/55d374b9-b565-4917-8edb-a66112f6aa11.png) no-repeat 50% 25px;">이비인후과</span></a></li>
									
									<li class="departClass"><a href="javascript:void(0);" onclick="javascript:fn_SelDept('88','2012800000','입원내과','2012800000');">
									<span style="background: url(../../../../resources/reserveimg/e41df77c-b022-44e9-854d-8e70137c0a8e.png) no-repeat 50% 25px;">입원내과</span></a></li>
									
									<li class="departClass"><a href="javascript:void(0);" onclick="javascript:fn_SelDept('90','2220000000','재활의학과','2220000000');">
									<span style="background: url(../../../../resources/reserveimg/196ff2d8-3432-409b-bccc-3d02b7af3d3e.png) no-repeat 50% 25px;">재활의학과</span></a></li>
									
									<li class="departClass"><a href="javascript:void(0);" onclick="javascript:fn_SelDept('91','2030000000','정신건강의학과','2030000000');">
									<span style="background: url(../../../../resources/reserveimg/43670ef4-fb25-4ffc-be0e-77f72efd3492.png) no-repeat 50% 25px;">정신건강의학과</span></a></li>
									
									<li class="departClass"><a href="javascript:void(0);" onclick="javascript:fn_SelDept('92','2050000000','정형외과','2050000000');">
									<span style="background: url(../../../../resources/reserveimg/9870f94c-28e1-473a-9cd1-f2116fd43670.png) no-repeat 50% 25px;">정형외과</span></a></li>
									
									<li class="departClass"><a href="javascript:void(0);" onclick="javascript:fn_SelDept('94','2200000000','진단검사의학과','2200000000');">
									<span style="background: url(../../../../resources/reserveimg/aafb2a87-2f42-464f-b3fb-d242a8e0f69f.png) no-repeat 50% 25px;">진단검사의학과</span></a></li>
									
									<li class="departClass"><a href="javascript:void(0);" onclick="javascript:fn_SelDept('81','2240000000','구강악안면외과','2240000000');">
									<span style="background: url(../../../../resources/reserveimg/d15adc43-1508-412d-ad2f-f6a0ab42279a.png) no-repeat 50% 25px;">구강악안면외과</span></a></li>
									
									<li class="departClass"><a href="javascript:void(0);" onclick="javascript:fn_SelDept('97','2240000000','치과교정과','2240000000');">
									<span style="background: url(../../../../resources/reserveimg/9b5c1b99-2e97-426d-9440-cdf1212b6068.png) no-repeat 50% 25px;">치과교정과</span></a></li>
									
									<li class="departClass"><a href="javascript:void(0);" onclick="javascript:fn_SelDept('98','2240000000','치과보존과•보철과','2240000000');">
									<span style="background: url(../../../../resources/reserveimg/f8aa9e9b-c28e-4476-9cac-ae40842d69f4.png) no-repeat 50% 25px;">치과보존과•보철과</span></a></li>
									
									<li class="departClass"><a href="javascript:void(0);" onclick="javascript:fn_SelDept('100','2140000000','피부과','2140000000');">
									<span style="background: url(../../../../resources/reserveimg/0436e955-0677-49cd-8a89-858980e54f5a.png) no-repeat 50% 25px;">피부과</span></a></li>
									
									<li class="departClass"><a href="javascript:void(0);" onclick="javascript:fn_SelDept('101','2180000000','핵의학과','2180000000');">
									<span style="background: url(../../../../resources/reserveimg/e60dda32-db1f-4cdf-a17e-532932bd4412.png) no-repeat 50% 25px;">핵의학과</span></a></li>
									
									<li class="departClass"><a href="javascript:void(0);" onclick="javascript:fn_SelDept('103','2011200000','혈액종양내과','2011200000');">
									<span style="background: url(../../../../resources/reserveimg/2a825215-a0b3-4fef-84cd-d4ca8f2ae39c.png) no-repeat 50% 25px;">혈액종양내과</span></a></li>
									
									<li class="departClass"><a href="javascript:void(0);" onclick="javascript:fn_SelDept('104','2010600000','호흡기알레르기내과','2010600000');">
									<span style="background: url(../../../../resources/reserveimg/bfaeeb4f-08bd-40f6-a921-debebe82d9f9.png) no-repeat 50% 25px;">호흡기알레르기내과</span></a></li>
									</ul>
			
								</div>
							</div>
			 
			
			
							
							<script>

							function statusChange(statusItem ){
							   var strText = $(statusItem).text();
							   strText = strText.replace(/(\s*)/g, '')
							
							   // strText 에 전체 문자열이 입력된다.
							  //$("#tt").val(strText);
							  $.trim($("#tt").val(strText)) 
						
							}
														
							</script> 
							
					

			 -->
						
							<div class="dim_div"></div>
							<div class="dim_logo"></div>
						</div>
	                    <!-- // 진료과 -->
					</div>
	                <!-- // 진료과 선택 -->
				</div>
				<!-- // 예약 항목-->
				<!-- 예약결과 -->
				<div class="result_wrap">
    				<p class="tit">예약하실 정보 확인</p>
    				<div class="dec_list_wrap">
        				<dl>
            				<dt>진료과</dt>
            				<dd class="c_dept" id="selDept">
	            				<!-- 
	            				<span class="empty_txt">
	            				<input type="text" id="tt" value="선택된 진료과가 없습니다.">  <!-- 선택한 과 값 가져오는 input 내가 추가함 -->
	            				
	            				</span>  
	            				
	            				
	            					
	            				<span class="empty_txt">선택된 진료과가 없습니다.</span>
	                			<a href="#" class="btn_reset"><span class="skip">초기화</span></a>
	                			    						
    						</dd>
						</dl>
						<dl>
    						<dt>의료진</dt>
    						<dd class="c_doctor">
	        					<!-- 정진원 교수 <a href="#" class="btn_reset"><span class="skip">초기화</span></a> -->
								<!-- <span class="empty_txt">의료진이 없습니다.</span> -->
    						</dd>
						</dl>
						<dl>
    						<dt>진료일시</dt>
    						<dd class="c_date">
								<!-- <span class="empty_txt">진료일이 없습니다.</span> -->
        					</dd>
    					</dl>
					</div>
					<!-- 진행현황 -->
					<ol class="result_state_sec">
    					<li class="on"><em>01</em> 진료과 선택</li>
    					<li><em>02</em> 의료진 선택</li>
    					<li><em>03</em> 진료시간 선택</li>
					</ol>
					<!-- // 진행현황 -->
				</div>
				<!-- // 예약결과 -->
				<!-- 버튼 -->
	            <div class="reservation_btn_wrap fix">
	            	<a href="javascript:void(0);" class="btn_step_prev btnClose"><span>취소</span></a>
	                <a href="javascript:void(0);" class="btn_step_next" onclick="javascript:fn_Step(2);"><span>다음</span></a>
				</div>
	            <!-- // 버튼 -->
			</div>
		</div>
	</div>
	<!-- //진료예약 -->
	<script>
		$('.dim_div').click(function() {
			$(".dim_div").hide();
			$(".dim_logo").hide();
		});
		$('.dim_logo').click(function() {
			$(".dim_div").hide();
			$(".dim_logo").hide();
		})
	</script>
									
</form>
</body></html>