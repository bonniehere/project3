<%@page import="com.constant01.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko"><head>
	<meta charset="utf-8">
	<meta name="naver-site-verification" content="849c04934bea773f229f28c0e13b1c2352c041ae">
	<meta http-equiv="Content-Script-Type" content="text/javascript">
	<meta http-equiv="Content-Style-Type" content="text/css">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Expires" content="-1">
    <meta http-equiv="Pragma" content="no-cache">
	<meta http-equiv="Pragma" content="no-cache">
	<meta http-equiv="Expires" content="-1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimun-scale=1.0, user-scalable=no, target-densitydpi=medium-dpi, viewport-fit=cover">
	<title>중앙대학교광명병원</title>
	<meta name="description" content="진료문의 1811-7800 / 환자중심의 디지털 혁신 병원, 수도권 서남부 거점 대학병원">
	<meta name="keywords" content="중앙대학교의료원, 중앙대학교병원, 중앙대학교광명병원, 진료과, 진료안내, 진료예약, 병원소개, 건강정보, 의료진, 고객서비스, 처방정보, 건강증진센터, 증명서발급">
	<meta name="title" content="중앙대학교광명병원">
	<meta property="og:site_name" content="중앙대학교광명병원">
	<meta property="og:title" content="중앙대학교광명병원">
	<meta property="og:description" content="진료문의 1811-7800 / 환자중심의 디지털 혁신 병원, 수도권 서남부 거점 대학병원">
	<!-- 
	<link rel="shortcut icon" href="/common/front/home/favicon.ico" type="image/x-icon">
	<link rel="icon" href="/common/front/home/favicon.ico" type="image/x-icon">
	<link type="text/css" rel="stylesheet" href="/common/front/home/css/default.css?ver=20230905">
	<link type="text/css" rel="stylesheet" href="/common/front/home/css/swiper-bundle.min.css?ver=1">
	<link type="text/css" rel="stylesheet" href="/common/front/home/css/reservation.css?ver=1">
	<link type="text/css" rel="stylesheet" href="/common/front/home/css/floor.css?ver=1">
	<link type="text/css" rel="stylesheet" href="/common/front/home/css/intro.css?ver=1">
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
	<script type="text/javascript" src="/common/admmgr/js/frameLayer.js"></script>
	<script type="text/javascript" src="/common/admmgr/js/calendar.js"></script>
	<script type="text/javascript" src="/plug-in/c3r/CommonUtil.c3r-custom.js"></script>
	-->
	<link rel="shortcut icon" href="../../resources/css/favicon.ico" type="image/x-icon">
	<link rel="icon" href="../../resources/css/favicon.ico" type="image/x-icon">
	<link type="text/css" rel="stylesheet" href="../../resources/css/default.css?ver=20230905">
	<link type="text/css" rel="stylesheet" href="../../resources/css/swiper-bundle.min.css?ver=1">
	<link type="text/css" rel="stylesheet" href="../../resources/css/reservation.css?ver=1">
	<link type="text/css" rel="stylesheet" href="../../resources/css/floor.css?ver=1">
	<link type="text/css" rel="stylesheet" href="../../resources/css/intro.css?ver=1"> 
	<script type="text/javascript" src="../../resources/js/jquery-1.11.0.min.js"></script>
	<script type="text/javascript" src="../../resources/js/jquery-ui.min.js"></script>
	<script type="text/javascript" src="../../resources/js/design.js"></script>
	<script type="text/javascript" src="../../resources/js/swiper.min.js"></script>
	<script type="text/javascript" src="../../resources/js/rolling.js"></script>
	<script type="text/javascript" src="../../resources/js/scrolla.jquery.js"></script>
	<script type="text/javascript" src="../../resources/js/scrolloverflow.js"></script>
	<script type="text/javascript" src="../../resources/js/fullpage.js"></script>
	<script type="text/javascript" src="../../resources/js/scrolla.jquery.js"></script>
	<script type="text/javascript" src="../../resources/js/common.js"></script>
	<script type="text/javascript" src="../../resources/js/frameLayer.js"></script>
	<script type="text/javascript" src="../../resources/js/calendar.js"></script>
	<script type="text/javascript" src="../../resources/js/CommonUtil.c3r-custom.js"></script>
	
	<script type="text/javascript">
		if( window.location.href.indexOf('www.cauhs.or.kr') > -1){
			location.href='https://ch.cauhs.or.kr/group/';
		}

		// ie로 접속할 경우
		if(/MSIE \d|Trident.*rv:/.test(navigator.userAgent)) {
			window.location = 'microsoft-edge:' + window.location;

			setTimeout(function() {
			window.location = 'https://go.microsoft.com/fwlink/?linkid=2135547';
			}, 1);
		}

		//엔터 기능 제한
		$(document).ready(function(){
			$('.bonaChat').on('click', function(){
				bonachat();
	        });

			$("#mainKeyWord").keydown(function(key){
				if( key.keyCode == 13 ){
					fn_TotalSearch('mainKeyWord');
					return false;
				}
			});
			$("#subKeyWord").keydown(function(key){
				if( key.keyCode == 13 ){
					fn_TotalSearch('subKeyWord');
					return false;
				}
			});

			$("#resvUserNm,#resvMobileNo").keydown(function(key){
				if( key.keyCode == 13 ){
					fn_QuickReservOpen();
					return false;
				}
			});
			/* $("#searchword2").keydown(function(key){
				if( key.keyCode == 13 ){fn_MoveSearch("DEPT");return false;}
			}); */

			/*
			//안내팝업 임시소스(해당기간지나면 지울예정)  ... yeon
			var now = new Date();
			var year = now.getFullYear();
			var month = now.getMonth()+1;
			var date = now.getDate();
			if(date<10) date="0"+date;
			var hour = now.getHours();
			if(hour<10) hour="0"+hour;
			var todayA = month+""+date+""+hour;
			if(todayA<20713){
				//2023.02.02 ~ 2023.02.07 13pm [변경민교수]
				$("#topPop").show();
				$("#popId").attr("src", "../../resources/img/img_pop_230201gm.jpg");
			}else if(todayA<21413){
				//2023.02.17 13pm ~ 2023.02.14 13pm [최현진교수]
				$("#topPop").show();
				$("#popId").attr("src", "../../resources/img/img_pop_230207gm.jpg");
			}else if(todayA<22113){
				//2023.02.14 13pm ~ 2023.02.21 13pm [조준환교수]
				$("#topPop").show();
				$("#popId").attr("src", "../../resources/img/img_pop_230214_gm.jpg");
			}else if(todayA<22813){
				//2023.02.21 13pm ~ 2023.02.28 13pm [이안복교수]
				$("#topPop").show();
				$("#popId").attr("src", "../../resources/img/img_pop_230221gm.jpg");
			}else if(todayA<30713){
				//2023.02.28 13pm ~ 2023.03.07 13pm [이상엽,하삼열교수]
				$("#topPop").show();
				$("#popId").attr("src", "../../resources/img/img_pop_230307gm.jpg");
			}else if(todayA<31413){
				//2023.03.07 13pm ~ 2023.03.14 13pm [황지웅교수]
				$("#topPop").show();
				$("#popId").attr("src", "../../resources/img/img_pop_230314gm.jpg");
			}else if(todayA<32113){
				//2023.03.14 13pm ~ 2023.03.21 13pm [조은정,한우식교수]
				$("#topPop").show();
				$("#popId").attr("src", "../../resources/img/img_pop_230321_gm.jpg");
			}else if(todayA<32813){
				//2023.03.21 13pm ~ 2023.03.28 13pm [하헌균교수]
				$("#topPop").show();
				$("#popId").attr("src", "../../resources/img/img_pop_230328gm.jpg");
			}else if(todayA<40413){
				//2023.03.28 13pm ~ 2023.04.04 13pm [송혜근교수]
				$("#topPop").show();
				$("#popId").attr("src", "/common/front/home/images/popup/img_pop_230404gm.png");
			}else if(todayA<41113){
				//2023.04.04 13pm ~ 2023.04.11 13pm [김지혜교수]
				$("#topPop").show();
				$("#popId").attr("src", "/common/front/home/images/popup/img_pop_230411gm.png");
			}else if(todayA<41813){
				//2023.04.11 13pm ~ 2023.04.18 13pm [배정훈교수]
				$("#topPop").show();
				$("#popId").attr("src", "/common/front/home/images/popup/img_pop_230418gm.png");
			}else if(todayA<42513){
				//2023.04.18 13pm ~ 2023.04.25 13pm [박송이교수]
				$("#topPop").show();
				$("#popId").attr("src", "/common/front/home/images/popup/img_pop_230425gm.png");
			}
			/* else if(todayA<50213){
				//2023.04.25 13pm ~ 2023.05.02 13pm [한국남교수]
				$("#topPop").show();
				$("#popId").attr("src", "/common/front/home/images/popup/img_pop_230502gm.jpg");
			} */
			/*
			else if(todayA<50600){
				//5월휴진안내팝업 (5/5까지 게시)
				$("#topPop").hide();
				$("#popId").attr("src", "/common/front/home/images/popup/img_popup230427gh.png");
			}
			else if(todayA<50913){
				//2023.05.02 13pm ~ 2023.05.09 13pm [방창환교수]
				$("#topPop").show();
				$("#popId").attr("src", "/common/front/home/images/popup/img_pop_230509gm.jpg");
			}else if(todayA<51613){
				//2023.05.09 13pm ~ 2023.05.16 13pm [유희준교수]
				$("#topPop").show();
				$("#popId").attr("src", "/common/front/home/images/popup/img_pop_230516gm.jpg");
			}
			//휴진안내팝업 start
			else if(todayA<52210){
				//2023.05.16 13pm ~ 2023.05.23 13pm [장경민교수]
				$("#topPop").show();
				$("#popId").attr("src", "/common/front/home/images/popup/img_pop_230523gm.jpg");
			}
			else if(todayA<52918){
				//2023.05.22 ~ 2023.05.29 18pm 휴진안내팝업
				$("#topPop").hide();
				$("#popId").attr("src", "/common/front/home/images/popup/img_pop_230522gm.jpg");
			}
			//휴진안내팝업 end
			else if(todayA<53013){
				//2023.05.23 13pm ~ 2023.05.30 13pm [김정훈,조세민교수]
				$("#topPop").show();
				$("#popId").attr("src", "/common/front/home/images/popup/img_pop_230530gm.jpg");
			}else if(todayA<61313){
				//2023.05.30 13pm ~ 2023.06.13 13pm [김범석교수]
				$("#topPop").show();
				$("#popId").attr("src", "/common/front/home/images/popup/img_pop_230613gm.jpg");
			}else if(todayA<62013){
				//2023.06.13 13pm ~ 2023.06.20 13pm [위성현교수]
				$("#topPop").show();
				$("#popId").attr("src", "/common/front/home/images/popup/img_pop_230620gm.jpg");
			}else if(todayA<62713){
				//2023.06.20 13pm ~ 2023.06.27 13pm [박용범교수]
				$("#topPop").show();
				$("#popId").attr("src", "/common/front/home/images/popup/img_pop_230627gm.jpg");
			}else if(todayA<70413){
				//2023.06.30 ~ 2023.07.04 13pm [정재훈교수]
				$("#topPop").show();
				$("#popId").attr("src", "/common/front/home/images/popup/img_pop_230704gm.jpg");
			}else if(todayA<71113){
				//2023.07.04 13pm ~ 2023.07.11 13pm [김응수교수]
				$("#topPop").show();
				$("#popId").attr("src", "/common/front/home/images/popup/img_pop_230711gm.jpg");
			}else if(todayA<71813){
				//2023.07.11 13pm ~ 2023.07.18 13pm [이유경교수]
				$("#topPop").show();
				$("#popId").attr("src", "/common/front/home/images/popup/img_pop_230718gm.jpg");
			}else if(todayA<72513){
				//2023.07.18 13pm ~ 2023.07.25 13pm [김응수교수]
				$("#topPop").show();
				$("#popId").attr("src", "/common/front/home/images/popup/img_pop_230725gm.jpg");
			}else if(todayA<80113){
				//2023.07.25 13pm ~ 2023.08.01 13pm [유광호교수]
				$("#topPop").show();
				$("#popId").attr("src", "/common/front/home/images/popup/img_pop_230801gm.jpg");
			}else if(todayA<80813){
				//2023.08.01 13pm ~ 2023.08.08 13pm [정형석교수]
				$("#topPop").show();
				$("#popId").attr("src", "/common/front/home/images/popup/img_pop_230808gm.jpg");
			}else if(todayA<100101){
				$("#oneImg").hide();
				$("#twoImg").hide();
				$("#oneImgA").show();
			}else if(todayA>=100101){
				$("#oneImg").show();
				$("#twoImg").hide();
				$("#oneImgA").hide();
			}



			fn_Pop();
			fn_LayerPop();
			*/
			//병원알림 5초간격으로 탭이동
			var cnt = 0;
			setInterval(function() {
				if( cnt > 2 ){
					cnt = 0;
				}
				$("#board_name li").eq(cnt).trigger("click");
				cnt += 1 ;
			}, 5000);
			$("#board_name li").click(function(){
				var index = $("#board_name li").index(this);
				$('.btn_main_more a').hide();
				$('.btn_main_more a.btn' + index).show();
				//fn_mainBoardListAjax(index); //게시판 목록 호출 ajax ... 탭 변경될때마다 데이터조회해서 과부화 될듯하여 주석처리
				$("#board_name li").attr("class","");
				$("#board_name li").eq(index).attr("class","on");
				$("#notice_list_0").hide();
				$("#notice_list_1").hide();
				$("#notice_list_2").hide();
				$("#notice_list_"+index).show();
			});

			var cookieCheck = fn_PopYn("layerpop");
		   	if( cookieCheck == "done" ){
		   		layer_close();
		   	}
		   	
		   	if(Mobile()){
				$("#reserveView").css("display","block");
			}
		   	
		});
		function bonachat(){
			var popWidth  = 0;
			var popHeight = 0;
			var screenWidth  = window.screen.width;
			var screenHeight = window.screen.height;
			if(Mobile()){
				popWidth  = screenWidth;
				popHeight = screenHeight;
			}else{
				popWidth  = 410;
				popHeight = 660;
			}
			 window.open('https://gchatbot.cauhs.or.kr:11005/CAG', '챗봇', 'width='+popWidth+'px, height='+popHeight+'px, scrollbars=yes, resizable=no')
		}

		function fn_Detail(siteCd,menuCd,boardMngNo,boardNo){
			//debugger;
			var url = "/home/board/all/"+boardMngNo+"_View.do";
			$("#siteCd").val(siteCd);
			$("#menuCd").val(menuCd);
			$("#boardMngNo").val(boardMngNo);
			$("#boardNo").val(boardNo);
			$("#frm").attr("action", url);
			$("#frm").submit();
		}
		function fn_List(siteCd,menuCd,boardMngNo,boardNo){
			var url = "/home/board/"+boardMngNo+"_List.do";
			$("#siteCd").val(siteCd);
			$("#menuCd").val(menuCd);
			$("#boardMngNo").val(boardMngNo);
			$("#boardNo").val(boardNo);
			$("#frm").attr("action", url);
			$("#frm").submit();
		}
		function fn_SearchKeyWord(keyword){
			$("#hspCd").val("G");
			$("#keyword").val(keyword);
			$("#frm").attr("action", "/home/keywordSearchProc.do");
			$("#frm").submit();
		}
		// 빠른예약 팝업
		function fn_QuickReservOpen(){
			if( $("#resvUserNm").val() == "" ){
				alert("이름을 입력해 주세요.");
				$("#resvUserNm").focus();
				return false;
			}
			if( $("#resvMobileNo").val() == "" ){
				alert("연락처를 입력해 주세요.");
				$("#resvMobileNo").focus();
				return false;
			}
			$("#per_info_layer_pop").css({"visibility":"visible"});
		}
		// 빠른예약 팝업 닫기
		function fn_QuickReservClose(){
			$("#per_info_layer_pop").css({"visibility":"hidden"});
		}
		// 빠른예약
		function fn_QuickReservation(){
			if( !$("#check_agree1").is(":checked") ){
		        alert("개인정보의 수집·이용 동의는 필수사항입니다.");
		        $("#check_agree1").focus();
		        return false;
		    }
			var confirmMsg = "";
			confirmMsg += "예약자명 : "+$("#resvUserNm").val()+"\n";
			confirmMsg += "연락처 : "+$("#resvMobileNo").val()+"\n";
			confirmMsg += "위의 내용으로 신청하시겠습니까?";
			if( confirm(confirmMsg) ){
				$("#frm").attr("action","/home/reserve/resvOfflineWriteProc.do");
				$("#frm").attr("target","_self");
				$("#frm").submit();
				/*
				$.ajax({
					url         : "/home/reserve/resvOfflineWriteProc.do",
					type        : "POST",
					data		: {
						"resvUserNm"  : $("#resvUserNm").val(),
						"resvMobileNo" : $("#resvMobileNo").val()
					},
					success     : function(data){
						var rData = $.parseJSON(data);
						if( rData ){

						}else{
							alert("빠른예약 중 오류가 발생하였습니다.");
						}
					}
				});
				*/
			}
		}
		function fn_LayerOpen(workType){
			var layerTitle  = "";
			var layerHeight = "";
			var layerScroll = "";
			if( workType == "Dept" ){
				layerTitle  = "진료과 검색";
				layerHeight = "700";
				layerScroll = "yes";
			}else if( workType == "Disease" ){
				layerTitle = "질환명 검색";
				layerHeight = "585";
				layerScroll = "yes";
			}else if( workType == "Part" ){
				layerTitle = "아픈부위 검색";
				layerHeight = "400";
				layerScroll = "no";
			}
			FrameLayer.open("/home/mainLayer.do","1000",layerHeight,layerScroll,{
				"layerTitle" : layerTitle,
				"workType"   : workType,
				"deptNo"     : $("#deptNo").val(),
				"deptNm"     : $("#spanDept").text(),
				"diseaseNo"  : $("#diseaseNo").val(),
				"diseaseNm"  : $("#spanDisease").text(),
				"partCd"     : $("#partCd").val(),
				"partNm"     : $("#spanPart").text()
			});
		}
		function G_newFormSubmit(json){
			if( json != undefined ){
				$("form#tmpForm").remove();
				var oForm = $("<form/>",{
					id     : "tmpForm",
					name   : "tmpForm",
					method : "POST",
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
		function fn_SmartSearch(){
			G_newFormSubmit({
				"action" : "/home/search/diseaseList.do",
				"param"  : {
					"deptNo"    : $("#deptNo").val(),
					"deptNm"    : $("#spanDept").text(),
					"diseaseNo" : $("#diseaseNo").val(),
					"diseaseNm" : $("#spanDisease").text(),
					"partCd"    : $("#partCd").val(),
					"partNm"    : $("#spanPart").text()
				}
			});
		}
		
		
		function fn_TotalSearch(obj){
			if($.type(obj) != 'string'){
				if( obj != undefined && $(obj).html().indexOf('#') != -1 ){
					var totalWord = $(obj).html().replaceAll("#","");
					$("#totalWord").val(totalWord);
				}
			}
			if( obj == 'mainKeyWord'){
				if($("#mainKeyWord").val() == "" ){
					alert("검색어를 입력해 주세요.");
					$("#mainKeyWord").focus();
					return false;
				}else if( $("#mainKeyWord").val().length < 2 ){
					alert("검색어를 두글자 이상 입력해 주세요.");
					$("#mainKeyWord").focus();
					return false;
				}else{
					$("#totalWord").val($("#mainKeyWord").val());
				}
			}else if(obj == 'subKeyWord'){
				if($("#subKeyWord").val() == "" ){
					alert("검색어를 입력해 주세요.");
					$("#subKeyWord").focus();
					return false;
				}else if( $("#subKeyWord").val().length < 2 ){
					alert("검색어를 두글자 이상 입력해 주세요.");
					$("#subKeyWord").focus();
					return false;
				}else{
					$("#totalWord").val($("#subKeyWord").val());
				}
			}
			$("#frm").attr("action","/home/search/totalList.do").submit();
		}
		// 팝업 여부
		function fn_Pop(){
		   var cookieCheck = fn_PopYn("popYn");
		   if( cookieCheck != "N" ){
		      $(".header_banner").css({"display":"block"});
		   }else{
		      $(".header_banner").css({"display":"none"});
		      $(".body_wrapper").addClass("close_h_pop");
		   }
		}
		// 팝업  쿠키가져오기
		function fn_PopYn( name ){
		   var cookie = document.cookie;
		   if( document.cookie != "" ){
		      var cookie_array = cookie.split("; ");
		      for ( var index in cookie_array ){
		         var cookie_name = cookie_array[index].split("=");
		         if( cookie_name[0] == "popYn" ){
		            return cookie_name[1];
		         }
		      }
		   }
		   return ;
		}
		// 팝업 닫기
		function fn_PopClose(){
		   var chk = $("input:checkbox[id='todaycc']").is(":checked");
		   if( chk ){
		      var date = new Date();
		        date.setDate(date.getDate() + 1);
		        document.cookie = escape('popYn') + "=" + escape('N') + "; expires=" + date.toUTCString();
		   }
		   $(".body_wrapper").addClass("close_h_pop");
		   $(".header_banner").css({"display":"none"});
		}
		// 레이어 팝업 여부
		function fn_LayerPop(){
		   var cookieCheck = fn_LayerPopYn("layerPopYn");
		   if( cookieCheck != "N" ){
		      $(".bh_main_open_event_pop").css({"display":""});
		   }else{
		      $(".bh_main_open_event_pop").css({"display":"none"});
		   }
		}
		// 레이어 팝업  쿠키가져오기
		function fn_LayerPopYn( name ){
		   var cookie = document.cookie;
		   if( document.cookie != "" ){
		      var cookie_array = cookie.split("; ");
		      for ( var index in cookie_array ){
		         var cookie_name = cookie_array[index].split("=");
		         if( cookie_name[0] == name ){
		        	 console.log("["+cookie_name[0]+"]==["+cookie_name[1]+"]=================================================")
		            return cookie_name[1];
		         }
		      }
		   }
		   return ;
		}
		// 레이어 팝업 닫기
		function fn_LayerPopClose(){
		   var chk = $("input:checkbox[id='todaycc_m']").is(":checked");
		   if( chk ){
		      var date = new Date();
		        date.setDate(date.getDate() + 1);
		        document.cookie = escape('layerPopYn') + "=" + escape('N') + "; expires=" + date.toUTCString();
		   }
		   //$(".body_wrapper").addClass("close_h_pop");
		   $(".bh_main_open_event_pop").css({"display":"none"});
		}

		function fn_goMenu(menuUrl){
			var refererUrl = menuUrl;
			if(menuUrl == "/home/medicine/kimsPop.do"){
				G_PostPopupOpen("kimsPop","/home/medicine/kimsPop.do", 850, 700, {});
			}else if(menuUrl == "/home/introduce/floor0Pop.do"){
				G_PostPopupOpen("floorPop","/home/introduce/floor0Pop.do", window.screen.width, window.screen.height, {});
			}else{
				var hspCd = "G";
				$("body").append("<form id='hspForm' name='hspForm' method='post'><input type='hidden' id='headHspCd' name='headHspCd' value='"+hspCd+"' /><input type='hidden' id='refererUrl' name='refererUrl' value='"+menuUrl+"'></form>");
				$("#hspForm").attr("action", menuUrl);
				$("#hspForm").submit();
			}
		}
		//메인페이지 게시판 목록 호출 ajax
		function fn_mainBoardListAjax(num){
			var MngCnt=0;
			var boardMngNo1="";
			var boardMngNo2="";

			if(num==0){
				MngCnt = 1;
				boardMngNo1 = "2";
			}else if(num==1){
				MngCnt = 1;
				boardMngNo1 = "4";
			}else if(num==2){
				MngCnt = 1;
				boardMngNo1 = "46";
			}else if(num==3){
				MngCnt = 1;
				boardMngNo1 = "1";
			}
			$.ajax({
				url      : "/home/mainBoardListAjaxProc.do",
				type     : "POST",
				data     : {
					"MngCnt"      : MngCnt,
					"boardMngNo1" : boardMngNo1,
					"boardMngNo2" : boardMngNo2,
				},
				dataType : "json",
				success  : function(data){
					var html = "";
					if(data != null && data != undefined){
						$.each(data, function(index, item){
							if(item.BOARD_MNG_NO == "4"){ //언론보도
								html += "<li class='sty3'>";
							html += "<a href='"+item.HOME_URL+"' target='_blank'>";
							html += "<span class=\"tit\">"+item.TITLE+"</span>";
							//html += "<span class=\"dec02\">"+item.NEWS_COMP_NM+" - "+item.NEWS_MEDIA_NM+"</span>";
							var deptNm = item.DEPT_NM;
							if(null != item.DEPT_NM && "" != null != item.DEPT_NM){
								var tmpArry = deptNm.split(", ");
								if(tmpArry.length > 1){
									var final_data = [];
									$.each(tmpArry,function(i,value){
									    if(final_data.indexOf(value) == -1 ) final_data.push(value);
									});
									deptNm = "";
									$.each(final_data,function(i,value){
										deptNm += value;
										if(final_data.length != (i+1)) deptNm += ", ";
									});
								}
							}
							html += "<span class=\"part\">"+(null != deptNm ? deptNm : "")+"</span>";
							html += "<span class=\"name\">"+(null != item.PROF_NM ? item.PROF_NM : "")+"</span>";
							var compNmChk = (null != item.NEWS_COMP_NM ? item.NEWS_COMP_NM : "");
							var compTag = "";
							var marginleft = "";
							if(compNmChk != ""){
								compTag = "<em class='press'>"+compNmChk+"</em>";
								marginleft = "style='margin-left:10px;'";
							}
							html += "<span class=\"info\"><em class='date'>"+item.REPORT_DD+"</em>"+compTag+"<em class='press' "+marginleft+">"+(null != item.NEWS_MEDIA_NM ? item.NEWS_MEDIA_NM : "")+"</em></span>";
							//html += "<span class=\"date\">"+item.REPORT_DD+"</span>";
							html += "</a>";
							html += "</li>";
							//console.log("index : " + index + ", REG_DT_FMT : " + item.REG_DT_FMT);
							//console.log("index : " + index + ", REG_DT : " + item.REG_DT);


							}else if(item.BOARD_MNG_NO == "46"){ //입찰공고
								var nowDate =$("#nowDate").val();
								var limitDate = item.LIMIT_DT;
								html += "<li class='sty2'>";
								if(nowDate > limitDate){ // 입찰완료
									//html += "<a href=\"javascript:void(0);\" onclick=\"javascript:fn_List('"+item.SITE_CD+"','','"+item.BOARD_MNG_NO+"','"+item.BOARD_NO+"');\">";
									html += "<a href=\"javascript:void(0);\" onclick=\"javascript:fn_Detail('"+item.SITE_CD+"','','"+item.BOARD_MNG_NO+"','"+item.BOARD_NO+"');\">";
									html += "<span class=\"top_tit\">";
									html += "<em class=\"cate sty1\">"+"입찰완료"+"</em>";
									html += "<em class=\"tit\">"+item.TITLE+"</em>";
									html += "</span>";
									//html += "<span class=\"dec\">"+(null != item.CONTS ? item.CONTS.substr(0, 350) : "")+"</span>";
									html += "<span class=\"way\"><em>입찰방법 </em> "+item.BID_WAY+"</span>";
									html += "<span class=\"deadline\"><em>마감날짜 </em> "+item.LIMIT_DATE+"</span>";
									html += "<span class=\"date\">"+item.REG_DT_FMT+"</span>";
								}else{ //입찰중
									html += "<a href=\"javascript:void(0);\" onclick=\"javascript:fn_Detail('"+item.SITE_CD+"','','"+item.BOARD_MNG_NO+"','"+item.BOARD_NO+"');\">";
									html += "<span class=\"top_tit\">";
									html += "<em class=\"cate sty1\" style='background: #2196f3;'>"+"입찰중"+"</em>";
									html += "<em class=\"tit\">"+item.TITLE+"</em>";
									html += "</span>";
									//html += "<span class=\"dec\">"+(null != item.CONTS ? item.CONTS.substr(0, 350) : "")+"</span>";
									html += "<span class=\"way\"><em>입찰방법 </em> "+item.BID_WAY+"</span>";
									html += "<span class=\"deadline\"><em>마감날짜 </em> "+item.LIMIT_DATE+"</span>";
									html += "<span class=\"date\">"+item.REG_DT_FMT+"</span>";
								}
								html += "</a>";
								html += "</li>";
							}
							else{
								console.log("index : " + index + ", FILE_SEQ_2 : " + item.FILE_SEQ_2);
								if(item.FILE_SEQ_2 == null || item.FILE_SEQ_2 == undefined || item.FILE_SEQ_2 == ""){
									html += "<li class='sty1'>";
								}else{
									html += "<li class='sty1'>";
								}
								html += "<a href=\"javascript:void(0);\" onclick=\"javascript:fn_Detail('"+item.SITE_CD+"','','"+item.BOARD_MNG_NO+"','"+item.BOARD_NO+"');\">";
								html += "<span class=\"tit\">"+item.TITLE+"</span>";
								html += "<span class=\"dec\">"+(null != item.CONTS ? item.CONTS.substr(0, 350) : "")+"</span>";
								if(item.FILE_SEQ_2 != null && item.FILE_SEQ_2 != undefined && item.FILE_SEQ_2 != ""){
									html += "<span class=\"photo\"><img src=\"/_upload/board_"+item.BOARD_MNG_NO+"/"+item.UUID_NM_2+"\" alt=\"이미지\" style=\"width: 160px; height: 100px;\"/></span>";
								}
								html += "<span class=\"date\">"+item.REG_DT_FMT+"</span>";
								html += "</a>";
								html += "</li>";
							}
						});
						$("#board_name li").attr("class","");
						$("#board_name li").eq(num).attr("class","on");
						$("#notice_list").empty();
						$("#notice_list").append(html);
					}
				},
				error    : function(){
					alert("게시글 정보를 불러오는 중에 문제가 발생했습니다.");
				}
			});
		}
		// 통합검색 레이어 열기
		function searchOpen() {
			$('.layer_search_wrapper').show();
		}
		// 통합검색 레이어 닫기
		function searchClose() {
			$('.layer_search_wrapper').hide();
		}
		//인트로 클릭 이벤트
		function fn_MoveHome(arg){
			var actionUrl = "";
			if( arg == "GROUP" )	actionUrl = "https://ch.cauhs.or.kr/group/";
			else if( arg == "HS" )	actionUrl = "https://ch.cauhs.or.kr/home/";
			else if( arg == "GM" )	actionUrl = "/home.do";
			G_newFormSubmit({
				"action" : actionUrl,
				"param"  : {"introDisplayYn":"N"}
			});
		}

		var G_Util = {
		    	//글자수 Byte 제한 (textAreaId,textLenId,글자수제한수)
		    	getTextCnt : function(oTextArea,oTextLen,textLimit){
		    		var str     = $(oTextArea).val();
		    		var str_len = str.length;
		    		var iByte = 0;
		    		var rlen  = 0;
		    		var one_char = "";
		    		var str2 = "";
		    		for( var i=0; i<str_len; i++ ){
		    			one_char = str.charAt(i);
		    			if(escape(one_char).length > 4) {
		    				iByte += 2;//한글2Byte
		    			}else{
		    				iByte++;//영문 등 나머지 1Byte
		    			}
		    			if(iByte <= textLimit){
		    				rlen = i+1;//return할 문자열 갯수
		    			}
		    		}
		    		if( iByte > textLimit ){
		    			alert("최대 " + textLimit + "byte를 초과할 수 없습니다.");
		    			str2 = str.substr(0,rlen);
		    			$(oTextArea).val(str2);
		    			G_Util.getTextCnt(oTextArea,oTextLen,textLimit);
		    		}else{
		    			$(oTextLen).text(iByte);
		    		}
		    	},
		    	//이메일 유효성 체크
		        isEmail(email){
		            var regEmail = /([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
		            if( !regEmail.test(email) ){
		                return false;
		            }
		            return true;
		        },
		    	//생년월일 유효성
		        isBirth(birthday){
		        	var result = true;
		        	var regExp = /[\{\}\[\]\/?.,;:|\)*~`!^\-_+<>@#$%&\\\=\(\'\"]/gi;
		        	birthday = birthday.replace(regExp,"");
		        	if( birthday.length <=8 ){
		        		var year   = Number(birthday.substr(0,4)); // 입력한 값의 0~4자리까지 (연)
		        	    var month  = Number(birthday.substr(4,2)); // 입력한 값의 4번째 자리부터 2자리 숫자 (월)
		        	    var day    = Number(birthday.substr(6,2)); // 입력한 값 6번째 자리부터 2자리 숫자 (일)
		        	    var today  = new Date(); // 날짜 변수 선언
		        	    var yearNow = today.getFullYear(); // 올해 연도 가져옴

		        		// 연도의 경우 1900 보다 작거나 yearNow 보다 크다면 false를 반환합니다.
		        	    if( 1900 > year || year > yearNow){
		        	    	result = false;
		        	    }else if( month < 1 || month > 12 ){
		        	    	result = false;
		        	    }else if( day < 1 || day > 31 ){
		        	    	result = false;
		        	    }else if( (month==4 || month==6 || month==9 || month==11) && day==31 ){
		        	    	 result = false;
		        	    }else if(month == 2 ){
		        	       	var isleap = (year % 4 == 0 && (year % 100 != 0 || year % 400 == 0));
		        	     	if( day>29 || (day==29 && !isleap) ){
		        	     		result = false;
		        			}
		        	    }
		        	}else{
		        		result = false;
		        	}
		        	return result;
		        },
		    	//Context Path
		    	getContextPath : function(){
		    		var hostIndex = location.href.indexOf( location.host ) + location.host.length;
		    		return location.href.substring( hostIndex, location.href.indexOf('/', hostIndex + 1) );
		    	},
		    	//금액[단독사용금지] : 천단위 콤마 생성
		    	setComma : function(arg){
		    		var result = String(arg);
		    		if( result != "" ){
		    			result = result.replace(/(\d)(?=(?:\d{3})+(?!\d))/g,"$1,");
		    		}
		    		return result;
		    	},
		    	//금액[단독사용금지] : 천단위 콤마 제거
		    	setUnComma : function(arg){
		    		var result = String(arg);
		    		if( result != "" ){
		    			result = result.replace(/[^\d]+/g,"");
		    		}
		    		return result;
		    	},
		    	//금액 : 입력시 콤마 생성
		    	inputComma : function(obj){
		    		var inputValue = $(obj).val();
		    		$(obj).val(G_Util.setComma(G_Util.setUnComma(inputValue)));
		    	},
		    	//숫자만 허용
		    	inputNumber : function(obj){
		    		var result = $(obj).val().replace(/[^0-9-]/g,"");
		    		$(obj).val(result);
		    	},
		    	//비율 : 소수점을 포함한 표현
		    	inputRate : function(obj){
		    		var tmps = $(obj).val().replace(/[^\.|^0(0)+|^0-9\.]/g,"");
		    		var arr = tmps.split(".");
		    		if( arr.length > 2 ){
		    			tmps = arr[0] + '.' + arr[1];
		    		}
		            $(obj).val(tmps);
		    	},
		    	/** []Null체크 **/
		    	isEmpty : function( pObject, pPostObject ){
		    		var rValue;
		    		if( typeof pObject != "undefined" ){
		    			if( typeof pPostObject != "undefined" ){
		    				rValue = pObject;
		    			}else{
		    				if( pObject != "" && pObject != "null" && pObject != null )	rValue = false;
		    				else														rValue = true;
		    			}
		    		}else{
		    			if( typeof pPostObject != "undefined" ){
		    				rValue = pPostObject;
		    			}else{
		    				rValue = true;
		    			}
		    		}
		    		return rValue;
		    	},
		    	//Post Popup
		    	postPopup : function(popupName, url, width, height, valueObjects) {
		    	    if (popupName == "") {
		    	        popupName = 'NewWindow';
		    	    }
		    	    var m_left =  (window.screen.width - width) / 2;
		    	    var m_top = (window.screen.height - height) / 2;
		    	    var stat = "menubar=0 location=0 directories=0 resizable=1 scrollbars=1 status=0 titlebar=1 toolbar=0 left="+m_left+" top="+m_top;
		    	    var form = document.createElement("form");
		    	    form.method = "POST";
		    	    form.target = popupName;
		    	    form.action = url;
		    	    for (keyName in valueObjects) {
		    	    	var param = CreateHiddenElement(keyName, valueObjects[keyName]);
		    	    	form.appendChild(param);
		    	    }
		    	    document.body.appendChild(form);
		    	    var openWindow = window.open("",popupName,"width="+width+"px height="+height+"px "+stat)
		    	    form.submit();
		    	    openWindow.focus();
		    	    document.body.removeChild(form);
		    	},
		    	//[공통]파일다운로드
		    	fileDownload : function(fileNo,fileSeq,actionUrl){
		    		if( fileNo != undefined && fileNo != "" && fileSeq != undefined && fileSeq != "" && actionUrl != undefined && actionUrl != "" ){
		    			var oForm    = $("<form/>");
		    			var oHidden1 = $("<input/>");
		    			var oHidden2 = $("<input/>");
		    			oForm.attr({"id":"fileFrm","name":"fileFrm","method":"post"});
		    			oHidden1.attr({"id":"fileNo","name":"fileNo","value":fileNo});
		    			oHidden2.attr({"id":"fileSeq","name":"fileSeq","value":fileSeq});
		    			oForm.append(oHidden1);
		    			oForm.append(oHidden2);
		    			$("body").append(oForm);
		    			oForm.attr({"action":actionUrl,"target":"_self"}).submit();
		    		}
		    	},
		    	//한글 초성변환
		    	getKoreanFirst : function(str){
		    		var cho    = ["ㄱ","ㄲ","ㄴ","ㄷ","ㄸ","ㄹ","ㅁ","ㅂ","ㅃ","ㅅ","ㅆ","ㅇ","ㅈ","ㅉ","ㅊ","ㅋ","ㅌ","ㅍ","ㅎ"];
		    		var result = "";
		    		for( var i=0; i<str.length; i++ ){
		    			code = str.charCodeAt(i)-44032;
		    			if(code>-1 && code<11172) result += cho[Math.floor(code/588)];
		    		}
		    		return result;
		    	},
		    	//별도의 Form을 만들어 전송
		    	newFormSubmit : function(json){
		    		if( json != undefined ){
		    			$("form#tmpForm").remove();
		    			var oForm = $("<form/>",{
		    				id     : "tmpForm",
		    				name   : "tmpForm",
		    				method : "POST",
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
		    	},
		    	//만나이 계산 ( KDW생성 2022.03.09, LSH 수정 2022.03.29 )
		    	ageCheck : function(str1,str2){
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
		    			dateOfBirth = dateOfBirth.substr(0,4)+","+dateOfBirth.substr(4,2)+","+dateOfBirth.substr(6,2);
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
		    	},
		    	//성별 출력( KDW생성 2022.03.09 )
		    	genderCheck : function(str2){
		    		var genderCode = str2.substring(0, 1);
		    		var gender = "";
		    		if(genderCode % 2 > 0){
		    			gender = "M";
		    		}else if(genderCode % 2 == 0){
		    			gender = "F";
		    		}
		    		return gender;
		    	},
		    	//날짜의 요일조회
		    	getWeekInfo : function(strDate,div){
		    		var week      = ["일","월","화","수","목","금","토"];
		    		var dayOfWeek = week[new Date(strDate).getDay()];
		    		return dayOfWeek;
		    	},
		    	//쿠키등록
		    	setCookie : function(cookieName,value,exdays){
		    	    var exdate = new Date();
		    	    exdate.setDate(exdate.getDate() + exdays);
		    	    var cookieValue = escape(value) + ((exdays==null) ? "" : "; expires=" + exdate.toGMTString());
		    	    document.cookie = cookieName + "=" + cookieValue;
		    	},
		    	//쿠키삭제
		    	deleteCookie : function(cookieName){
		    	    var expireDate = new Date();
		    	    expireDate.setDate(expireDate.getDate() - 1);
		    	    document.cookie = cookieName + "= " + "; expires=" + expireDate.toGMTString();
		    	},
		    	//쿠키조회
		    	getCookie : function(cookieName){
		    	    cookieName = cookieName + '=';
		    	    var cookieData = document.cookie;
		    	    var start = cookieData.indexOf(cookieName);
		    	    var cookieValue = '';
		    	    if(start != -1){
		    	        start += cookieName.length;
		    	        var end = cookieData.indexOf(';', start);
		    	        if(end == -1)end = cookieData.length;
		    	        cookieValue = cookieData.substring(start, end);
		    	    }
		    	    return unescape(cookieValue);
		    	}
		    }
		
		
	
	</script>
<link rel="stylesheet" href="https://t1.daumcdn.net/kakaomapweb/place/jscss/roughmap/6af7869e/roughmapLander.css"><script src="//ssl.daumcdn.net/dmaps/map_js_init/v3.js?autoload=false"></script><script src="https://t1.daumcdn.net/mapjsapi/js/main/4.4.14/v3.js"></script></head>
<body class="group_main">
<form id="frm" name="frm" method="POST">
	<input type="hidden" id="siteCd" name="siteCd">
	<input type="hidden" id="menuCd" name="menuCd">
	<input type="hidden" id="boardMngNo" name="boardMngNo">
	<input type="hidden" id="boardNo" name="boardNo">
	<input type="hidden" id="hspCd" name="hspCd">
	<input type="hidden" id="keyword" name="keyword">
	<input type="hidden" id="totalWord" name="totalWord">
	<input type="hidden" id="jobNoticeNo" name="jobNoticeNo">
	<input type="hidden" id="ptNo1" name="ptNo1" value="00101026">
	<input type="hidden" id="nowDate" name="nowDate" value="20231215">

	

	<!--body_wrapper-->
	<div class="contents_wrapper" id="main_contents">
		<!-- 바로가기 -->
		<div class="skip_navi">
            <a href="javascript:void(0);">주메뉴로 가기</a>
            <a href="javascript:void(0);">본문으로 가기</a>
            <a href="javascript:void(0);">하단으로 가기</a>
        </div>
		<!-- /바로가기 -->
		<!-- header -->
		<header>
            <div class="inner fix">
				<!-- 상단 메뉴-->
				<div class="top_menu_wrap">
					<div class="inner">
						
						<div class="top_link_menu">
							
		                		
									<a href="/home/member/userMypageCheck.do"><span>마이페이지</span></a>
		                			<a href="/home/member/userInfoCheck.do">회원정보수정</a>
		                			<a href="/home/member/loginOut.do">로그아웃</a>
		                		
		                		
		                	
						</div>
						<div class="top_lang_menu">
							<a href="javascript:void(0);" onclick="javascript:$('ul.lang_list').toggle();">Language</a>
							<ul class="lang_list">
								<li><a href="/eng/">ENG</a></li>
								
							</ul>
						</div>
					</div>
				</div>
				<!-- // 상단 메뉴-->
                <div class="header_lft">
                    <h1 class="logo">
                        <a href="/home.do">
                            <img src="../../resources/img/logo-g.png" alt="중앙대학교 광명병원">
                        </a>
                    </h1>
                </div>
                <div id="gnb" class="gnb_wrap">
                    <ul class="gnb fix">
                    	<li>
<a href="javascript:fn_goMenu('/home/conts/101001000000000.do');">이용안내</a>
<div class="depth2">
<div class="inner">
<ul>
<li><a href="javascript:fn_goMenu('/home/conts/101001000000000.do');">오시는 길</a>
</li>
<li><a href="javascript:fn_goMenu('/home/conts/101002003000000.do');" class="plus">주차안내</a>
<ul class="depth3" style="display:none;">
<li><a href="javascript:fn_goMenu('/home/conts/101002003000000.do');">주차안내</a></li>
<li><a href="javascript:fn_goMenu('/home/conts/101002004000000.do');">주차요금 무인정산기</a></li>
<li><a href="javascript:fn_goMenu('/home/conts/101002005000000.do');">전기자동차 충전소 </a></li>
</ul>
</li>
<li><a href="javascript:fn_goMenu('/home/conts/101003000000000.do');">면회안내</a>
</li>
<li><a href="javascript:fn_goMenu('/home/conts/101004000000000.do');">전화번호안내</a>
</li>
<li><a href="javascript:fn_goMenu('/home/introduce/floor0Pop.do');">층별안내</a>
</li>
<li><a href="javascript:fn_goMenu('/home/conts/101006010000000.do');" class="plus">진료비안내</a>
<ul class="depth3" style="display:none;">
<li><a href="javascript:fn_goMenu('/home/conts/101006010000000.do');">진료비 수납 및 환불안내</a></li>
<li><a href="javascript:fn_goMenu('/home/conts/101006012000000.do');">진료비 하이패스 서비스</a></li>
</ul>
</li>
<li><a href="javascript:fn_goMenu('/home/conts/101010000000000.do');">편의시설안내</a>
</li>
</ul>
<ul class="fix">
<li><a href="javascript:fn_goMenu('/home/conts/101014000000000.do');">모바일앱</a>
</li>
</ul>
<div class="gnb_contact">
<dl class="contact">
<dt>문의 · 안내 · 예약</dt>
<dd>대표전화<span>1811-7800</span></dd>
</dl>
<ul class="quick_list fix">
<li><a href="javascript:void(0);" onclick="javascript:fn_goMenu('/home/medical/profList.do');">의료진 소개</a></li>
<li><a href="javascript:void(0);" onclick="javascript:fn_goMenu('/home/board/boardClientThanksList.do');">칭찬합시다</a></li>
<li><a href="/home/conts/102007001000000.do">증명서발급안내</a></li>
<li><a href="/home/conts/101001000000000.do">오시는 길</a></li>
<li><a href="/home/conts/101002003000000.do">주차안내</a></li>
<li><a href="javascript:void(0);" onclick="javascript:fn_goMenu('/home/introduce/floor0Pop.do');">층별안내</a></li>
</ul>
</div>
</div></div></li>
<li>
<a href="javascript:fn_goMenu('/home/medical/deptAllIntro.do');">진료과/전문클러스터</a>
<div class="depth2">
<div class="inner">
<ul>
<li><a href="javascript:fn_goMenu('/home/medical/deptAllIntro.do');">진료과</a>
</li>
<li><a href="javascript:fn_goMenu('/home/medical/profList.do');">의료진</a>
</li>
<li><a href="javascript:fn_goMenu('/home/conts/105002001000000.do');" class="plus">암병원</a>
<ul class="depth3" style="display:none;">
<li><a href="javascript:fn_goMenu('/home/conts/105002001000000.do');">소개</a></li>
<li><a href="javascript:fn_goMenu('/home/conts/105002033000000.do');">조직도</a></li>
<li><a href="javascript:fn_goMenu('/home/conts/105002034004000.do');">센터</a></li>
<li><a href="javascript:fn_goMenu('/home/medical/cancerCenterAllIntro.do');">진료과</a></li>
</ul>
</li>
<li><a href="javascript:fn_goMenu('/home/conts/105015007009000.do');" class="plus">심장뇌혈관병원</a>
<ul class="depth3" style="display:none;">
<li><a href="javascript:fn_goMenu('/home/conts/105015007009000.do');">소개</a></li>
<li><a href="javascript:fn_goMenu('/home/conts/105015008012001.do');">센터</a></li>
<li><a href="javascript:fn_goMenu('/home/medical/deptProf393.do');">의료진 소개</a></li>
<li><a href="javascript:fn_goMenu('/home/board/67_List.do');">미디어</a></li>
<li><a href="javascript:fn_goMenu('/home/board/68_List.do');">동영상</a></li>
</ul>
</li>
<li><a href="javascript:fn_goMenu('/home/medical/digesAllIntro.do');">소화기센터</a>
</li>
<li><a href="javascript:fn_goMenu('/home/medical/allergyAllIntro.do');">호흡기알레르기센터</a>
</li>
<li><a href="javascript:fn_goMenu('/home/medical/spineAllIntro.do');">척추센터</a>
</li>
</ul>
<ul class="fix">
<li><a href="javascript:fn_goMenu('/home/conts/105016005000000.do');" class="plus">관절센터</a>
<ul class="depth3" style="display:none;">
<li><a href="javascript:fn_goMenu('/home/conts/105016005000000.do');">소개</a></li>
<li><a href="javascript:fn_goMenu('/home/medical/jointAllIntro.do');">진료과</a></li>
</ul>
</li>
<li><a href="javascript:fn_goMenu('/home/medical/robotAllIntro.do');">로봇수술센터</a>
</li>
<li><a href="javascript:fn_goMenu('/home/conts/105022001001000.do');" class="plus">노년수술전문지원센터</a>
<ul class="depth3" style="display:none;">
<li><a href="javascript:fn_goMenu('/home/conts/105022001001000.do');">소개</a></li>
<li><a href="javascript:fn_goMenu('/home/conts/105022002000000.do');">진료안내</a></li>
</ul>
</li>
<li><a href="javascript:fn_goMenu('/home/conts/105023001000000.do');" class="plus">당일수술센터</a>
<ul class="depth3" style="display:none;">
<li><a href="javascript:fn_goMenu('/home/conts/105023001000000.do');">소개</a></li>
<li><a href="javascript:fn_goMenu('/home/conts/105023002000000.do');">수술 전 안내사항</a></li>
<li><a href="javascript:fn_goMenu('/home/conts/105023003000000.do');">이용안내</a></li>
<li><a href="javascript:fn_goMenu('/home/conts/105023004000000.do');">수술 후 안내사항</a></li>
</ul>
</li>
<li><a href="javascript:fn_goMenu('/home/conts/105021001000000.do');" class="plus">스마트임상시험센터(STC)</a>
<ul class="depth3" style="display:none;">
<li><a href="javascript:fn_goMenu('/home/conts/105021001000000.do');">소개</a></li>
<li><a href="javascript:fn_goMenu('/home/conts/105021002000000.do');">조직도</a></li>
<li><a href="javascript:fn_goMenu('/home/conts/105021005000000.do');">장점 및 차별화</a></li>
<li><a href="javascript:fn_goMenu('/home/board/70_List.do');">임상시험 모집공고</a></li>
</ul>
</li>
<li><a href="javascript:fn_goMenu('/home/conts/105009002000000.do');" class="plus">IRB</a>
<ul class="depth3" style="display:none;">
<li><a href="javascript:fn_goMenu('/home/conts/105009002000000.do');">IRB 심의안내</a></li>
</ul>
</li>
<li><a href="javascript:fn_goMenu('/home/conts/105006008002000.do');" class="plus">지원부서</a>
<ul class="depth3" style="display:none;">
<li><a href="javascript:fn_goMenu('/home/conts/105006008002000.do');">인재개발실</a></li>
<li><a href="javascript:fn_goMenu('/home/medical/deptIntro148.do');">의학정보도서관</a></li>
</ul>
</li>
</ul>
<ul class="fix">
<li><a href="https://gh.cauhs.or.kr/health/" target="_blank">소하검진센터</a>
</li>
</ul>
<div class="gnb_contact">
<dl class="contact">
<dt>문의 · 안내 · 예약</dt>
<dd>대표전화<span>1811-7800</span></dd>
</dl>
<ul class="quick_list fix">
<li><a href="javascript:void(0);" onclick="javascript:fn_goMenu('/home/medical/profList.do');">의료진 소개</a></li>
<li><a href="javascript:void(0);" onclick="javascript:fn_goMenu('/home/board/boardClientThanksList.do');">칭찬합시다</a></li>
<li><a href="/home/conts/102007001000000.do">증명서발급안내</a></li>
<li><a href="/home/conts/101001000000000.do">오시는 길</a></li>
<li><a href="/home/conts/101002003000000.do">주차안내</a></li>
<li><a href="javascript:void(0);" onclick="javascript:fn_goMenu('/home/introduce/floor0Pop.do');">층별안내</a></li>
</ul>
</div>
</div></div></li>
<li>
<a href="javascript:fn_goMenu('/home/reserveNew/resvOnline.do');">예약/조회</a>
<div class="depth2">
<div class="inner">
<ul>
<li><a href="javascript:fn_goMenu('/home/reserveNew/resvOnline.do');">온라인 예약</a>
</li>
<li><a href="javascript:fn_goMenu('/home/conts/106001002000000.do');" class="plus">처음진료 간편예약</a>
<ul class="depth3" style="display:none;">
<li><a href="javascript:fn_goMenu('/home/conts/106001002000000.do');">전화예약</a></li>
<li><a href="javascript:fn_goMenu('/home/reserve/resvOfflineList.do');">간편예약</a></li>
</ul>
</li>
<li><a href="javascript:fn_goMenu('/home/member/userMypageCheck.do');">진료예약 조회</a>
</li>
</ul>
<div class="gnb_contact">
<dl class="contact">
<dt>문의 · 안내 · 예약</dt>
<dd>대표전화<span>1811-7800</span></dd>
</dl>
<ul class="quick_list fix">
<li><a href="javascript:void(0);" onclick="javascript:fn_goMenu('/home/medical/profList.do');">의료진 소개</a></li>
<li><a href="javascript:void(0);" onclick="javascript:fn_goMenu('/home/board/boardClientThanksList.do');">칭찬합시다</a></li>
<li><a href="/home/conts/102007001000000.do">증명서발급안내</a></li>
<li><a href="/home/conts/101001000000000.do">오시는 길</a></li>
<li><a href="/home/conts/101002003000000.do">주차안내</a></li>
<li><a href="javascript:void(0);" onclick="javascript:fn_goMenu('/home/introduce/floor0Pop.do');">층별안내</a></li>
</ul>
</div>
</div></div></li>
<li>
<a href="javascript:fn_goMenu('/home/conts/102001000000000.do');">진료안내</a>
<div class="depth2">
<div class="inner">
<ul>
<li><a href="javascript:fn_goMenu('/home/conts/102001000000000.do');">외래진료</a>
</li>
<li><a href="javascript:fn_goMenu('/home/conts/102002000000000.do');">입 · 퇴원</a>
</li>
<li><a href="javascript:fn_goMenu('/home/conts/102003000000000.do');">응급진료</a>
</li>
<li><a href="javascript:fn_goMenu('/home/conts/102007001000000.do');" class="plus">증명서발급안내</a>
<ul class="depth3" style="display:none;">
<li><a href="javascript:fn_goMenu('/home/conts/102007001000000.do');">의무기록사본 발급</a></li>
<li><a href="javascript:fn_goMenu('/home/conts/102007002000000.do');">제증명 발급</a></li>
<li><a href="javascript:fn_goMenu('/home/conts/102007003000000.do');">영상자료 발급 안내</a></li>
</ul>
</li>
<li><a href="javascript:fn_goMenu('/home/conts/102008000000000.do');">병리자료대출안내</a>
</li>
<li><a href="javascript:fn_goMenu('/home/guide/prescribe.do');">비급여항목안내</a>
</li>
<li><a href="https://gh.cauhs.or.kr/refer/" target="_blank">진료협력센터</a>
</li>
</ul>
<ul class="fix">
<li><a href="javascript:fn_goMenu('/home/conts/102012000000000.do');">호스피스 완화의료</a>
</li>
<li><a href="javascript:fn_goMenu('/home/conts/102013000000000.do');">코로나19 검사</a>
</li>
<li><a href="javascript:fn_goMenu('/home/conts/102015001000000.do');" class="plus">수술실 CCTV 안내</a>
<ul class="depth3" style="display:none;">
<li><a href="javascript:fn_goMenu('/home/conts/102015001000000.do');">촬영 신청</a></li>
<li><a href="javascript:fn_goMenu('/home/conts/102015002000000.do');">열람·제공·보관연장 신청</a></li>
</ul>
</li>
</ul>
<div class="gnb_contact">
<dl class="contact">
<dt>문의 · 안내 · 예약</dt>
<dd>대표전화<span>1811-7800</span></dd>
</dl>
<ul class="quick_list fix">
<li><a href="javascript:void(0);" onclick="javascript:fn_goMenu('/home/medical/profList.do');">의료진 소개</a></li>
<li><a href="javascript:void(0);" onclick="javascript:fn_goMenu('/home/board/boardClientThanksList.do');">칭찬합시다</a></li>
<li><a href="/home/conts/102007001000000.do">증명서발급안내</a></li>
<li><a href="/home/conts/101001000000000.do">오시는 길</a></li>
<li><a href="/home/conts/101002003000000.do">주차안내</a></li>
<li><a href="javascript:void(0);" onclick="javascript:fn_goMenu('/home/introduce/floor0Pop.do');">층별안내</a></li>
</ul>
</div>
</div></div></li>
<li>
<a href="javascript:fn_goMenu('/home/board/2_List.do');">병원소개</a>
<div class="depth2">
<div class="inner">
<ul>
<li><a href="javascript:fn_goMenu('/home/board/2_List.do');" class="plus">병원소식</a>
<ul class="depth3" style="display:none;">
<li><a href="javascript:fn_goMenu('/home/board/2_List.do');">공지사항</a></li>
<li><a href="javascript:fn_goMenu('/home/board/all/all/newsBoard4List.do');">미디어</a></li>
<li><a href="javascript:fn_goMenu('/home/board/46_List.do');">입찰공고</a></li>
</ul>
</li>
<li><a href="javascript:fn_goMenu('/home/conts/103002000000000.do');">미션 · 비전</a>
</li>
<li><a href="javascript:fn_goMenu('/home/conts/103012000000000.do');">안전보건경영방침</a>
</li>
<li><a href="javascript:fn_goMenu('/home/conts/103005001000000.do');" class="plus">병원현황</a>
<ul class="depth3" style="display:none;">
<li><a href="javascript:fn_goMenu('/home/conts/103005001000000.do');">시설현황</a></li>
<li><a href="javascript:fn_goMenu('/home/conts/103005002000000.do');">주요장비</a></li>
<li><a href="javascript:fn_goMenu('/home/conts/103005003000000.do');">병원 둘러보기</a></li>
</ul>
</li>
<li><a href="javascript:fn_goMenu('/home/conts/103006001000000.do');" class="plus">병원홍보</a>
<ul class="depth3" style="display:none;">
<li><a href="javascript:fn_goMenu('/home/conts/103006001000000.do');">홍보동영상</a></li>
</ul>
</li>
<li><a href="javascript:fn_goMenu('/home/conts/103011000000000.do');">병원연혁</a>
</li>
<li><a href="javascript:fn_goMenu('/home/conts/103013000000000.do');">병원HI</a>
</li>
</ul>
<div class="gnb_contact">
<dl class="contact">
<dt>문의 · 안내 · 예약</dt>
<dd>대표전화<span>1811-7800</span></dd>
</dl>
<ul class="quick_list fix">
<li><a href="javascript:void(0);" onclick="javascript:fn_goMenu('/home/medical/profList.do');">의료진 소개</a></li>
<li><a href="javascript:void(0);" onclick="javascript:fn_goMenu('/home/board/boardClientThanksList.do');">칭찬합시다</a></li>
<li><a href="/home/conts/102007001000000.do">증명서발급안내</a></li>
<li><a href="/home/conts/101001000000000.do">오시는 길</a></li>
<li><a href="/home/conts/101002003000000.do">주차안내</a></li>
<li><a href="javascript:void(0);" onclick="javascript:fn_goMenu('/home/introduce/floor0Pop.do');">층별안내</a></li>
</ul>
</div>
</div></div></li>
<li>
<a href="javascript:fn_goMenu('/home/board/8_List.do');">건강정보</a>
<div class="depth2">
<div class="inner">
<ul>
<li><a href="javascript:fn_goMenu('/home/board/8_List.do');">건강강좌</a>
</li>
<li><a href="javascript:fn_goMenu('/home/board/49_List.do');">건강영상</a>
</li>
<li><a href="javascript:fn_goMenu('/home/board/76_List.do');">카드뉴스</a>
</li>
</ul>
<div class="gnb_contact">
<dl class="contact">
<dt>문의 · 안내 · 예약</dt>
<dd>대표전화<span>1811-7800</span></dd>
</dl>
<ul class="quick_list fix">
<li><a href="javascript:void(0);" onclick="javascript:fn_goMenu('/home/medical/profList.do');">의료진 소개</a></li>
<li><a href="javascript:void(0);" onclick="javascript:fn_goMenu('/home/board/boardClientThanksList.do');">칭찬합시다</a></li>
<li><a href="/home/conts/102007001000000.do">증명서발급안내</a></li>
<li><a href="/home/conts/101001000000000.do">오시는 길</a></li>
<li><a href="/home/conts/101002003000000.do">주차안내</a></li>
<li><a href="javascript:void(0);" onclick="javascript:fn_goMenu('/home/introduce/floor0Pop.do');">층별안내</a></li>
</ul>
</div>
</div></div></li>
<li>
<a href="javascript:fn_goMenu('/home/board/boardClientThanksList.do');">고객서비스</a>
<div class="depth2">
<div class="inner">
<ul>
<li><a href="javascript:fn_goMenu('/home/board/boardClientThanksList.do');">칭찬합시다</a>
</li>
<li><a href="javascript:fn_goMenu('/home/board/boardClientComplainRegist.do');">고객의 소리</a>
</li>
<li><a href="javascript:fn_goMenu('/home/medicine/kimsPop.do');">약품검색</a>
</li>
<li><a href="javascript:fn_goMenu('/home/conts/104005001000000.do');" class="plus">의료사회복지</a>
<ul class="depth3" style="display:none;">
<li><a href="javascript:fn_goMenu('/home/conts/104005001000000.do');">사회사업팀 소개</a></li>
<li><a href="javascript:fn_goMenu('/home/conts/104005002000000.do');">의료사회복지 상담</a></li>
<li><a href="javascript:fn_goMenu('/home/conts/104005003000000.do');">사회공헌</a></li>
<li><a href="javascript:fn_goMenu('/home/conts/104005004000000.do');">자원봉사</a></li>
</ul>
</li>
<li><a href="https://vy.vics.kr/cert.service" target="_blank">온라인 제증명</a>
</li>
</ul>
<div class="gnb_contact">
<dl class="contact">
<dt>문의 · 안내 · 예약</dt>
<dd>대표전화<span>1811-7800</span></dd>
</dl>
<ul class="quick_list fix">
<li><a href="javascript:void(0);" onclick="javascript:fn_goMenu('/home/medical/profList.do');">의료진 소개</a></li>
<li><a href="javascript:void(0);" onclick="javascript:fn_goMenu('/home/board/boardClientThanksList.do');">칭찬합시다</a></li>
<li><a href="/home/conts/102007001000000.do">증명서발급안내</a></li>
<li><a href="/home/conts/101001000000000.do">오시는 길</a></li>
<li><a href="/home/conts/101002003000000.do">주차안내</a></li>
<li><a href="javascript:void(0);" onclick="javascript:fn_goMenu('/home/introduce/floor0Pop.do');">층별안내</a></li>
</ul>
</div>
</div></div></li>

                    </ul>
                </div>
                <div class="header_rit">
                	
					<a href="javascript:void(0);" class="btn_search" onclick="searchOpen();"></a>
                    <a href="javascript:void(0);" class="btn_sitemap" onclick="sitemapOpen();"><i></i></a>
                </div>
            </div>
        </header>
		<!-- /header -->
        <!-- contents -->
        <section id="contents" class="main_wrap">
            <div class="inner">
				<!-- 상단 링크 영역 -->
				<div class="main_top_wrap">
					<!-- 온라인진료예약 -->
					<div class="reser_box_wrap" style="position:relative;">
						<h2 class="tit">진료예약</h2>
						<!-- <p class="tit_dec" style="position:absolute; bottom:13px; right:35px;">※ 온라인 예약 시스템 점검 중</p>  -->
						<!-- <p class="tit_dec">온라인으로 빠르고 쉽게 진료예약</p> -->
						<div class="link_btn_wrap">
							<p class="phone" onclick="location.href='tel:1811-7800';">1811-7800</p>
							<a href="/home/reserveNew/resvOnline.do"><span>온라인 예약</span></a>
							<a href="/home/reserve/resvOfflineList.do"><span>처음오신분 간편예약</span></a>
							
							<a href="/home/member/userMypageCheck.do"><span>예약조회 및 취소</span></a>
							<a href="/home/reserveNew/map.do" style="display: none" id="reserveView"><span>병원 내부 실시간 지도</span></a>
							
							
							
						</div>
						<!-- <div class="ico_btn_wrap">
								<a href="javascript:void(0);" class="btn_reserv01"><span>예약조회</span></a>
								<a href="javascript:void(0);" class="btn_reserv02"><span>증명서발급</span></a>
						</div> -->
					</div>
					<!-- // 온라인진료예약 -->
					<!-- 건강검진예약 -->
					<div class="health_box_wrap" style="position:relative;">
						<h2 class="tit">진료과/의료진</h2>
						<!-- <p class="tit_dec" style="position:absolute; bottom:13px; right:35px;">※ 5월 중 오픈예정</p> -->
						<div class="link_btn_wrap">
								<!-- <div class="form_input_wrap">
										<input type="text" class="input_text" placeholder="010-0000-0000"/>
								</div> -->
							<a href="/home/medical/deptAllIntro.do"><span>진료과</span></a>
							<a href="/home/medical/profList.do"><span>의료진</span></a>
							<a href="/refer/" target="_blank"><span>진료협력센터</span></a>
						</div>
						<!-- <div class="ico_btn_wrap">
								<a href="javascript:void(0);" class="btn_health01"><span>개인검진</span></a>
								<a href="javascript:void(0);" class="btn_health02"><span>기업검진</span></a>
						</div> -->
					</div>


					<!-- // 건강검진예약 -->
					<!-- -->
					<!-- <div class="medical_box_wrap">
						<h2 class="tit">중앙 Media</h2>
						<p class="tit_dec">중앙대학교광명병원 미디어소식</p>
						<a href="https://youtu.be/909fTKz2POE" target="_blank" class="link_youtube"><img src="/common/front/home/images/main/img_media_thum02.jpg" alt=""/></a>
					</div> -->
					<div class="hospital_box_wrap">
						<h2 class="tit">병원안내</h2>
						<div class="link_btn_wrap">
							<a href="/home/conts/101001000000000.do"><span>오시는 길</span></a>
							<a href="/home/reserveNew/homeFloor.do"><span>층별안내</span></a>
							<a href="https://vy.vics.kr/cert.service" target="_blank"><span>온라인 제증명</span></a>
						</div>
						<!-- <div class="ico_btn_wrap">
								<a href="javascript:void(0);" class="btn_health01"><span>개인검진</span></a>
								<a href="javascript:void(0);" class="btn_health02"><span>기업검진</span></a>
						</div> -->
					</div>
					<!-- // 진료과/센터 -->
					
					
						
							<div class="login_box_wrap" style="position:relative;">
								<div class="top_login_info fix">
									
										
											
												<% 
													MemberDTO member = (MemberDTO)session.getAttribute("login");
													String userId = request.getParameter("userId");
													String loginType = request.getParameter("loginType");
													String authType = request.getParameter("authType");
													String userDi = request.getParameter("userDi");
												%>
													<p><strong style="margin-bottom:60px;"> <%=member.getUserNm() %> </strong>  </p>
												
												
											
											<p style="margin-top:6px;">
											
												
													유저 ID : <%=member.getUserId() %>
												
												
											
											</p>
										
										
									
								</div>
								<ul class="bottom_login_info fix" style="margin-top : 10px;">
									<!-- <li><a href="#">관심 의료진</a></li> -->
									<li><a href="javascript:fn_goMenu('/home/board/boardClientComplainRegist.do');">고객의 소리</a></li>
									<li><a href="/home/member/userMypageCheck.do">마이페이지</a></li>
									<li><a href="javascript:fn_goMenu('/home/member/userTimeline.do');">나의 타임라인</a></li>
									<li><a href="javascript:fn_goMenu('/home/member/userInfoCheck.do');">회원정보 수정</a></li>
								</ul>
							</div>
						
						
					
					
				</div>
				<!-- // 상단 링크 영역 -->
				<style>
                    .mid_search_wrap{display:flex; flex-wrap:wrap;}
                    .mid_search_wrap .search_form_tit{display: block;position: relative;width: 100%; font-size: 20px;line-height: 42px;color: #000;font-weight: 500;padding-left: 25px;margin-bottom: 10px; box-sizing: border-box;}
					.mid_search_wrap .search_form_tit:before{display: block;position: absolute;left: 0;top: 50%;transform: translateY(-50%);background: url(../../resources/img/ico_main_search.png) no-repeat center center; width: 20px;height: 20px;content: '';}
					.mid_search_wrap .m_search_form{flex:1; margin:0;}
                    .mid_search_wrap .m_search_form input.text_search{width:100%; box-sizing:border-box;}

                    .mid_search_wrap .chat_box_wrap{margin:0px 0  0px 12px; width:216px; border:2px solid #1474d0;}
                    .mid_search_wrap .chat_box_wrap a{display:block;padding: 10px 10px;  background: url(../../resources/img/ico_chat02.png) no-repeat calc(100% - 12px) center / 70px auto; box-sizing:border-box;}
                    .mid_search_wrap .chat_box_wrap .tit{display:block; font-size:18px;font-weight: 700; color:#1c4dbf;letter-spacing: -0.5px;}
                    .mid_search_wrap .chat_box_wrap .dec{display:block;margin-top: 5px;font-size: 14px; font-weight:500; color:#777;line-height: 16px;letter-spacing: -0.5px;}

					@media (max-width: 680px){
						.mid_search_wrap .m_search_form{width:100%;}
						.mid_search_wrap .chat_box_wrap{width:100%;margin: 10px 0 0 0;}
						.mid_search_wrap .chat_box_wrap a{width:100%;}
					}
                </style>

				<!--통합검색-->

				<div style="padding:1.25rem 1.5rem;background-color: #fbfdff;border: 1px solid #cad6e3;box-sizing: border-box;margin-top: 15px;">
					<div class="mid_search_wrap">
						<p class="search_form_tit">의료진·질환명 검색</p>
							<div class="m_search_form">
								<fieldset>
									<legend>통합검색</legend>
									<div class="fix">

										<input class="text_search" type="text" id="mainKeyWord" name="mainKeyWord" placeholder="의사명, 질병명을 입력하세요.">
										<p class="btn_total_search">
											<input class="btn_search" type="image" src="../../resources/img/btn_s.png" style="cursor:pointer" onclick="javascript:fn_TotalSearch('mainKeyWord'); return false;">
										</p>
									</div>
									<ul class="fix" style="display:none;">
										<!-- <li><a href="javascript:void(0);" onclick="javascript:fn_TotalSearch(this);">#온라인예약</a></li> -->
										<!-- <li><a href="javascript:void(0);" onclick="javascript:fn_TotalSearch(this);">#증명서발급</a></li> -->
										<li><a href="javascript:void(0);" onclick="javascript:fn_TotalSearch(this);">#진료과</a></li>
										<li><a href="javascript:void(0);" onclick="javascript:fn_TotalSearch(this);">#의료진</a></li>
										<li><a href="javascript:void(0);" onclick="javascript:fn_TotalSearch(this);">#오시는길</a></li>
										<li><a href="javascript:void(0);" onclick="javascript:fn_TotalSearch(this);">#중앙대학교광명병원</a></li>
									</ul>
								</fieldset>
							</div>

							<!-- 챗봇상담 -->
							<div class="chat_box_wrap bonaChat">
								<a href="javascript:void(0);">
									<span class="tit">챗봇상담</span>
									<span class="dec">진료예약과<br>병원안내를 도와드려요!</span>
								</a>
							</div>
						</div>
					</div>
				<!-- // 챗봇상담 -->
				<!--//통합검색-->
				
                
				<!-- 팝업존 -->
					<div class="popupzone_wrap">
						<div class="popupzone_content swiper-container swiper-container-initialized swiper-container-horizontal">
				        	<ul class="swiper-wrapper" style="transform: translate3d(-3615px, 0px, 0px); transition-duration: 300ms;"><li class="swiper-slide swiper-slide-duplicate swiper-slide-next swiper-slide-duplicate-prev" data-swiper-slide-index="3" style="width: 723px;">
					        <a href="https://www.youtube.com/@aftertherainkr" target="_blank">
					        <img src="../../resources/img/slide4.jpg" alt="팝업이미지"></a>
					        </li>
							<li class="swiper-slide swiper-slide-duplicate-active" data-swiper-slide-index="0" style="width: 723px;">
					        <a href="https://vy.vics.kr/cert.service" target="_blank"><img src="../../resources/img/slide1.jpg" alt="팝업이미지"></a>
					        </li>
							<li class="swiper-slide" data-swiper-slide-index="1" style="width: 723px;">
					        <a href="https://gh.cauhs.or.kr/home/board/boardClinicalList.do"><img src="../../resources/img/slide2.png" alt="팝업이미지"></a>
					        </li>
							<li class="swiper-slide" data-swiper-slide-index="2" style="width: 723px;">
					        <a href="javascript:void(0);"><img src="../../resources/img/slide3.jpg" alt="팝업이미지"></a>
					        </li>
							<li class="swiper-slide swiper-slide-prev swiper-slide-duplicate-next" data-swiper-slide-index="3" style="width: 723px;">
					        <a href="https://www.youtube.com/@aftertherainkr" target="_blank"><img src="../../resources/img/slide4.jpg" alt="팝업이미지"></a>
					        </li>
							<li class="swiper-slide swiper-slide-duplicate swiper-slide-active" data-swiper-slide-index="0" style="width: 723px;">
					        <a href="https://vy.vics.kr/cert.service" target="_blank"><img src="../../resources/img/slide2.png" alt="팝업이미지"></a>
					        </li></ul>
				            
				            <div class="swiper-pagination swiper-pagination-clickable swiper-pagination-bullets"><span class="swiper-pagination-bullet swiper-pagination-bullet-active" tabindex="0" role="button" aria-label="Go to slide 1"></span><span class="swiper-pagination-bullet" tabindex="0" role="button" aria-label="Go to slide 2"></span><span class="swiper-pagination-bullet" tabindex="0" role="button" aria-label="Go to slide 3"></span><span class="swiper-pagination-bullet" tabindex="0" role="button" aria-label="Go to slide 4"></span></div>
								<div class="swiper-button-prev swiper-button-disabled" tabindex="0" role="button" aria-label="Previous slide" aria-disabled="true">
									<img src="../../resources/img/img_swiper_prev.png">
								</div>
								<div class="swiper-button-next" tabindex="0" role="button" aria-label="Next slide" aria-disabled="false">
									<img src="../../resources/img/img_swiper_next.png">
								</div>
				                <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>
				                </div>
				<!-- // 팝업존 -->
				<!-- 바로가기 -->
                <div class="quick_menu_wrap">
                    <ul>
                        <li class="item06"><a href="/home/conts/105002001000000.do"><span>암병원</span></a></li>
                        <li class="item07"><a href="/home/medical/cvbAllIntro.do"><span>심장뇌혈관병원</span></a></li>
                        <li class="item03"><a href="/health/" target="_blank" title="새창으로 열기"><span>소하검진센터</span></a></li>
						<li class="item04"><a href="https://gh.cauhs.or.kr/funeral/" target="_blank"><span>장례식장</span></a></li>
						<li class="item08"><a href="https://gh.cauhs.or.kr/recruit/" target="_blank"><span>채용공고</span></a></li>
                        <!-- <li class="item08"><a href="/home/medical/profList.do" target="" title="새창으로 열기"><span>의료진</span></a></li> -->
						<li class="item05"><a href="/fund/" target="_blank" title="새창으로 열기"><span>후원하기</span></a></li>
                        <!-- <li class="item09"><a href="/home/conts/101001000000000.do" title="새창으로 열기"><span>찾아오시는길</span></a></li> -->
                  	</ul>
                </div>
                <!-- // 바로가기 -->
                <!-- 병원알림 -->
                <div class="main_noitce_wrap">
                    <div class="tit_area">
                        <h3 class="tit"><span>병원알림</span></h3>
                        <!-- <p class="tit_dec">다양한 건강정보와 의료지식들과 관련 교육을 함께 공유합니다.</p> -->
                    </div>
                    <div class="con_area">
                        <div class="lft_con">
                            <div class="tab_wrap">
                                <ul class="" id="board_name">
                                	<li class=""><a href="javascript:void(0);"><span>미디어</span></a></li>
                                	<li class="on"><a href="javascript:void(0);"><span>공지사항</span></a></li>
                                    <li class=""><a href="javascript:void(0);"><span>입찰공고</span></a></li>
                                </ul>
                            </div>
                            <div class="tab_content">
								<div id="info1_area1" class="info_area">
									<!-- [S]미디어  -->
                                    <ul class="notice_list" id="notice_list_0" style="display: none;">
                                    	
											<li class="sty3">
												<a href="https://www.news1.kr/articles/5260323" target="_blank">
													<span class="tit">열받으니 혈압이 오르고 두통이 온다고?…"착각입니다"</span>
													 
													<span class="ssum">
														
															
															
																<img src="/_upload/profImg/8d85de3b-b731-4c91-b074-da22bbc691fc" alt="의료진 이미지">
															
															
														
													</span>
                                       				
                                       				
													
														
                        									
								                        	
														
													
													
														<span class="part">가정의학과</span>
													
			                                       	<span class="name">
														
															오윤환
			                                             	
			                                          	
													</span>
													<span class="info">
                                          				<em class="date">2023-12-14</em>
                                          				
                                             				
                                                				<em class="press">뉴스1</em>
                                                				<em class="press" style="margin-left:10px;"></em>
                                             				
                                             				
                                          				
                                       				</span>
                                    			</a>
                                 			</li>
										
											<li class="sty3">
												<a href="https://medicalworldnews.co.kr/news/view.php?idx=1510958604" target="_blank">
													<span class="tit">중앙대광명병원 김응수 교수, 대한안과학회 우수 E-포스터상 수상</span>
													 
													<span class="ssum">
														
															
															
																<img src="/_upload/profImg/695e922b-32d3-4460-8c89-058f5f2c6903" alt="의료진 이미지">
															
															
														
													</span>
                                       				
                                       				
													
														
                        									
								                        	
														
													
													
														<span class="part">안과</span>
													
			                                       	<span class="name">
														
															김응수
			                                             	
			                                          	
													</span>
													<span class="info">
                                          				<em class="date">2023-12-13</em>
                                          				
                                             				
                                                				<em class="press">메디컬월드뉴스</em>
                                                				<em class="press" style="margin-left:10px;"></em>
                                             				
                                             				
                                          				
                                       				</span>
                                    			</a>
                                 			</li>
										
											<li class="sty3">
												<a href="https://www.youtube.com/watch?v=9ahWCJ7siNk" target="_blank">
													<span class="tit">뽑을까? 말까? 그것이 문제로다(발치 교정 vs 비발치교정)</span>
													 
													<span class="ssum">
														
															
															
															
																<img src="../../resources/img/emptyimg.png" alt="병원로고">
															
														
													</span>
                                       				
                                       				
													
														
                        									
								                        	
														
													
														
													
													
														<span class="part">치과교정과</span>
													
			                                       	<span class="name">
														
															채화성, 추현희
			                                             	
			                                          	
													</span>
													<span class="info">
                                          				<em class="date">2023-12-12</em>
                                          				
                                             				
                                                				<em class="press">YOUTUBE</em>
                                                				<em class="press" style="margin-left:10px;">비온뒤</em>
                                             				
                                             				
                                          				
                                       				</span>
                                    			</a>
                                 			</li>
										
											<li class="sty3">
												<a href="https://www.youtube.com/live/__c4EhOx5AU?si=ZZFCtsqK7ZzC_HMW" target="_blank">
													<span class="tit">위암 치료의 최신 트렌드</span>
													 
													<span class="ssum">
														
															
															
																<img src="/_upload/profImg/d0a56861-94df-4810-970a-2ec628abbd14" alt="의료진 이미지">
															
															
														
													</span>
                                       				
                                       				
													
														
                        									
								                        	
														
													
													
														<span class="part">외과</span>
													
			                                       	<span class="name">
														
															김형호
			                                             	
			                                          	
													</span>
													<span class="info">
                                          				<em class="date">2023-12-12</em>
                                          				
                                             				
                                                				<em class="press">YOUTUBE</em>
                                                				<em class="press" style="margin-left:10px;">비온뒤</em>
                                             				
                                             				
                                          				
                                       				</span>
                                    			</a>
                                 			</li>
										
                                    </ul>
									<!-- //[E]미디어  -->
									<!-- [S]공지사항  -->
                                    <ul class="notice_list" id="notice_list_1" style="display: block;">
                                    	
                                    		<li class="sty1">
	                                    		<a href="javascript:void(0);" onclick="javascript:fn_Detail('201000000','','2','1405');">
	                                    			<span class="tit">개인정보처리방침 변경안내</span>
	                                    			<span class="dec">중앙대학교광명병원의 개인정보처리방침이 개정되었습니다.[변경내용] 1. 개인정보의 처리목적 / 2. 개인정보 처리 및 보유 기간 / 3. 개인정보의 처리 항목 - 소하검진센터 검진예약 내용 추가4. 개인정보 제3자 제공에 관한 사항 - 내용 추가5. 개인정보처리의 위탁에 관한 사항 - 위탁받는 자(수탁자) 및 위탁업무의 내용 추가 및 수정11. 개인정보관리책임자 및 담당자 - [환자서비스 관련 개인정보 관리 부서 및 책임자] 의 부서명, 전화번호 수정 - [소하검진센터 개인정보 관리 부서 및 책임자] 추가15. 영상정보처리기기운영·관리방침 - 4. 영상정보처리기기의 설치 : 영상정보처리기기 대수 변경시행일자 </span>
	                                    			
	                                    				<span class="photo"><img src="/_upload/board_2/8449c576-4f36-4db7-8b95-0f5551e7f2e7" alt="이미지"></span>
	                                    			
	                                    			<span class="date">2023-12-07</span>
	                                    		</a>
	                                    	</li>
                                    	
                                    		<li class="sty1">
	                                    		<a href="javascript:void(0);" onclick="javascript:fn_Detail('201000000','','2','1404');">
	                                    			<span class="tit">중앙대광명병원 위암 명의 김형호 교수, 중앙대광명병원 발전기금 2천만원 후원</span>
	                                    			<span class="dec">국내 위암 치료 최고 권위자로 알려진 김형호 교수가 중앙대광명병원에 부임하면서 병원 발전을 위해 2천만 원을 쾌척했다.김형호 교수는 복강경 위암 수술의 선구자로 분당서울대병원 외과 암센터장을 역임했고, 국내 복강경 위암 수술의 선구자로 조기 위암에서 복강경수술의 효용성을 평가하기 위한 다기관 전향적 연구(KLASS study)의 총괄 책임자를 맡았다. 현재까지 5,500례 이상의 위암 복강경수술을 집도한 세계적인 명의다.중앙대광명병원에 부임 후 해외에서도 위암수술을 받기 위해 김형호 교수를 찾아오기도 했다. 싱가포르 신경과 의사인 탕콕프씨는 위식도경부암 3기를 판정받았지만, 동료 의사들로부터 한국의 위암 명의 김형호 교</span>
	                                    			
	                                    				<span class="photo"><img src="/_upload/board_2/b9152937-4daa-4a77-95b6-d3bb58c36699" alt="이미지"></span>
	                                    			
	                                    			<span class="date">2023-12-05</span>
	                                    		</a>
	                                    	</li>
                                    	
                                    		<li class="sty1">
	                                    		<a href="javascript:void(0);" onclick="javascript:fn_Detail('201000000','','2','1403');">
	                                    			<span class="tit">저소득가정 환자 의료비 지원을 위한 새빛나눔 도서바자회 개최</span>
	                                    			<span class="dec"></span>
	                                    			
	                                    				<span class="photo"><img src="/_upload/board_2/2547bb1e-68bd-4c1e-b7c8-c49be4a906ae" alt="이미지"></span>
	                                    			
	                                    			<span class="date">2023-12-01</span>
	                                    		</a>
	                                    	</li>
                                    	
                                    </ul>
									<!-- //[E]공지사항  -->
									<!-- [S]입찰공고  -->
									<ul class="notice_list" id="notice_list_2" style="display: none;">
                                    	
											<li class="sty2">
												
													
														<a href="javascript:void(0);" onclick="javascript:fn_Detail('201000000','','46','370');">
															<span class="top_tit">
																<em class="cate sty1">입찰완료</em><em class="tit">중앙대학교광명병원 야간근무자 야식 제공 업체 선정</em>
															</span>
															<span class="way"><em>입찰방법 </em>경쟁입찰</span>
															<span class="deadline"><em>마감날짜 </em>2023.11.27 14:00</span>
															<span class="date">2023-11-21</span>
														</a>
													
													
												
											</li>
                                    	
											<li class="sty2">
												
													
														<a href="javascript:void(0);" onclick="javascript:fn_Detail('201000000','','46','363');">
															<span class="top_tit">
																<em class="cate sty1">입찰완료</em><em class="tit">중앙대학교광명병원 편의시설 위탁 운영 업체 입찰 3차 공고</em>
															</span>
															<span class="way"><em>입찰방법 </em>경쟁입찰</span>
															<span class="deadline"><em>마감날짜 </em>2023.10.18 14:00</span>
															<span class="date">2023-10-06</span>
														</a>
													
													
												
											</li>
                                    	
											<li class="sty2">
												
													
														<a href="javascript:void(0);" onclick="javascript:fn_Detail('201000000','','46','362');">
															<span class="top_tit">
																<em class="cate sty1">입찰완료</em><em class="tit">[재공고] 중앙대학교광명병원 버스 광고 대행업체 선정</em>
															</span>
															<span class="way"><em>입찰방법 </em>일반입찰</span>
															<span class="deadline"><em>마감날짜 </em>2023.10.10 10:00</span>
															<span class="date">2023-10-04</span>
														</a>
													
													
												
											</li>
                                    	
                                    </ul>
                                    <!-- //[E]입찰공고  -->
								</div>
                            </div>
							<div class="btn_main_more">
								<a href="/home/board/all/all/newsBoard4List.do" class="btn0" style="display: none;">미디어 바로가기</a>
								<a href="/home/board/2_List.do" class="btn1" style="display: block;">공지사항 바로가기</a>
								<a href="/home/board/46_List.do" class="btn2" style="display: none;">입찰공고 바로가기</a>
							</div>
                        </div>
						<div class="rgt_con">
                            <div id="map" class="map_wrap">
								<!-- * 카카오맵 - 지도퍼가기 -->
								<!-- 1. 지도 노드 -->
								<div id="daumRoughmapContainer1647509594008" class="root_daum_roughmap root_daum_roughmap_landing" style="width: 630px;"><div class="wrap_map" style="height: 478px;"><div class="map" style="overflow: hidden; background: url(&quot;https://t1.daumcdn.net/mapjsapi/images/bg_tile.png&quot;);"><div style="position: absolute; left: 0px; top: 0px; width: 100%; height: 100%; touch-action: none; cursor: url(&quot;https://t1.daumcdn.net/mapjsapi/images/cursor/openhand.cur.ico&quot;) 7 5, url(&quot;https://t1.daumcdn.net/mapjsapi/images/cursor/openhand.cur.ico&quot;), default;"><div style="position: absolute;"><div style="position: absolute; z-index: 0;"></div><div style="position: absolute; z-index: 1; left: 0px; top: 0px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNGSD01/v18_qqn7d/4/968/428.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -70px; top: 181px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNGSD01/v18_qqn7d/4/968/429.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 186px; top: 181px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNGSD01/v18_qqn7d/4/968/430.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 442px; top: 181px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNGSD01/v18_qqn7d/4/968/431.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 698px; top: 181px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNGSD01/v18_qqn7d/4/969/428.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -70px; top: -75px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNGSD01/v18_qqn7d/4/969/429.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 186px; top: -75px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNGSD01/v18_qqn7d/4/969/430.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 442px; top: -75px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNGSD01/v18_qqn7d/4/969/431.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 698px; top: -75px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNGSD01/v18_qqn7d/4/970/428.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -70px; top: -331px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNGSD01/v18_qqn7d/4/970/429.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 186px; top: -331px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNGSD01/v18_qqn7d/4/970/430.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 442px; top: -331px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNGSD01/v18_qqn7d/4/970/431.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 698px; top: -331px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNGSD01/v18_qqn7d/4/968/432.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 954px; top: 181px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNGSD01/v18_qqn7d/4/969/432.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 954px; top: -75px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNGSD01/v18_qqn7d/4/970/432.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 954px; top: -331px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"></div><div style="position: absolute; z-index: 1;"></div><div style="position: absolute; z-index: 1; width: 959px; height: 386px;"></div><div style="position: absolute; z-index: 1;"><svg version="1.1" style="stroke: none; stroke-dashoffset: 0.5; stroke-linejoin: round; fill: none; transform: translateZ(0px); position: absolute; left: -1918px; top: -772px; width: 4795px; height: 1930px;" viewBox="0 0 4795 1930"><defs></defs></svg></div><div style="position: absolute; z-index: 1; width: 100%; height: 0px; transform: translateZ(0px);"><div style="position: absolute; margin: -48px 0px 0px -18px; z-index: 2; left: 314px; top: 193px;"><img draggable="false" src="//t1.daumcdn.net/localimg/localimages/07/2018/pc/map/marker_map01.png" alt="" role="presentation" title="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 45px, 50px, 0px); top: 0px; left: 0px; width: 45px; height: 50px;"></div><div style="position: absolute; z-index: 3; white-space: nowrap; margin: -28px 0px 0px -54px; left: 314px; top: 193px;"><div class="roughmap_maker_label" style="top: -57px; left: -2.25px;"><a href="https://map.kakao.com/?urlX=474760.0&amp;urlY=1090263.0&amp;itemId=827464898&amp;q=%EC%A4%91%EC%95%99%EB%8C%80%ED%95%99%EA%B5%90%EA%B4%91%EB%AA%85%EB%B3%91%EC%9B%90&amp;srcid=827464898&amp;map_type=TYPE_MAP&amp;from=roughmap" target="_blank"><span class="roughmap_lebel_text">중앙대학교광명병원</span></a></div></div></div></div></div><div style="position: absolute; cursor: default; z-index: 1; margin: 0px 6px; height: 19px; line-height: 14px; bottom: 0px; color: rgb(0, 0, 0); right: 0px;"><div style="color: rgb(0, 0, 0); text-align: center; font-size: 10px; float: right;"><div style="float: left; margin: 2px 3px 0px 4px; height: 6px; transition: width 0.1s ease 0s; border-top: none rgb(0, 0, 0); border-right: 2px solid rgb(0, 0, 0); border-bottom: 2px solid rgb(0, 0, 0); border-left: 2px solid rgb(0, 0, 0); border-image: initial; width: 46px;"></div><div style="float: left; margin: 0px 4px 0px 0px; font-family: AppleSDGothicNeo-Regular, 돋움, dotum, sans-serif; font-weight: bold; color: rgb(0, 0, 0);">100m</div></div><div style="margin: 0px 4px; float: right;"><a target="_blank" href="http://map.kakao.com/" title="Kakao 지도로 보시려면 클릭하세요." style="float: left; width: 32px; height: 10px;"><img src="https://t1.daumcdn.net/mapjsapi/images/m_bi_b.png" alt="Kakao 지도로 이동" style="float: left; width: 32px; height: 10px; border: none;"></a><div style="font: 11px / 11px Arial, Tahoma, Dotum, sans-serif; float: left;"></div></div></div><div style="cursor: auto; position: absolute; z-index: 2; left: 0px; top: 0px;"></div></div><span class="map_border border1"></span><span class="map_border border2"></span><span class="map_border border3"></span><span class="map_border border4"></span><div class="wrap_btn_zoom"><button class="btn_zoom_in hide_text"><span class="img_zoom">확대</span></button><button class="btn_zoom_out hide_text"><span class="img_zoom">축소</span></button><button class="btn_zoom_reset hide_text"><span class="img_zoom">초기화</span></button></div></div><div class="wrap_controllers hide"><a class="tit_controllers" href="https://map.kakao.com" target="_blank"><img src="//t1.daumcdn.net/localimg/localimages/07/2018/pc/common/logo_kakaomap.png" width="72" height="16" alt="카카오맵" style="display:block;width:72px;height:16px"></a><div class="wrap_btn_roadview"><a class="txt" target="_blank" href="https://map.kakao.com/?from=roughmap&amp;srcid=827464898&amp;confirmid=827464898&amp;q=%EC%A4%91%EC%95%99%EB%8C%80%ED%95%99%EA%B5%90%EA%B4%91%EB%AA%85%EB%B3%91%EC%9B%90&amp;rv=on">로드뷰</a><span class="txt_bar"></span><a class="txt" target="_blank" href="https://map.kakao.com/?from=roughmap&amp;eName=%EC%A4%91%EC%95%99%EB%8C%80%ED%95%99%EA%B5%90%EA%B4%91%EB%AA%85%EB%B3%91%EC%9B%90&amp;eX=474760.0&amp;eY=1090263.0">길찾기</a><span class="txt_bar"></span><a class="txt" target="_blank" href="https://map.kakao.com?map_type=TYPE_MAP&amp;from=roughmap&amp;srcid=827464898&amp;itemId=827464898&amp;q=%EC%A4%91%EC%95%99%EB%8C%80%ED%95%99%EA%B5%90%EA%B4%91%EB%AA%85%EB%B3%91%EC%9B%90&amp;urlX=474760.0&amp;urlY=1090263.0">지도 크게 보기</a></div></div></div>
								<!--
									2. 설치 스크립트
									* 지도 퍼가기 서비스를 2개 이상 넣을 경우, 설치 스크립트는 하나만 삽입합니다.
								-->
								<script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script><script charset="UTF-8" src="https://t1.daumcdn.net/kakaomapweb/place/jscss/roughmap/6af7869e/roughmapLander.js"></script>
								<!-- 3. 실행 스크립트 -->
								<script charset="UTF-8">
									new daum.roughmap.Lander({
										"timestamp" : "1647509594008",
										"key" : "29i3b",
										"mapWidth" : "630",
										"mapHeight" : "478"
									}).render();
								</script>
                            </div>
                            <div class="link_btn_wrap">
                                <div class="lft_con">
                                    <p class="tit">병원 오시는 길</p>
                                    <p class="address">경기도 광명시 일직동 501</p>
                                    <a href="/home/conts/101001000000000.do" class="btn_link"><span>자세히 보기</span></a>

                                </div>
								<div class="lft_con">
                                    <p class="tit">소하검진센터 오시는 길</p>
                                    <p class="address">경기도 광명시 소하로 190 광명G타워 A동 3층</p>
                                    <a href="/health/conts/109001000000000.do" class="btn_link"><span>자세히 보기</span></a>

                                </div>
                                <div class="rgt_con">
                                    <a href="/home/conts/101002003000000.do" class="btn_location03"><span>주차 안내</span></a>
                                    <a href="/home/conts/101003000000000.do" class="btn_location01"><span>면회 안내</span></a>
                                    <a href="/home/conts/101004000000000.do" class="btn_location02"><span>전화번호 안내</span></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- // 병원알림 -->
                <!-- 건강영상 -->
                <div class="main_info_wrap">
                    <div class="tit_area fix">
                        <h3 class="tit"><span>건강영상</span></h3>
                        <!-- <p class="tit_dec">중앙대학교광명병원의 주요소식과 오시는길을 확인하세요.</p> -->
                        <div class="chip_list_wrap" style="display:none;">
                            <a href="javascript:void(0);" onclick="javscript:fn_SearchKeyWord('건강검진');" class="chip"><span>#건강검진</span></a>
                            <a href="javascript:void(0);" onclick="javscript:fn_SearchKeyWord('암이란?');" class="chip"><span>#암이란?</span></a>
                            <a href="javascript:void(0);" onclick="javscript:fn_SearchKeyWord('최신항암치료');" class="chip"><span>#최신항암치료</span></a>
                            <a href="javascript:void(0);" onclick="javscript:fn_SearchKeyWord('당뇨교실');" class="chip"><span>#당뇨교실</span></a>
                            <a href="javascript:void(0);" onclick="javscript:fn_SearchKeyWord('암환자교실');" class="chip"><span>#암환자교실</span></a>
                            <a href="javascript:void(0);" onclick="javscript:fn_SearchKeyWord('약품검색');" class="chip"><span>#약품검색</span></a>
                        </div>
						<a href="javascript:fn_goMenu('/home/board/49_List.do');" class="btn_main_more">건강영상 바로가기</a>
                    </div>
					<div class="info_card_wrap swiper-container swiper-container-initialized swiper-container-horizontal">
						<ul class="swiper-wrapper" style="transform: translate3d(0px, 0px, 0px);">
							
								
									<li class="swiper-slide swiper-slide-active" style="width: 230.5px; margin-right: 13px;">
										<div class="card_box">
											
											
												
												
													<a href="https://youtu.be/2BAeeej8xJ8?si=o1EMyma3vfCHdgGn" class="" target="_blank">
												
											
												
													
													<p class="photo"><img src="/_upload/board_49/34ebccd7-73d9-4eb6-9135-81e02649b24b" alt="이미지" style="width: 270px; height: 152px;"></p>
												
												
												
												<p class="tit">위암 치료의 최신 트렌드</p>
												<p class="dec"></p>
											</a>
											<p class="chip_wrap">
												
											</p>
											<p class="sns_wrap">
												
												
													
													
												
											</p>
										</div>
									</li>
							
								
									<li class="swiper-slide swiper-slide-next" style="width: 230.5px; margin-right: 13px;">
										<div class="card_box">
											
											
												
												
													<a href="https://youtu.be/GXNTZAzONvY?si=3kvidVoW3IMApmql" class="" target="_blank">
												
											
												
													
													<p class="photo"><img src="/_upload/board_49/caeec5e0-c4b3-4534-aaaf-eaa1699b7898" alt="이미지" style="width: 270px; height: 152px;"></p>
												
												
												
												<p class="tit">뽑을까? 말까? 그것이 문제로다(발치 교정 vs 비발치교정)</p>
												<p class="dec"></p>
											</a>
											<p class="chip_wrap">
												
											</p>
											<p class="sns_wrap">
												
												
													
													
												
											</p>
										</div>
									</li>
							
								
									<li class="swiper-slide" style="width: 230.5px; margin-right: 13px;">
										<div class="card_box">
											
											
												
													<a href="javascript:void(0);" onclick="javascript:fn_Detail('201000000','','49','151');">
												
												
											
												
													
													<p class="photo"><img src="/_upload/board_49/83b0d745-b2dc-4064-994a-95a5b73aabce" alt="이미지" style="width: 270px; height: 152px;"></p>
												
												
												
												<p class="tit">음식 삼키기가 힘든 질환, 연하장애 극복법</p>
												<p class="dec"></p>
											</a>
											<p class="chip_wrap">
												
											</p>
											<p class="sns_wrap">
												
												
													
														
															<a href="https://youtu.be/LCknv226DQM?si=kINv2SBP4LyAeg5O" class="" target="_blank"><img src="../../resources/img/ico_circle_youtube.png" alt="youtube"></a>
														
														
														
													
													
												
											</p>
										</div>
									</li>
							
								
									<li class="swiper-slide" style="width: 230.5px; margin-right: 13px;">
										<div class="card_box">
											
											
												
													<a href="javascript:void(0);" onclick="javascript:fn_Detail('201000000','','49','150');">
												
												
											
												
													
													<p class="photo"><img src="/_upload/board_49/98b3762a-2a1d-4d95-ad12-1b5a1c6bbdb3" alt="이미지" style="width: 270px; height: 152px;"></p>
												
												
												
												<p class="tit">자연분만, 너두 할 수 있어!</p>
												<p class="dec"></p>
											</a>
											<p class="chip_wrap">
												
											</p>
											<p class="sns_wrap">
												
												
													
														
														
														
													
													
												
											</p>
										</div>
									</li>
							
								
									<li class="swiper-slide" style="width: 230.5px; margin-right: 13px;">
										<div class="card_box">
											
											
												
												
													<a href="https://news.kbs.co.kr/news/pc/view/view.do?ncd=7821330&amp;ref=A" class="" target="_blank">
												
											
												
													
													<p class="photo"><img src="/_upload/board_49/8c234bbd-9c0c-4c21-ab22-00f4219322cb" alt="이미지" style="width: 270px; height: 152px;"></p>
												
												
												
												<p class="tit">지방간 놔두면 심뇌혈관질환 ‘빨간불’…음주하면 더 위험</p>
												<p class="dec"></p>
											</a>
											<p class="chip_wrap">
												
											</p>
											<p class="sns_wrap">
												
												
													
													
												
											</p>
										</div>
									</li>
							
								
									<li class="swiper-slide" style="width: 230.5px; margin-right: 13px;">
										<div class="card_box">
											
											
												
												
													<a href="https://www.ebs.co.kr/tv/show?courseId=40046555&amp;stepId=60049651&amp;lectId=60412075" class="" target="_blank">
												
											
												
													
													<p class="photo"><img src="/_upload/board_49/6cb466f6-e5fa-4d9e-ab79-36989e83d7c5" alt="이미지" style="width: 270px; height: 152px;"></p>
												
												
												
												<p class="tit">노화, 피할 수 없다면 늦춰라!</p>
												<p class="dec"></p>
											</a>
											<p class="chip_wrap">
												
											</p>
											<p class="sns_wrap">
												
												
													
													
												
											</p>
										</div>
									</li>
							
								
									<li class="swiper-slide" style="width: 230.5px; margin-right: 13px;">
										<div class="card_box">
											
											
												
												
													<a href="https://www.ichannela.com/program/detail/program_video_renew.do?publishId=000000376978" class="" target="_blank">
												
											
												
													
													<p class="photo"><img src="/_upload/board_49/129a4a94-23b2-45e8-9967-68ac2cc536b1" alt="이미지" style="width: 270px; height: 152px;"></p>
												
												
												
												<p class="tit">벗어날 수 없는 비만의 굴레</p>
												<p class="dec"></p>
											</a>
											<p class="chip_wrap">
												
											</p>
											<p class="sns_wrap">
												
												
													
													
												
											</p>
										</div>
									</li>
							
								
									<li class="swiper-slide" style="width: 230.5px; margin-right: 13px;">
										<div class="card_box">
											
											
												
													<a href="javascript:void(0);" onclick="javascript:fn_Detail('201000000','','49','146');">
												
												
											
												
													
													<p class="photo"><img src="/_upload/board_49/3a756656-1fe2-45d3-abf8-9a645b35704b" alt="이미지" style="width: 270px; height: 152px;"></p>
												
												
												
												<p class="tit">대학병원 시술실에서 일어난 이야기 : 50대 여성 유방암 환자 </p>
												<p class="dec"></p>
											</a>
											<p class="chip_wrap">
												
											</p>
											<p class="sns_wrap">
												
												
													
														
														
														
													
													
												
											</p>
										</div>
									</li>
							
						</ul>
						<div class="swiper-pagination"></div>
						<div class="swiper-scrollbar"><div class="swiper-scrollbar-drag" style="transform: translate3d(0px, 0px, 0px); width: 467.339px;"></div></div>
					<span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>
                </div>
                <!-- // 건강정보 -->
            </div>
        </section>
        <!-- //contents -->
		<!--/sub_container_wrapper-->
		
		
			
		












<!--footer-->

	
	
		
			
			
			
			
				<!--footer_wrapper-->
				<footer id="footer">
		            <div class="inner">
		                <div class="footer_bott">
		                	<h1 class="footer_logo">
		                        <a href="javascript:void(0);">
		                            <img src="../../resources/img/logo_footer-g.png" alt="중앙대학교 광명병원">
		                        </a>
		                    </h1>
		                    <div class="footer_bott_con">
		                        <ul class="footer_bott_menu fix">
		                            <li><a href="/home/conts/109014000000000.do" target="_blank">환자권리장전</a></li>
		                            <li class="etc_cor"><a href="/home/member/PrivacyInfo.do">개인정보처리방침</a></li>
		                            <li><a href="/home/guide/prescribe.do">비급여항목안내</a></li>
		                        </ul>
		                        <address>
		                            <strong>
		                            	경기도 광명시 덕안로 110 (일직동 501)
		                                <span onclick="location.href='tel:1811-7800';">TEL : 1811-7800</span>
		                            </strong>
		                            <em>COPYRIGHT (C) CHUNG-ANG UNIVERSITY GWANGMYEONG HOSPITAL, ALL RIGHTS RESERVED.</em>
		                        </address>
		                    </div>
		                    <div class="family_site">
		                        <a href="javascript:void(0);">패밀리사이트</a>
		                        <ul class="family_site_list">
		                            <li><a href="http://ch.cauhs.or.kr/group/index.do?introDisplayYn=N">중앙대학교의료원</a></li>
									<li><a href="http://gh.cauhs.or.kr/fund/">발전후원회</a></li>
									<li><a href="http://ch.cauhs.or.kr/home/index.do?introDisplayYn=N">중앙대학교병원</a></li>
									<li><a href="http://gh.cauhs.or.kr/health/">소하검진센터</a></li>
									<li><a href="http://gh.cauhs.or.kr/refer/">진료협력센터</a></li>
									<li><a href="http://gh.cauhs.or.kr/funeral/">장례식장</a></li>
									<li><a href="http://gh.cauhs.or.kr/recruit/">인재채용</a></li>
									<li><a href="http://gh.cauhs.or.kr/eng/">English</a></li>
									
		                        </ul>
		                    </div>
							<ul class="sns_wrap fix">
								<li><a href="https://www.youtube.com/channel/UC6t1q7O-yAlOa9lRpxRWY7A" target="_blank" title="새창으로 열기" class=""><img src="../../resources/img/ico_circle_youtube.png" alt="유튜브"></a></li>
								<li><a href="https://instagram.com/ghcauhs_official?igshid=MzMyNGUyNmU2YQ==" target="_blank" title="새창으로 열기" class=""><img src="../../resources/img/ico_circle_insta.png" alt="인스타"></a></li>
								<li><a href="https://blog.naver.com/gh_cauhs" target="_blank" title="새창으로 열기" class=""><img src="../../resources/img/ico_circle_blog.png" alt="네이버 블로그"></a></li>

							</ul>
		                </div>
		            </div>
		            <a href="javascript:void(0);" onclick="moveTop();" class="btn_top"><spna class="skip">상단으로 가기</spna></a>
		        </footer>
				<!--/footer_wrapper-->
			
		
	
	
	
	
	
	
	

	
	

	
	

	
	


	
	

<!--//footer-->
		
		
		














<div class="sitemap_wrap">
    <div class="sitemap_inner">
        <div class="sitemap_top fix">
            <h3>전체메뉴</h3>
            <a href="javascript:void(0);" onclick="sitemapClose();" class="sitemap_close"><span class="skip">닫기버튼</span></a>
        </div>
        <ul class="sitemap fix">
        	<li><a href="/home/conts/101001000000000.do" class="tit">이용안내</a>
<ul class="depth2">
<li>
</li><li><a href="/home/conts/101001000000000.do">오시는 길</a>
</li>
<li><a href="/home/conts/101002003000000.do">주차안내</a>
</li>
<li><a href="/home/conts/101003000000000.do">면회안내</a>
</li>
<li><a href="/home/conts/101004000000000.do">전화번호안내</a>
</li>
<li><a href="/home/introduce/floor0Pop.do">층별안내</a>
</li>
<li><a href="/home/conts/101006010000000.do">진료비안내</a>
</li>
<li><a href="/home/conts/101010000000000.do">편의시설안내</a>
</li>
<li><a href="/home/conts/101014000000000.do">모바일앱</a>
</li>

</ul>
</li>
<li><a href="/home/medical/deptAllIntro.do" class="tit">진료과/전문클러스터</a>
<ul class="depth2">
<li>
</li><li><a href="/home/medical/deptAllIntro.do">진료과</a>
</li>
<li><a href="/home/medical/profList.do">의료진</a>
</li>
<li><a href="/home/conts/105002001000000.do">암병원</a>
</li>
<li><a href="/home/conts/105015007009000.do">심장뇌혈관병원</a>
</li>
<li><a href="/home/medical/digesAllIntro.do">소화기센터</a>
</li>
<li><a href="/home/medical/allergyAllIntro.do">호흡기알레르기센터</a>
</li>
<li><a href="/home/medical/spineAllIntro.do">척추센터</a>
</li>
<li><a href="/home/conts/105016005000000.do">관절센터</a>
</li>
<li><a href="/home/medical/robotAllIntro.do">로봇수술센터</a>
</li>
<li><a href="/home/conts/105022001001000.do">노년수술전문지원센터</a>
</li>
<li><a href="/home/conts/105023001000000.do">당일수술센터</a>
</li>
<li><a href="/home/conts/105021001000000.do">스마트임상시험센터(STC)</a>
</li>
<li><a href="/home/conts/105009002000000.do">IRB</a>
</li>
<li><a href="/home/conts/105006008002000.do">지원부서</a>
</li>
<li><a href="https://gh.cauhs.or.kr/health/" target="_blank">소하검진센터</a>
</li>

</ul>
</li>
<li><a href="/home/reserveNew/resvOnline.do" class="tit">예약/조회</a>
<ul class="depth2">
<li>
</li><li><a href="/home/reserveNew/resvOnline.do">온라인 예약</a>
</li>
<li><a href="/home/conts/106001002000000.do">처음진료 간편예약</a>
</li>
<li><a href="/home/member/userMypageCheck.do">진료예약 조회</a>
</li>

</ul>
</li>
<li><a href="/home/conts/102001000000000.do" class="tit">진료안내</a>
<ul class="depth2">
<li>
</li><li><a href="/home/conts/102001000000000.do">외래진료</a>
</li>
<li><a href="/home/conts/102002000000000.do">입 · 퇴원</a>
</li>
<li><a href="/home/conts/102003000000000.do">응급진료</a>
</li>
<li><a href="/home/conts/102007001000000.do">증명서발급안내</a>
</li>
<li><a href="/home/conts/102008000000000.do">병리자료대출안내</a>
</li>
<li><a href="/home/guide/prescribe.do">비급여항목안내</a>
</li>
<li><a href="https://gh.cauhs.or.kr/refer/" target="_blank">진료협력센터</a>
</li>
<li><a href="/home/conts/102012000000000.do">호스피스 완화의료</a>
</li>
<li><a href="/home/conts/102013000000000.do">코로나19 검사</a>
</li>
<li><a href="/home/conts/102015001000000.do">수술실 CCTV 안내</a>
</li>

</ul>
</li>
<li><a href="/home/board/2_List.do" class="tit">병원소개</a>
<ul class="depth2">
<li>
</li><li><a href="/home/board/2_List.do">병원소식</a>
</li>
<li><a href="/home/conts/103002000000000.do">미션 · 비전</a>
</li>
<li><a href="/home/conts/103012000000000.do">안전보건경영방침</a>
</li>
<li><a href="/home/conts/103005001000000.do">병원현황</a>
</li>
<li><a href="/home/conts/103006001000000.do">병원홍보</a>
</li>
<li><a href="/home/conts/103011000000000.do">병원연혁</a>
</li>
<li><a href="/home/conts/103013000000000.do">병원HI</a>
</li>

</ul>
</li>
<li><a href="/home/board/8_List.do" class="tit">건강정보</a>
<ul class="depth2">
<li>
</li><li><a href="/home/board/8_List.do">건강강좌</a>
</li>
<li><a href="/home/board/49_List.do">건강영상</a>
</li>
<li><a href="/home/board/76_List.do">카드뉴스</a>
</li>

</ul>
</li>
<li><a href="/home/board/boardClientThanksList.do" class="tit">고객서비스</a>
<ul class="depth2">
<li>
</li><li><a href="/home/board/boardClientThanksList.do">칭찬합시다</a>
</li>
<li><a href="/home/board/boardClientComplainRegist.do">고객의 소리</a>
</li>
<li><a href="/home/medicine/kimsPop.do">약품검색</a>
</li>
<li><a href="/home/conts/104005001000000.do">의료사회복지</a>
</li>
<li><a href="https://vy.vics.kr/cert.service" target="_blank">온라인 제증명</a>
</li>

</ul>
</li>
<li><a href="/home/member/login.do" class="tit">회원서비스</a>
<ul class="depth2">
<li>
</li><li><a href="/home/member/login.do">로그인</a>
</li>
<li><a href="/home/member/join1.do">회원가입</a>
</li>
<li><a href="/home/member/findId.do">아이디 찾기</a>
</li>
<li><a href="/home/member/findPw.do">비밀번호 찾기</a>
</li>
<li><a href="/home/member/userMypageCheck.do">회원정보</a>
</li>
<li><a href="/home/member/familyRegist.do">대리예약 대상자등록</a>
</li>
<li><a href="/home/conts/109014000000000.do">환자권리장전</a>
</li>
<li><a href="/home/member/PrivacyInfo.do">개인정보처리방침</a>
</li>
<li><a href="/home/member/TermsInfo.do">이용약관</a>
</li>
<li><a href="/home/search/totalList.do">통합검색</a>
</li>

</ul>
</li>

        </ul>
    </div>
</div>
		
	</div>
    <!--/body_wrapper-->
    <!-- 준비중 팝업 -->
    <div class="popup" style="display:none;" id="popup_ing">
        <div class="popup_inner">
            <div class="popup_header">
                <h2 class="popup_tit">안내</h2>
                <a href="javascript:void(0);" onclick="document.getElementById('popup_ing').style.display='none'" class="btn_close"><i></i></a>
            </div>
            <div class="popup_contents">
                <div class="con_sec">
                    <div class="cnt_ready">
		                <div class="txt_w">
		                    <p class="tit"><em>서비스 준비중</em>입니다.</p>
		                    <p class="txt">보다 나은 서비스를 위하여 페이지 준비중에 있습니다.<br>
								빠른 시일내에 준비하여 찾아 뵙겠습니다.
							</p>
		                </div>
		            </div>
					<div class="btm_area">
						<a href="javascript:void(0);" class="btn_close" onclick="document.getElementById('popup_ing').style.display='none'">닫기</a>
					</div>
				</div>
            </div>
        </div>
    </div>
    <!-- // 준비중 팝업 -->
	<!-- 통합검색 레이어팝업 -->
	<div class="layer_search_wrapper">
		<div class="layer_search">
			<fieldset>
				<legend>통합검색</legend>
				<div class="top">
					<strong>SEARCH</strong>
					<a href="javascript:void(0);" class="layer_search_close" onclick="searchClose();"><i></i></a>
				</div>
				<div class="bott">
					
					<input type="text" id="subKeyWord" name="subKeyWord" class="layer_search_input" placeholder="무엇이 궁금하세요?">
					<ul class="fix" style="display:none;">
						<!-- <li><a href="javascript:void(0);" onclick="javascript:fn_TotalSearch(this);">#온라인예약</a></li> -->
						<!-- <li><a href="javascript:void(0);" onclick="javascript:fn_TotalSearch(this);">#증명서발급</a></li> -->
						<li><a href="javascript:void(0);" onclick="javascript:fn_TotalSearch(this);">#진료과</a></li>
						<li><a href="javascript:void(0);" onclick="javascript:fn_TotalSearch(this);">#의료진</a></li>
						<li><a href="javascript:void(0);" onclick="javascript:fn_TotalSearch(this);">#오시는길</a></li>
						<li><a href="javascript:void(0);" onclick="javascript:fn_TotalSearch(this);">#중앙대학교광명병원</a></li>
					</ul>
					<input type="image" class="btn_layer_search" src="../../resources/img/btn_s.png" onclick="javascript:fn_TotalSearch('subKeyWord'); return false;">
				</div>
			</fieldset>
		</div>
	</div>
	<!-- //통합검색 레이어팝업 -->
	<!-- 안내 레이어팝업 -->
	
	<!-- //안내 레이어팝업 -->

	<!-- 안내 레이어팝업 -->
	
		
			<div class="layer_wrap bh_main_open_event_pop" style="display: none;">
				<div class="layer_dim"></div>
				<div class="layer_inner">
					<div class="layer_top">
						<strong>안내</strong>
					</div>
					
						
						
						
						
							<div class="layer_con">
								
									
										<a href="https://health.chosun.com/site/data/html_dir/2023/12/01/2023120102189.html" target="_blank">
											<img src="/_upload/popup/3344cff7-ba22-4aed-aa89-8f2697b1f47b" style="width: 500px;">
										</a>
									
									
								
								
									
										<a href="https://gh.cauhs.or.kr/health/" target="_blank">
											<img src="/_upload/popup/dab8612d-f3b9-4f65-b806-e3377bfa7875" style="width: 500px;">
										</a>
									
									
								
							</div>
						
					
					<div class="layer_bott fix">
						<span class="layer_check">
							<input type="checkbox" id="todaycc_m" name="">
							<label for="todaycc_m">오늘 하루 보지않기</label>
						</span>
						<a href="javascript:void(0);" class="layer_close_txt" onclick="fn_LayerPopClose();">닫기</a>
					</div>
					<a href="javascript:void(0);" class="layer_close_btn" onclick="fn_LayerPopClose();"></a>
				</div>
			</div>
		
	
	
	<!-- //안내 레이어팝업 -->

    <script>
		$('#fullpage').fullpage({
			scrollingSpeed: 500,
			scrollOverflow: true,
			slidesNavigation: true,
			anchors: ['menu01', 'menu02', 'menu03', 'menu04'],
			menu: '.menu_nav',
			responsiveWidth: 1025
		});
		$(".parking_index li a").click(function(){
		    $(".parking_index li a").removeClass("on");
		    $(this).addClass("on");
		    $(".parking_map li").hide();
		    var num = $(this).parent("li").index() + 1;
		    $(".parking_map li:nth-child("+num+")").show();
		});
        /*탭이동*/
		var funeral_idx = 1;
		function move_tab(idx) {
			$(" #tab_info" + funeral_idx).removeClass("on");
			$(" #tab_info" + idx).addClass("on");
			$(" #info_area" + funeral_idx).css("display", "none");
			$(" #info_area" + idx).css("display", "");
			funeral_idx = idx;
		}
        function fnMove(seq) {
            var offset = $("#section" + seq).offset();
            $('html, body').animate({ scrollTop: offset.top }, 500);
        }
        // 메인 비쥬얼 슬라이드
        var swiper4 = new Swiper('.main_silde', {
			slidesPerView: 1,
			loop: true,
			effect: 'fade',
			freeMode: false,
			observer: true,
			observeParents: true,
			loop: true,
			grabCursor: true,
			autoplayDisableOnInteraction: true,
            keyboard: {
                enabled: true
            },
            pagination: {
                el: '.swiper-pagination',
                type: "fraction"
            },
            renderFraction: function (currentClass, totalClass) {
                return '<span class="' + currentClass + '"></span>' +
                        ' of ' +
                        '<span class="' + totalClass + '"></span>';
            },
            autoplay: {
                delay: 8000
            }
        });
        // 미디어센터 슬라이드
        var swiper2 = new Swiper('.banner_wrap', {
            slidesPerView: 1,
            loop: true,
            nextButton: '.swiper-button-next',
            prevButton: '.swiper-button-prev',
            pagination: {
                el: '.swiper-pagination',
                type: "fraction"
            },
            renderFraction: function (currentClass, totalClass) {
                return '<span class="' + currentClass + '"></span>' +
                        ' of ' +
                        '<span class="' + totalClass + '"></span>';
            },
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev'
            },
            autoplay: {
                delay: 5000
            }
        });
        // 최상단 배너 슬라이드
        var swiper3 = new Swiper('.header_banner_inner', {
            slidesPerView: 1,
            loop: true,
			freeMode: false,
   			observer: true,
            observeParents: true,
            //grabCursor: true,
            //autoplayDisableOnInteraction: true,
            keyboard: {
                enabled: true
            },
            pagination: {
                el: '.swiper-pagination',
                clickable: true
            },
			autoplay: {
                delay: 5000
            }
        });
		// 팝업 배너 슬라이드
        var swiper5 = new Swiper('.popup_banner_n', {
            slidesPerView: 1,
            loop: true,
            keyboard: {
                enabled: true
            },
            pagination: {
                el: '.swiper-pagination1',
                clickable: true
            },
			autoplay: {
                delay: 5000
            }
        });
        // 진료과 슬라이드
        var swiper = new Swiper('.link_list_wrap', {
            loop: true,
            slidesPerView: 3,
            spaceBetween: 30,
            grabCursor: true,
            centeredSlides: true,
            nextButton: '.swiper-button-next',
            prevButton: '.swiper-button-prev',
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev'
            },
            pagination: {
                el: '.swiper-pagination',
                type: "fraction"
            },
            renderFraction: function (currentClass, totalClass) {
                return '<span class="' + currentClass + '"></span>' +
                        ' of ' +
                        '<span class="' + totalClass + '"></span>';
            }
        });

		// 팝업 층별안내 안내
		function fn_floor_open(idx){
			$("#layer_pop_floor" + idx).css({ "visibility": "visible" });
		}
		function fn_floor_Close() {
        	$(".popup_floor").css({ "visibility": "hidden" });
		}
   	</script>
	
	














<div class="sitemap_wrap">
    <div class="sitemap_inner">
        <div class="sitemap_top fix">
            <h3>전체메뉴</h3>
            <a href="javascript:void(0);" onclick="sitemapClose();" class="sitemap_close"><span class="skip">닫기버튼</span></a>
        </div>
        <ul class="sitemap fix">
        	<li><a href="/home/conts/101001000000000.do" class="tit">이용안내</a>
<ul class="depth2">
<li>
</li><li><a href="/home/conts/101001000000000.do">오시는 길</a>
</li>
<li><a href="/home/conts/101002003000000.do">주차안내</a>
</li>
<li><a href="/home/conts/101003000000000.do">면회안내</a>
</li>
<li><a href="/home/conts/101004000000000.do">전화번호안내</a>
</li>
<li><a href="/home/introduce/floor0Pop.do">층별안내</a>
</li>
<li><a href="/home/conts/101006010000000.do">진료비안내</a>
</li>
<li><a href="/home/conts/101010000000000.do">편의시설안내</a>
</li>
<li><a href="/home/conts/101014000000000.do">모바일앱</a>
</li>

</ul>
</li>
<li><a href="/home/medical/deptAllIntro.do" class="tit">진료과/전문클러스터</a>
<ul class="depth2">
<li>
</li><li><a href="/home/medical/deptAllIntro.do">진료과</a>
</li>
<li><a href="/home/medical/profList.do">의료진</a>
</li>
<li><a href="/home/conts/105002001000000.do">암병원</a>
</li>
<li><a href="/home/conts/105015007009000.do">심장뇌혈관병원</a>
</li>
<li><a href="/home/medical/digesAllIntro.do">소화기센터</a>
</li>
<li><a href="/home/medical/allergyAllIntro.do">호흡기알레르기센터</a>
</li>
<li><a href="/home/medical/spineAllIntro.do">척추센터</a>
</li>
<li><a href="/home/conts/105016005000000.do">관절센터</a>
</li>
<li><a href="/home/medical/robotAllIntro.do">로봇수술센터</a>
</li>
<li><a href="/home/conts/105022001001000.do">노년수술전문지원센터</a>
</li>
<li><a href="/home/conts/105023001000000.do">당일수술센터</a>
</li>
<li><a href="/home/conts/105021001000000.do">스마트임상시험센터(STC)</a>
</li>
<li><a href="/home/conts/105009002000000.do">IRB</a>
</li>
<li><a href="/home/conts/105006008002000.do">지원부서</a>
</li>
<li><a href="https://gh.cauhs.or.kr/health/" target="_blank">소하검진센터</a>
</li>

</ul>
</li>
<li><a href="/home/reserveNew/resvOnline.do" class="tit">예약/조회</a>
<ul class="depth2">
<li>
</li><li><a href="/home/reserveNew/resvOnline.do">온라인 예약</a>
</li>
<li><a href="/home/conts/106001002000000.do">처음진료 간편예약</a>
</li>
<li><a href="/home/member/userMypageCheck.do">진료예약 조회</a>
</li>

</ul>
</li>
<li><a href="/home/conts/102001000000000.do" class="tit">진료안내</a>
<ul class="depth2">
<li>
</li><li><a href="/home/conts/102001000000000.do">외래진료</a>
</li>
<li><a href="/home/conts/102002000000000.do">입 · 퇴원</a>
</li>
<li><a href="/home/conts/102003000000000.do">응급진료</a>
</li>
<li><a href="/home/conts/102007001000000.do">증명서발급안내</a>
</li>
<li><a href="/home/conts/102008000000000.do">병리자료대출안내</a>
</li>
<li><a href="/home/guide/prescribe.do">비급여항목안내</a>
</li>
<li><a href="https://gh.cauhs.or.kr/refer/" target="_blank">진료협력센터</a>
</li>
<li><a href="/home/conts/102012000000000.do">호스피스 완화의료</a>
</li>
<li><a href="/home/conts/102013000000000.do">코로나19 검사</a>
</li>
<li><a href="/home/conts/102015001000000.do">수술실 CCTV 안내</a>
</li>

</ul>
</li>
<li><a href="/home/board/2_List.do" class="tit">병원소개</a>
<ul class="depth2">
<li>
</li><li><a href="/home/board/2_List.do">병원소식</a>
</li>
<li><a href="/home/conts/103002000000000.do">미션 · 비전</a>
</li>
<li><a href="/home/conts/103012000000000.do">안전보건경영방침</a>
</li>
<li><a href="/home/conts/103005001000000.do">병원현황</a>
</li>
<li><a href="/home/conts/103006001000000.do">병원홍보</a>
</li>
<li><a href="/home/conts/103011000000000.do">병원연혁</a>
</li>
<li><a href="/home/conts/103013000000000.do">병원HI</a>
</li>

</ul>
</li>
<li><a href="/home/board/8_List.do" class="tit">건강정보</a>
<ul class="depth2">
<li>
</li><li><a href="/home/board/8_List.do">건강강좌</a>
</li>
<li><a href="/home/board/49_List.do">건강영상</a>
</li>
<li><a href="/home/board/76_List.do">카드뉴스</a>
</li>

</ul>
</li>
<li><a href="/home/board/boardClientThanksList.do" class="tit">고객서비스</a>
<ul class="depth2">
<li>
</li><li><a href="/home/board/boardClientThanksList.do">칭찬합시다</a>
</li>
<li><a href="/home/board/boardClientComplainRegist.do">고객의 소리</a>
</li>
<li><a href="/home/medicine/kimsPop.do">약품검색</a>
</li>
<li><a href="/home/conts/104005001000000.do">의료사회복지</a>
</li>
<li><a href="https://vy.vics.kr/cert.service" target="_blank">온라인 제증명</a>
</li>

</ul>
</li>
<li><a href="/home/member/login.do" class="tit">회원서비스</a>
<ul class="depth2">
<li>
</li><li><a href="/home/member/login.do">로그인</a>
</li>
<li><a href="/home/member/join1.do">회원가입</a>
</li>
<li><a href="/home/member/findId.do">아이디 찾기</a>
</li>
<li><a href="/home/member/findPw.do">비밀번호 찾기</a>
</li>
<li><a href="/home/member/userMypageCheck.do">회원정보</a>
</li>
<li><a href="/home/member/familyRegist.do">대리예약 대상자등록</a>
</li>
<li><a href="/home/conts/109014000000000.do">환자권리장전</a>
</li>
<li><a href="/home/member/PrivacyInfo.do">개인정보처리방침</a>
</li>
<li><a href="/home/member/TermsInfo.do">이용약관</a>
</li>
<li><a href="/home/search/totalList.do">통합검색</a>
</li>

</ul>
</li>

        </ul>
    </div>
</div>
  	
	<script type="text/javascript">
		//모바일 환경인지 체크하는 script
		function Mobile() {return /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent);}

		$(document).ready(function(){
			$('ul.research_tab_section li').click(function(){
				var tab_id = $(this).attr('data-tab');
				$('ul.research_tab_section li').removeClass('current');
				$('.tab-content').removeClass('current');
				$(this).addClass('current');
				$("#"+tab_id).addClass('current');
			});
			$(document).on("click", ".plus", function(){
				return false;
			});
			$("#saveUserId").change(function(){ // 체크박스에 변화가 있다면,
		        if($("#saveUserId").is(":checked")){ // ID 저장하기 체크했을 때,
		        	G_Util.setCookie("key", $("#userId").val(), 7); // 7일 동안 쿠키 보관
		        }else{ // ID 저장하기 체크 해제 시,
		        	G_Util.deleteCookie("key");
		        }
		    });

			if($("#userId").val() != ""){ // 그 전에 ID를 저장해서 처음 페이지 로딩 시, 입력 칸에 저장된 ID가 표시된 상태라면,
		        $("#saveUserId").attr("checked", true); // ID 저장하기를 체크 상태로 두기.
		    }
		});
	</script>
	<script>
	    var swiper1 = new Swiper('.depart_wrap', {
	        slidesPerView: 3,
	        slidesPerColumn: 3,
	        slidesPerGroup :3,
	        pagination: {
	          el: ".swiper-pagination",
	          clickable: true,
	        }
	    });
	    var swiper2 = new Swiper('.popupzone_content', {
	        slidesPerView: 1,
	        loop: true,
			autoplay: {
				delay:3000,
			},
	        pagination: {
	            el: '.swiper-pagination',
	            clickable: true,
	            type: 'bullets'
	        },
	        navigation: {
	            nextEl: '.swiper-button-next',
	            prevEl: '.swiper-button-prev',
	        }
	    });
	    var swiper3 = new Swiper('.info_card_wrap', {
	        slidesPerView: 1,
	        spaceBetween : 13,
	        loop: false,
	        navigation: {
	            nextEl: '.swiper-button-next',
	            prevEl: '.swiper-button-prev',
	        },
	        scrollbar: {
	            el: '.swiper-scrollbar',
	            draggable: true,
	        },
			breakpoints: {
				420: {
					slidesPerView: 2
				},
				900: {
					slidesPerView: 4
				}
			}
	    });
	</script>
</form>
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async="" src="https://www.googletagmanager.com/gtag/js?id=G-VC9QBBNCWM"></script>
<script>
	window.dataLayer = window.dataLayer || [];
	function gtag(){dataLayer.push(arguments);}
	gtag('js', new Date());
	gtag('config', 'G-VC9QBBNCWM');
</script>
<script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script>
<script type="text/javascript">
	if(!wcs_add) var wcs_add = {};
	wcs_add["wa"] = "fab6e091590438";
	if(window.wcs){
		wcs_do();
	}
</script>

</body></html>