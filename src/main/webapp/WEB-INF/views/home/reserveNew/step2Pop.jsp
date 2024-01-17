<%@page import="com.constant01.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" xmlns="http://www.w3.org/1999/xhtml"><head>
<meta charset="utf-8">
<meta http-equiv="Content-Script-Type" content="text/javascript">
<meta http-equiv="Content-Style-Type" content="text/css">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimun-scale=1.0, user-scalable=no, target-densitydpi=medium-dpi, viewport-fit=cover">
<link rel="shortcut icon" href="/common/front/health/images/favicon.ico" type="image/x-icon">
<link rel="icon" href="/common/front/health/images/favicon.ico" type="image/x-icon">
<title>CONSTANT 메디컬 온라인 진료예약</title>


<!--  필요한 css, js파일 경로 수정 -->
	<link type="text/css" rel="stylesheet" href="../../../../resources/css/default.css">
	<link type="text/css" rel="stylesheet" href="../../../../resources/css/swiper-bundle.min.css">
	<link type="text/css" rel="stylesheet" href="../../../../resources/css/reservation.css">
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
	<script type="text/javascript" src="../../../../resources/js/CommonUtil.c3r-custom.js"></script>
	<% 
         MemberDTO member = (MemberDTO)session.getAttribute("login");
	%>
	
	<script type="text/javascript">
		$(document).ready(function(){
			fn_ProfList("${param.emrDeptCd}","${param.selDeptNo}","${param.emrDeptCd}");
			$(document).on("click",".btn_close",function(){
				window.close();
			});
			//호흡기알레르기내과 선택 시, 안내문구 띄우기(2023.03.09 류은지 요청) --(selDeptNo)운영은 104/개발은107
		
			$(document).on("click",".btn_reset",function(){
				$(this).parent("span").remove();
				var selProfHtml = "<span class='empty_txt'>선택된 의료진이 없습니다.</span>";
				$("#selProf").append(selProfHtml);
			});
			$(document).on("click",".popClose",function(){
				$("#resvAdultYnO").hide();
			});

			$(document).on("click",".popUpClose",function(){
				$("#resvAdultYnU").hide();
			});
		});
	</script>
	
	<script type="text/javascript">
		/*
		function fn_ProfList(dpCd,deptNo,emrDeptCd){ // 부서코드,넘버,emr코드매개변수받고 컨트롤러넘겨서 검색후 데이터받아옴
			$.ajax({
				type : "POST",
				url  : "/home/reserveNew/resvDeptProfListAjax.do",
				data : {
					"headHspCd" : $("#hspCd").val(),
					"dpCd"      : dpCd,
					"deptNo"    : deptNo,
					"emrDeptCd" : emrDeptCd
				},
				dataType: "text",
				success : function(data){
					var rData = $.parseJSON(data);
					$(".doctor_count").text("("+rData.length+")");
					if( rData != null && rData != undefined && rData.length > 0 ){
						for( var i=0; i<rData.length; i++ ){
							var arrDay = ["월","화","수","목","금","토"];
							var arrAm  = new Array(6);
							var arrPm  = new Array(6);
							var jsonScheList = rData[i].profScheList;
							//[1]센터/진료과 배열선언
							var arrDept     = new Array();
							var arrUniqDept = new Array();
							if( jsonScheList != undefined && jsonScheList.length > 0 ){
								$.each(jsonScheList,function(index,item){
									if( item.centnm != "" )		arrDept.push(item.centnm);
									else						arrDept.push(item.orddeptnm);
								});
							}
							//[2]센터/진료과 중복제거
							$.each(arrDept,function(key,value){
								if( $.inArray(value,arrUniqDept) === -1 ) arrUniqDept.push(value);
							});
							//[3]의료진+주간스케쥴 그리기
							var profHtml  = "";
							var UUID_NM_1 = G_Util.isEmpty(rData[i].UUID_NM_1,"");
							var PROF_NM   = G_Util.isEmpty(rData[i].PROF_NM,"");
							var DTL_SPCL  = G_Util.isEmpty(rData[i].DTL_SPCL,"");
							profHtml += "<li style='max-width:360px;'>";
							profHtml += "<div class='doc_info fix'>";
							profHtml += "<div class='doc_img_wrap'>";
							if( UUID_NM_1 != "" ){
								profHtml += "<img src='/_upload/profImg/"+UUID_NM_1+"' alt='"+PROF_NM+"'>";
							}else{
								profHtml += "<img src='/common/front/temp/no-img.png' alt='"+PROF_NM+"'>";
							}
							profHtml += "</div>";
							profHtml += "<div class='doc_txt'>";
							profHtml += "<span class='doc_name'>"+PROF_NM+"</span>";
							profHtml += "<span class='doc_explain'>"+DTL_SPCL+"</span>";
							profHtml += "</div>";
							profHtml += "</div>";
							profHtml += "<div class='sche_table_wrap'>";
							profHtml += "<table><colgroup><col style='width:34%;'><col style='width:11%;'><col style='width:11%;'><col style='width:11%;'><col style='width:11%;'><col style='width:11%;'><col style='width:11%;'></colgroup>";
							profHtml += "<thead><tr><th scope='row'>진료과</th><th scope='row'>월</th><th scope='row'>화</th><th scope='row'>수</th><th scope='row'>목</th><th scope='row'>금</th><th scope='row'>토</th></tr></thead>";
							profHtml += "<tbody>";
							if( arrUniqDept.length > 0 ){
								$.each(arrUniqDept,function(index1,item1){
									profHtml += "<tr>";
									profHtml += "<th scope='col'>"+item1+"</th>";
									$.each(arrDay,function(index2,item2){
										var iconImg = "";
										$.each(jsonScheList,function(index3,item3){
											var centnm = item3.centnm;
											//if(item3.holiflag != "H" && item3.holiflag != "T"){
												if( centnm == null || centnm == undefined || centnm == "" )		centnm = item3.orddeptnm;
												if( item1 == centnm && item2 == item3.dayofweek ){
													if( item3.ampmflag == "오전" )			iconImg = "<span class='am'>오전</span>";
													else if( item3.ampmflag == "오후" )		iconImg = "<span class='pm'>오후</span>";
													else if( item3.ampmflag == "전일" )		iconImg = "<span class='all'>종일</span>";
												}
											//}
										});
										if( iconImg != "" )		profHtml += "<td>"+iconImg+"</td>";
										else					profHtml += "<td></td>";
									});
									profHtml += "</tr>";
								});
							}else{
								profHtml += "<tr><td colspan='"+arrDay.length+1+"'>진료가 가능한 요일이 없습니다.</td></tr>";
							}
							profHtml += "</tbody>";
							profHtml += "</table>";
							profHtml += "</div>";
							profHtml += "<div class='doc_btm_area'>";
							//profHtml += '<a href="javascript:void(0);" class="btn_select btn_select_' +rData[i].PROF_NO+'" onclick="javascript:fn_SelProf(\''+rData[i].PROF_NO+'\',\''+rData[i].PROF_EMP_NO+'\',\''+rData[i].PROF_NM+'\',\''+rData[i].UUID_NM_1+'\',\''+rData[i].centcd+'\');"><span>선택하기</span></a>';
							profHtml += '<a href="javascript:void(0);" class="btn_select btn_select_' +rData[i].PROF_NO+'" onclick="javascript:fn_SelProf(\''+rData[i].PROF_NO+'\',\''+rData[i].PROF_EMP_NO+'\',\''+rData[i].PROF_NM+'\',\''+rData[i].UUID_NM_1+'\',\''+rData[i].RESV_ADULT_YN+'\',\''+rData[i].centcd+'\');"><span>선택하기</span></a>';
							profHtml += '<a href="javascript:fn_DeatilPop(\'home\',\''+rData[i].DEPT_NO+'\',\''+rData[i].PROF_NO+'\',\''+rData[i].PROF_EMP_NO+'\');" class="btn_detail"><span class="skip">자세히보기</span></a>';
							profHtml += "</div>";
							profHtml += "</li>";
							$("#prof_area").append(profHtml);
						}
					}
				},
				error:function(request,status,error){
					//alert("처리 중 오류가 발생되었습니다.\nerror:"+error+"request:"+request+"status:"+status);
				}
			});
		}*/
		
		
		function fn_SelProf(profNo,profEmpNo,profNm,uuIdNm1,resvAdultYn){
			$("#selProf > span").remove();
			var selProfHtml = "<span>"+profNm+" <a href='javascript:void(0);' class='btn_reset'><span class='skip'>초기화</span></a></span>";
			$("#selProf").append(selProfHtml);
			$("#selProfNo").val(profNo);
			$("#selEmpNo").val(profEmpNo);
			$("#selProfNm").val(profNm);
			$("#selProfUuidNm").val(uuIdNm1);
			$("#resvAdultYn").val(resvAdultYn);
			$('.doctor_list_wrap ul li').removeClass('on');
			$('.doctor_list_wrap ul li a.btn_select_' + profNo).parent().parent().addClass('on');
		}
		function ageCheck(str1,str2){
			var divisionCode = str2.substring(0, 1);
			var dateOfBirth="";
			var age = "";
			if(str1 != null && str1 !="" && str1 != undefined && str1.length < 7){
				if(divisionCode == 1 || divisionCode == 2 || divisionCode == 5 || divisionCode == 6){
					// 한국인 1900~, 외국인 1900~
					dateOfBirth = "19"+str1;
				}else if(divisionCode == 3 || divisionCode == 4 || divisionCode == 7 || divisionCode == 8){
					// 한국인 2000~, 외국인 2000~
					dateOfBirth = "20"+str1;
				}else if(divisionCode == 9 || divisionCode == 0){
					// 한국인 1800~
					dateOfBirth = "18"+str1;
				}
			}else if( str1.length < 9){
				dateOfBirth = str1;
			}else{
				dateOfBirth = "";
			}
			if(dateOfBirth != ""){
				dateOfBirth = dateOfBirth.substr(0,4)+"-"+dateOfBirth.substr(4,2)+"-"+dateOfBirth.substr(6,2);
				var date = new Date();
				var birthDate = new Date(dateOfBirth);
				if( str1 != null && str1 != '' ){
					age = date.getFullYear() - birthDate.getFullYear() ;
					birthDate.setFullYear(date.getFullYear()); // 생년월일 객체의 연도를 오늘 날짜 객체의 연도로 변경
					if( date > birthDate) { // 같은 연도가 된 객체를 비교하여 월일이 지났는지 여부 판단
						age; // 생일이 안지났으면 나이
					} else {
						age--; //
					}
				}
			}else{
				age =0;
			}
			return age;
		}
		function fn_Step(step){
			// if(step == 3 && $("#selDeptNo").val() == "104"){
			// 	//호흡기알레르기내과 선택 시, 안내문구 띄우기(2023.03.09 류은지 요청)
			// 	alert("호흡기알레르기내과는 전화 예약 및 외래 방문만 가능합니다. 불편을 드려 대단히 죄송합니다.\n1주일 이내 발생한 호흡기 증상으로 인한 외래 진료 시에는 코로나 PCR 검사결과지(3일 내)를 지참하셔야 합니다.");
			// 	return false;
			// }
			if(step == 3 && $("#selProfNo").val() == ""){
				alert("의료진을 선택해 주세요.");
				return false;
			}
			//의료진예약연령제한
			var birth = $("#userBirthDt").val().split("-").join("");
			var age = ageCheck(birth, "1");
			if(step == 3 && $("#resvAdultYn").val() == "O" && age < 18){
				$("#resvAdultYnU").show();
				return false;
			}
			if(step == 3 && $("#resvAdultYn").val() == "I" && age < 7){
				$("#popTxt").text("만 7세 이상만 진료 가능 합니다.");
				$("#resvAdultYnO").show();
				return false;
			}
			if(step == 3 && $("#resvAdultYn").val() == "E" && age < 13){
				$("#popTxt").text("만 13세 이상만 진료 가능 합니다.");
				$("#resvAdultYnO").show();
				return false;
			}
			if(step == 3 && $("#resvAdultYn").val() == "M" && age < 14){
				$("#popTxt").text("만 14세 이상만 진료 가능 합니다.");
				$("#resvAdultYnO").show();
				return false;
			}
			if(step == 3 && $("#resvAdultYn").val() == "H" && age < 16){
				$("#popTxt").text("만 16세 이상만 진료 가능 합니다.");
				$("#resvAdultYnO").show();
				return false;
			}

			if( $("#resvIdx").val() != "" && step == "1" ){
				$("#frm").attr("action","/home/reserveNew/step"+step+"ChangePop.do").submit();
			}else{
				$("#frm").attr("action","/home/reserveNew/step"+step+"Pop.do").submit();
			}
		}
		//자세히보기
		function fn_DeatilPop(sitePath,deptNo,profNo,empNo){
			var flag = "N";
			var array = {"sitePath":sitePath,"deptNo":deptNo,"profNo":profNo,"empNo":empNo,"flag":flag};
			//alert(window.screen.width+"::"+window.screen.height);
			var popWidth  = 0;
			var popHeight = 0;
			var screenWidth  = window.screen.width;
			var screenHeight = window.screen.height;
			if( screenWidth > 1980 ){
				popWidth  = 1980;
				popHeight = 1080;
			}else{
				popWidth  = screenWidth;
				popHeight = screenHeight;
			}
			G_PostPopupOpen("ProfDetailPop","/"+sitePath+"/medical/profView.do",popWidth,popHeight,array);
		}
	</script>
	
	<style>
	#section1 { position: relative; z-index: 9;}
	::-webkit-scrollbar { width: 10px; }
	::-webkit-scrollbar-thumb { background: #000; }
	span.am{background-color:#FD6BC8;color:white;width:100%;padding:1.5px;}
	span.pm{background-color:#0066FF;color:white;width:100%;padding:1.5px;}
	span.all{background-color:#CBE639;color:white;width:100%;padding:1.5px;}
	</style>
</head>
<body class="group_main">
	<form id="frm" name="frm" method="POST">
		<input type="hidden" id="sitePath" name="sitePath" value="${param.sitePath}">
		<input type="hidden" id="resvIdx" name="resvIdx" value="${param.resvIdx}">
		<input type="hidden" id="hspCd" name="hspCd" value="${param.hspCd}">
		<input type="hidden" id="memYn" name="memYn" value="${param.memYn}">
		<!-- 예약자 정보 -->
		<!-- 
		<input type="hidden" id="userType" name="userType" value="undefined">
		<input type="hidden" id="resvType" name="resvType" value="me">
		<input type="hidden" id="userNm" name="userNm" value="김아무개">
		<input type="hidden" id="ptNo" name="ptNo" value="00151083">
		<input type="hidden" id="gender" name="gender" value="F">
		<input type="hidden" id="userBirthDt" name="userBirthDt" value="2001-06-09">
		<input type="hidden" id="phone" name="phone" value="010-5502-0745">
		<input type="hidden" id="zipCd" name="zipCd" value="">
		<input type="hidden" id="addr" name="addr" value="">
		<input type="hidden" id="detlAddr" name="detlAddr" value="">
		 -->
		 <input type="hidden" id="userType" name="userType" value="${param.userType}">
		<input type="hidden" id="resvType" name="resvType" value="${param.resvType}">
		<input type="hidden" id="userNm" name="userNm" value="${param.userNm}">
		<input type="hidden" id="gender" name="gender" value="${param.gender}">
		<input type="hidden" id="ptNo" name="ptNo" value="${param.ptNo}"> <!-- ptNo = 환자번호 -> userPw로 대체 -->
		<input type="hidden" id="userBirthDt" name="userBirthDt" value="${param.userBirthDt}">
		<input type="hidden" id="phone" name="phone" value="${param.phone}">
		<input type="hidden" id="zipCd" name="zipCd" value="${param.zipCd}">
		<input type="hidden" id="addr" name="addr" value="${param.addr}">
		<input type="hidden" id="detlAddr" name="detlAddr" value="${param.detlAddr}"> 
		<!-- 진협 예약시 추가되는 파라메타  -->
		<input type="hidden" id="ssnNo1" name="ssnNo1" value="">
		<input type="hidden" id="ssnNo2" name="ssnNo2" value="">
		<input type="hidden" id="Corporal" name="Corporal" value="ra3wirCWWporklV++4C2Z+wL/YxN6KOzhFmyXdOhMCDlsicaG0uKC8NEUOw/CT7lJ8/MnhfHTuMejp+RbBoOmkeyoF0Si4+JWsBFwcZcEa4=">
		<input type="hidden" id="memo" name="memo" value="ra3wirCWWporklV++4C2Z+wL/YxN6KOzhFmyXdOhMCDlsicaG0uKC8NEUOw/CT7lJ8/MnhfHTuMejp+RbBoOmkeyoF0Si4+JWsBFwcZcEa4=">
		<input type="hidden" id="returnContYN" name="returnContYN" value="">
		<input type="hidden" id="refer_resvYN" name="refer_resvYN" value="N">
		<input type="hidden" id="resv_flag" name="resv_flag" value="HOME">
		<!-- 진료과 정보 -->
		<input type="hidden" id="selDeptNo" name="selDeptNo" value="${param.selDeptNo}">
		<input type="hidden" id="selDeptCd" name="selDeptCd" value="${param.selDeptCd}">
		<input type="hidden" id="selDeptNm" name="selDeptNm" value="${param.selDeptNm}">
		<!-- 의료진 정보 -->
		<input type="hidden" id="selProfNo" name="selProfNo">
		<input type="hidden" id="selEmpNo" name="selEmpNo">
		<input type="hidden" id="selProfNm" name="selProfNm">
		<input type="hidden" id="selProfUuidNm" name="selProfUuidNm" value="">
		<input type="hidden" id="emrDeptCd" name="emrDeptCd" value="${param.emrDeptCd}">
		<input type="hidden" id="resvAdultYn" name="resvAdultYn" value="I">
	   	<!-- 진료예약 -->
	   	<div class="reservation_wrap">
	       <div class="inner">
	           <div class="reservation_header">
	               <h1 class="tit">온라인 예약</h1>
	               <a href="#" class="btn_close"><span class="skip">닫기</span></a>
	           </div>
	           <div class="reservation_content">

	               <!-- 환자정보 -->
	               <div class="patient_wrap">
	                   <p class="p_name"><%=member.getUserNm() %></p>
	                   <p class="p_num">유저ID <span><%=member.getUserId() %></span></p>

	                   <div class="dec_list_wrap">
	                       <dl>
	                           <dt class="">연락처</dt>
	                           <dd class="p_phone"><%=member.getTelNo() %></dd>
	                       </dl>
	                       <dl>
	                            <dt>생년월일</dt>
								<dd class="p_birth">
									<%=member.getBirthDt() %>
								</dd>
	                       </dl>
	                       <!-- <dl>
	                           <dt>최근진료일</dt>
	                           <dd class="p_c_date"><span class="empty_txt">최근진료일이 없습니다.</span></dd>
	                       </dl> -->
	                   </div>
	               </div>
	               <!-- // 환자정보 -->

	               <!-- 예약 항목-->
	               <div class="content_wrap">
	                   <!-- 의료진 선택 -->
	                   <div class="doctor_sec">
	                       <div class="header_tit_area">
	                           <div class="tit_area fix">
	                               <dl class="state_now">
	                                   <dt>STEP 02</dt>
	                                   <dd class="tit">의료진 선택</dd>
	                               </dl>

	                               <dl class="step_next">
	                                   <dt>STEP 03</dt>
	                                   <dd class="tit">진료시간 선택</dd>
	                               </dl>
	                           </div>

	                           <div class="sec_tit_area fix">
	                               <p class="tit"><span>의료진 목록</span></p>
	                               <!-- <div class="btn_area">
	                                   <a href="#" class="btn_box_card on"><span class="skip">카드형식 보기</span></a>
	                                   <a href="#" class="btn_box_list"><span class="skip">리스트형식 보기</span></a>
	                               </div> -->
	                           </div>
	                       </div>

	                       <div class="info_area" style="display:block;">
	                           <div class="con_header_wrap fix">
	                               <div class="lft_con">
	                                   <p class="dept_tit">${param.selDeptNm}</p>
	                                   <span class="doctor_count"></span>
	                                   <!-- <label for="sortGb1" class="ch">
	                                       <input type="radio" name="sortGb" id="sortGb1" checked/>
	                                       <span> 기본</span>
	                                   </label>
	                                   <label for="sortGb2" class="ch">
	                                       <input type="radio" name="sortGb" id="sortGb2"/>
	                                       <span> 가나다순</span>
	                                   </label> -->
	                               </div>
	                               <div class="rgt_con">
	                                   <ul class="index_info_wrap">
	                                       <li class="ico_outpatient" style="background:url(../../../../resources/img/ico_outpatient_am.png) no-repeat 0 center !important;">오전</li>
	                                       <li class="ico_outpatient" style="background:url(../../../../resources/img/ico_outpatient_pm.png) no-repeat 0 center !important;">오후</li>
	                                       <li class="ico_outpatient" style="background:url(../../../../resources/img/ico_outpatient_all.png) no-repeat 0 center !important;">종일</li>
	                                       <!-- <li class="ico_clinic">클리닉</li>
	                                       <li class="ico_operation">수술/검사</li> -->
	                                   </ul>
	                               </div>
	                           </div>

	                           <!-- 의료진 리스트 -->
	                           <div class="doctor_list_wrap">
	                               <div class="doc_inner">
	                                   <ul class="card_view" id="prof_area">
	                                   <li style="max-width:360px;">
	                                   <div class="doc_info fix">
	                                   <div class="doc_img_wrap">
	                                   <img src="../../../../resources/img/doctor/tBZlDGmKFXrmnrnvgNEB760SIRC7IIkoDRNBNL-OPxXIYDfgk3COi43R-Msb4MRYE4Z8xO3iUbH67-dLbqB-3A.webp" alt="박태영"></div>
	                                   <div class="doc_txt">
	                                   <span class="doc_name" id="d1" >박태영</span>
	                                   <span class="doc_explain">소화기질환, 췌장질환(췌장염, 췌장낭종, 췌장암), 담도질환(담석, 담낭염, 담도염, 담낭용종, 담낭암), 진단 및 치료내시경, 초음파 내시경</span></div></div>
	                                   <div class="sche_table_wrap">
	                                   <table>
	                                   <colgroup>
	                                   <col style="width:34%;">
	                                   <col style="width:11%;">
	                                   <col style="width:11%;">
	                                   <col style="width:11%;">
	                                   <col style="width:11%;">
	                                   <col style="width:11%;">
	                                   <col style="width:11%;"></colgroup>
	                                   <thead>
	                                   <tr>
	                                   <th scope="row">진료과</th>
	                                   <th scope="row">월</th>
	                                   <th scope="row">화</th>
	                                   <th scope="row">수</th>
	                                   <th scope="row">목</th>
	                                   <th scope="row">금</th>
	                                   <th scope="row">토</th></tr></thead>
	                                   <tbody><tr><th scope="col"></th>
	                                   <td></td>
	                                   <td></td>
	                                   <td></td>
	                                   <td></td>
	                                   <td></td>
	                                   <td></td></tr></tbody></table></div>
	                                   <div class="doc_btm_area">
	                                   <a href="javascript:void(0);" class="btn_select btn_select_413" onclick="javascript:fn_SelProf('413','01391','박태영','374eb0d0-0082-4055-b847-bda530a5fd15','O','undefined');">
	                                   <!-- onclick="javascript:fn_SelProf('413','01391','박태영','374eb0d0-0082-4055-b847-bda530a5fd15','O','undefined');" -->
	                                   <span >선택하기</span></a>
	                                   
	                                   <!-- 자세히 보기 의사 상세 페이지 주석처리 
	                                   
	                                   <a href="javascript:fn_DeatilPop('home','108','413','01391');" class="btn_detail">
	                                   <span class="skip">자세히보기</span></a>
	                                    -->
	                                   
	                                   </div></li>
	                                   <li style="max-width:360px;">
	                                   <div class="doc_info fix">
	                                   <div class="doc_img_wrap">
	                                   <img src="../../../../resources/img/doctor/ejyx1bTXl2fDssXmMWxUYHZxrZ3cNsO-saYtpD6E9Yn4nMq_zJdFvNwkxBneoKQ80ura4GW2IJD_8k3HKYIEIg.webp" alt="신승용"></div>
	                                   <div class="doc_txt">
	                                   <span class="doc_name" id="d2" >신승용</span>
	                                   <span class="doc_explain">소화기질환, 대장질환(대장암, 대장용종, 크론병, 궤양성대장염, 과민성장증후군, 변비), 소장질환, 진단 및 치료내시경</span></div></div>
	                                   <div class="sche_table_wrap">
	                                   <table>
	                                   <colgroup>
	                                   <col style="width:34%;">
	                                   <col style="width:11%;">
	                                   <col style="width:11%;">
	                                   <col style="width:11%;">
	                                   <col style="width:11%;">
	                                   <col style="width:11%;">
	                                   <col style="width:11%;"></colgroup>
	                                   <thead>
	                                   <tr><th scope="row">진료과</th>
	                                   <th scope="row">월</th>
	                                   <th scope="row">화</th>
	                                   <th scope="row">수</th>
	                                   <th scope="row">목</th>
	                                   <th scope="row">금</th>
	                                   <th scope="row">토</th></tr></thead>
	                                   <tbody><tr><th scope="col"></th>
	                                   <td></td>
	                                   <td></td>
	                                   <td></td>
	                                   <td></td>
	                                   <td></td>
	                                   <td></td></tr></tbody></table></div>
	                                   <div class="doc_btm_area">
	                                   <a href="javascript:void(0);" class="btn_select btn_select_343" onclick="javascript:fn_SelProf('343','01268','신승용','b5bb0ee2-20d3-4cb0-bb12-b7112d333b4c','O','undefined');">
	                                   <!-- onclick="javascript:fn_SelProf('343','01268','신승용','b5bb0ee2-20d3-4cb0-bb12-b7112d333b4c','O','undefined');" -->
	                                   
	                                   <span>선택하기</span></a>
	                                   
	                                   <!-- 자세히 보기 의사 상세 페이지 주석처리 
	                                    onclick="statusChange(this);"
	                                   
	                                   
	                                   
	                                   <a href="javascript:fn_DeatilPop('home','108','343','01268');" class="btn_detail">  
	                                   <span class="skip">자세히보기</span></a>
	                                   -->
	                                   
	                                   </div></li>
	                                   
	                                    
										<!-- 여기서부터는 안 고친 의사 목록들  fasdfsadf -->

	                                   
	                                   <li style="max-width:360px;">
	                                   <div class="doc_info fix">
	                                   <div class="doc_img_wrap">
	                                   <img src="../../../../resources/img/doctor/IztTwScLCcbdgk0k6N0w8LXyAe1u_nffNR6aq6axCepTsrkmzNladqTQkX0oKpOY3M9-f30Bgh1VaY-88L7tsg.webp" alt="김은주"></div>
	                                   <div class="doc_txt"><span class="doc_name">김은주</span>
	                                   <span class="doc_explain">소화기질환, 간질환(급/만성간염, 지방간, 간경변증, 간세포암), 진단 및 치료내시경, 간이식</span></div></div>
	                                   <div class="sche_table_wrap">
	                                   <table>
	                                   <colgroup>
	                                   <col style="width:34%;">
	                                   <col style="width:11%;">
	                                   <col style="width:11%;">
	                                   <col style="width:11%;">
	                                   <col style="width:11%;">
	                                   <col style="width:11%;">
	                                   <col style="width:11%;"></colgroup>
	                                   <thead>
	                                   <tr><th scope="row">진료과</th>
	                                   <th scope="row">월</th>
	                                   <th scope="row">화</th>
	                                   <th scope="row">수</th>
	                                   <th scope="row">목</th>
	                                   <th scope="row">금</th>
	                                   <th scope="row">토</th></tr></thead>
	                                   <tbody><tr><th scope="col"></th>
	                                   <td></td>
	                                   <td></td>
	                                   <td></td>
	                                   <td></td>
	                                   <td></td>
	                                   <td></td>
	                                   </tr></tbody></table></div>
	                                   <div class="doc_btm_area">
	                                   <a href="javascript:void(0);" class="btn_select btn_select_377" onclick="javascript:fn_SelProf('377','01404','김은주','1d01801c-01a5-425f-a93f-92db73f38b61','O','undefined');">
	                                   <span>선택하기</span></a>
	                                   <!-- 자세히 보기 주석 처리
	                                   <a href="javascript:fn_DeatilPop('home','108','377','01404');" class="btn_detail"><span class="skip">자세히보기</span></a>
	                                   -->
	                                   </div></li>
	                                   <li style="max-width:360px;">
	                                   <div class="doc_info fix">
	                                   <div class="doc_img_wrap">
	                                   <img src="../../../../resources/img/doctor/Xx0SD9hh27UW4k8vptnYJ0M5cG4AZjcXHcZ35YOy-N8XHO_3uKHXqFuzYgi2jAfPBg9J4e8XNyoFQ8SlAgzlYA.webp" alt="문정민"></div>
	                                   <div class="doc_txt"><span class="doc_name">문정민</span>
	                                   <span class="doc_explain">소화기질환, 대장질환(대장암, 대장용종, 크론병, 궤양성대장염, 과민성장증후군, 변비), 소장질환, 진단 및 치료내시경</span></div></div>
	                                   <div class="sche_table_wrap">
	                                   <table>
	                                   <colgroup>
	                                   <col style="width:34%;">
	                                   <col style="width:11%;">
	                                   <col style="width:11%;">
	                                   <col style="width:11%;">
	                                   <col style="width:11%;">
	                                   <col style="width:11%;">
	                                   <col style="width:11%;"></colgroup>
	                                   <thead><tr><th scope="row">진료과</th>
	                                   <th scope="row">월</th>
	                                   <th scope="row">화</th>
	                                   <th scope="row">수</th>
	                                   <th scope="row">목</th>
	                                   <th scope="row">금</th>
	                                   <th scope="row">토</th></tr></thead>
	                                   <tbody><tr><th scope="col"></th>
	                                   <td></td>
	                                   <td></td>
	                                   <td></td>
	                                   <td></td>
	                                   <td></td>
	                                   <td></td>
	                                   </tr></tbody></table></div>
	                                   <div class="doc_btm_area">
	                                   <a href="javascript:void(0);" class="btn_select btn_select_330" onclick="javascript:fn_SelProf('330','01351','문정민','a86d95e6-3049-4f4c-95b1-5e4c02b378c8','O','undefined');">
	                                   <span>선택하기</span></a>
	                                   <!-- 자세히 보기 주석 처리
	                                   <a href="javascript:fn_DeatilPop('home','108','330','01351');" class="btn_detail"><span class="skip">자세히보기</span></a>
	                                   -->
	                                   </div></li>
	                                   <li style="max-width:360px;"><div class="doc_info fix"><div class="doc_img_wrap">
	                                   <img src="../../../../resources/img/doctor/YstnT6LLDLhWVuUrpJRCDMYAsprwL9yyv0JKlstohLIXvBdqNmQW4pu9H5kXY0N2gvzdfEFjzBLx-V2csLUsYQ.webp" alt="김상훈"></div><div class="doc_txt"><span class="doc_name">김상훈</span>
	                                   <span class="doc_explain">위질환 (위염, 위선종, 위암, 점막하종양, 기능성 소화불량증), 식도질환 (역류성식도질환, 식도암), 초음파내시경, 치료내시경</span></div></div>
	                                   <div class="sche_table_wrap">
	                                   <table>
	                                   <colgroup>
	                                   <col style="width:34%;">
	                                   <col style="width:11%;">
	                                   <col style="width:11%;">
	                                   <col style="width:11%;">
	                                   <col style="width:11%;">
	                                   <col style="width:11%;">
	                                   <col style="width:11%;"></colgroup>
	                                   <thead><tr><th scope="row">진료과</th>
	                                   <th scope="row">월</th>
	                                   <th scope="row">화</th>
	                                   <th scope="row">수</th>
	                                   <th scope="row">목</th>
	                                   <th scope="row">금</th>
	                                   <th scope="row">토</th></tr></thead>
	                                   <tbody><tr><th scope="col"></th>
	                                   <td></td>
	                                   <td></td>
	                                   <td></td>
	                                   <td></td>
	                                   <td></td>
	                                   <td></td></tr></tbody></table></div>
	                                   <div class="doc_btm_area">
	                                   <a href="javascript:void(0);" class="btn_select btn_select_1058" onclick="javascript:fn_SelProf('1058','01631','김상훈','ad319802-240f-45fc-b7be-649bbb973153','O','undefined');">
	                                   <span>선택하기</span></a>
	                                   <!-- 자세히 보기 주석 처리
	                                   <a href="javascript:fn_DeatilPop('home','108','1058','01631');" class="btn_detail">
	                                   <span class="skip">자세히보기</span></a>
	                                   -->
	                                   </div></li>
	                                   <li style="max-width:360px;"><div class="doc_info fix">
	                                   <div class="doc_img_wrap">
	                                   <img src="../../../../resources/img/doctor/ZsOSa9eO3N4Muc4W4hBAvBUG33AEvnPWIJUv63SbXp2tsU7Upe5z4Jp-hOI0S_PMn79XPHvmiXx4AtxN3OwZbg.webp" alt="김종혁"></div>
	                                   <div class="doc_txt">
	                                   <span class="doc_name">김종혁</span>
	                                   <span class="doc_explain">소화기질환, 췌장질환(췌장염, 췌장낭종, 췌장암), 담도질환(담석, 담낭염, 담도염, 담낭용종, 담낭암), 진단 및 치료내시경, 초음파 내시경</span>
	                                   <!-- <span class="doc_explain">소화기질환, 췌장질환(췌장염, 췌장낭종, 췌장암), 담도질환(담석, 담낭염, 담도염, 담낭용종, 담낭암), 진단 및 치료내시경, 초음파 내시경</span> --></div></div>
	                                   <div class="sche_table_wrap">
	                                   <table>
	                                   <colgroup>
	                                   <col style="width:34%;">
	                                   <col style="width:11%;">
	                                   <col style="width:11%;">
	                                   <col style="width:11%;">
	                                   <col style="width:11%;">
	                                   <col style="width:11%;">
	                                   <col style="width:11%;"></colgroup>
	                                   <thead><tr><th scope="row">진료과</th>
	                                   <th scope="row">월</th>
	                                   <th scope="row">화</th>
	                                   <th scope="row">수</th>
	                                   <th scope="row">목</th>
	                                   <th scope="row">금</th>
	                                   <th scope="row">토</th></tr></thead>
	                                   <tbody><tr><th scope="col"></th>
	                                   <td></td>
	                                   <td></td>
	                                   <td></td>
	                                   <td></td>
	                                   <td></td>
	                                   <td></td></tr></tbody></table></div>
	                                   <div class="doc_btm_area">
	                                   <a href="javascript:void(0);" class="btn_select btn_select_951" onclick="javascript:fn_SelProf('951','01527','김종혁','7fd661d4-6e80-4d4f-8900-6b04cd214db0','O','undefined');">
	                                   <span>선택하기</span></a>
	                                   <!-- 자세히 보기 주석 처리
	                                   <a href="javascript:fn_DeatilPop('home','108','951','01527');" class="btn_detail"><span class="skip">자세히보기</span></a>
	                                   -->
	                                   </div></li>
	                                   <li style="max-width:360px;">
	                                   <div class="doc_info fix">
	                                   <div class="doc_img_wrap">
	                                   <img src="../../../../resources/img/doctor/QqluvcSXj7sGwiNrS8Thsyr_iK9zeA3_ZF9zsbMla3aZBh9mus6X-cGoXyMz7vE3cyHp1JBswBA7GjZDWMO51g.webp" alt="장정인"></div>
	                                   <div class="doc_txt">
	                                   <span class="doc_name">장정인</span>
	                                   <span class="doc_explain">소화기질환, 간질환(급/만성간염, 지방간, 간경변증, 간세포암), 진단 및 치료내시경, 간이식</span></div></div>
	                                   <div class="sche_table_wrap">
	                                   <table>
	                                   <colgroup>
	                                   <col style="width:34%;">
	                                   <col style="width:11%;">
	                                   <col style="width:11%;">
	                                   <col style="width:11%;">
	                                   <col style="width:11%;">
	                                   <col style="width:11%;">
	                                   <col style="width:11%;"></colgroup>
	                                   <thead><tr><th scope="row">진료과</th>
	                                   <th scope="row">월</th>
	                                   <th scope="row">화</th>
	                                   <th scope="row">수</th>
	                                   <th scope="row">목</th>
	                                   <th scope="row">금</th>
	                                   <th scope="row">토</th></tr></thead>
	                                   <tbody><tr><th scope="col"></th>
	                                   <td></td>
	                                   <td></td>
	                                   <td></td>
	                                   <td></td>
	                                   <td></td>
	                                   <td></td></tr></tbody></table></div>
	                                   <div class="doc_btm_area">
	                                   <a href="javascript:void(0);" class="btn_select btn_select_315" onclick="javascript:fn_SelProf('315','01459','장정인','5dbd6002-f353-4f83-87f2-42d83e86d516','O','undefined');">
	                                   <span>선택하기</span></a>
	                                   <!-- 자세히 보기 주석 처리
	                                   <a href="javascript:fn_DeatilPop('home','108','315','01459');" class="btn_detail"><span class="skip">자세히보기</span></a>
	                                   -->
	                                   </div></li></ul>
	                              		
	                               
	                               
	                               
	                               </div>
	                           </div>
	                           <!-- // 의료진 리스트 -->
	                       </div>

	                   </div>
	                   <!-- // 의료진 선택 -->
	               </div>
	               <!-- // 예약 항목-->
	               
	               
	               
					<!-- 의사 이름 가져오는 스크립트 내가 만듦 -->
	                             <!--       
	                        <script>

							function statusChange(statusItem ){
							
							   // strText 에 전체 문자열이 입력된다.
							  //$("#tt").val(strText);
							   
							   //var doctorname= $(statusItem).text();
							   
							   var doctorname = document.getElementById("d1").innerHTML;
							  // var doctorname = document.getElementById("d2").innerHTML;
							   $("#doctorname").val(doctorname);
							}
							
							function statusChange1(statusItem ){
								
								   // strText 에 전체 문자열이 입력된다.
								  //$("#tt").val(strText);
								   
								   //var doctorname= $(statusItem).text();
								   
								   var doctorname = document.getElementById("d2").innerHTML;
								  // var doctorname = document.getElementById("d2").innerHTML;
								   $("#doctorname").val(doctorname);
								}
							
														
							</script> 
	               
	                -->
	               

	               

	               <!-- 예약결과 -->
	               <div class="result_wrap">
	                   <p class="tit">예약하실 정보 확인</p>

	                   <div class="dec_list_wrap">
	                       <dl>
	                           <dt>진료과</dt>
	                           <dd class="c_dept">
	                           		<span>${param.selDeptNm}</span>
	                           </dd>
	                       </dl>
	                       <dl>
	                           <dt>의료진</dt>
	                           <dd class="c_doctor" id="selProf">
	                               <span class="empty_txt">선택된 의료진이 없습니다.</span>
	                               
	                               <span class="empty_txt">
	                              <!--  <input type="text" id="doctorname" value="선택된 의료진이 없습니다.">   -->   <!-- 선택한 의사 값 가져오는 input 내가 추가함 -->
	                               </span>
	                               
	                               
	                               
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
	                       <li><em>01</em> 진료과 선택</li>
	                       <li class="on"><em>02</em> 의료진 선택</li>
	                       <li><em>03</em> 진료시간 선택</li>
	                   </ol>
	                   <!-- //  진행현황 -->
	               </div>
	               <!-- // 예약결과 -->

	               <!-- 버튼 -->
	               <div class="reservation_btn_wrap fix">
	                   <a href="javascript:void(0);" class="btn_step_prev btnClose" onclick="location.href='http://localhost:8080//home/reserveNew/step1Pop.do'"><span>이전</span></a>
	                   <!-- <a href="javascript:void(0);" class="btn_step_next" onclick="location.href='http://localhost:8080//home/reserveNew/step3Pop.do'"><span>다음</span></a> -->
	                   <a href="javascript:void(0);" class="btn_step_next" onclick="javascript:fn_Step(3);"><span>다음</span></a>
	               </div>
	               <!-- // 버튼 -->

	           </div>
	       </div>
		</div>
		<!-- //진료예약 -->

		<!-- 18세미만 예약확인 팝업 -->
		<div class="reservation_popup_wrap" style="display:none;" id="resvAdultYnO">
			<div class="popup_dim"></div>
			<div class="popup_inner">
				<div class="popup_header"></div>
				<div class="popup_content">
					<div class="con_txt">강민채님<em class="m_block"></em>
						<strong id="strTime"></strong><em class="m_block"></em>
						<strong>선택하신 교수님은<br><span id="popTxt">만 18세 이상 진료가 불가능 합니다.</span></strong>
					</div>
				</div>
				<div class="btn_area">
					<a href="javascript:void(0);" class="btn_pop_sty1 popClose"><span>확인</span></a>
				</div>
			</div>
		</div>
		<!-- // 18세미만 예약확인 팝업 -->

		<!-- 18세이상 예약확인 팝업 -->
		<div class="reservation_popup_wrap" style="display:none;" id="resvAdultYnU">
			<div class="popup_dim"></div>
			<div class="popup_inner">
				<div class="popup_header"></div>
				<div class="popup_content">
					<div class="con_txt">강민채님<em class="m_block"></em>
						<strong id="strTime"></strong><em class="m_block"></em>
						<strong>선택하신 교수님은<br>만 18세 미만 진료가 불가능 합니다.</strong>
					</div>
				</div>
				<div class="btn_area">
					<a href="javascript:void(0);" class="btn_pop_sty1 popUpClose"><span>확인</span></a>
				</div>
			</div>
		</div>
		<!-- // 18세이상 예약확인 팝업 -->
	</form>
</body></html>