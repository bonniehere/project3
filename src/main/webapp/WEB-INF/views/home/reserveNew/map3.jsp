<%@page import="com.constant01.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko" xmlns="http://www.w3.org/1999/xhtml"><head>
	<meta charset="utf-8">
	<meta http-equiv="Content-Script-Type" content="text/javascript">
	<meta http-equiv="Content-Style-Type" content="text/css">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta http-equiv="Expires" content="-1">
            <meta http-equiv="Pragma" content="no-cache">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimun-scale=1.0, user-scalable=no, target-densitydpi=medium-dpi, viewport-fit=cover">
	<title>CONSTANT 메디컬 | 오시는 길</title>
	<meta name="description" content="진료문의 1811-7800 / 환자중심의 디지털 혁신 병원, 수도권 서남부 거점 대학병원">
	<meta name="keywords" content="중앙대학교의료원, 중앙대학교병원, 중앙대학교광명병원, 진료과, 진료안내, 진료예약, 병원소개, 건강정보, 의료진, 고객서비스, 처방정보, 건강증진센터, 증명서발급">
	<meta name="title" content="중앙대학교광명병원">
	<meta property="og:site_name" content="중앙대학교광명병원">
	<meta property="og:title" content="중앙대학교광명병원">
	<meta property="og:description" content="진료문의 1811-7800 / 환자중심의 디지털 혁신 병원, 수도권 서남부 거점 대학병원">
	<meta http-equiv="Pragma" content="no-cache">
	<meta http-equiv="Expires" content="-1">
	<link rel="shortcut icon" href="../../../../resources/favicon.ico" type="image/x-icon">
	<link rel="icon" href="../../../../resources/favicon.ico" type="image/x-icon">
	<link type="text/css" rel="stylesheet" href="../../../../resources/css/default.css?ver=20230220">
   <link type="text/css" rel="stylesheet" href="../../../../resources/css/responsive.css?ver=20230905">
   <link type="text/css" rel="stylesheet" href="../../../../resources/css/swiper-bundle.min.css?ver=1">
   <link type="text/css" rel="stylesheet" href="../../../../resources/css/reservation.css?ver=1">
	<link type="text/css" rel="stylesheet" href="../../../../resources/css/floor.css?ver=1">
	<link type="text/css" rel="stylesheet" href="../../../../resources/css/intro.css?ver=1">
	<!-- <link type="text/css" rel="stylesheet" href="../../resources/css/map.css?ver=1">      -->
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
	<!-- 내가 만든 css 
	<link type="text/css" rel="stylesheet" href="../../../../resources/css/map_c.css">
	이쉑기 적용 안 됨 ㅡㅡ
	-->
	
	
	<!-- 내부 css 선언  -->
	<style>	
	.btn_pop_sty1{
		color:white;
	}


	.floor{
		float: left;
		color: white;
		margin-bottom: 20px;
		margin-left: 10px;
		margin-right: 10px;
		display: inline-block;
		font-size: 130%;
	}
	
	.clicked{
		background-color:white;
		color: #1474d0;
	}
	
	.floortit{
		text-align: center;
		margin-top : 20px;
	}
	.map_info{
		display : flex;
		justify-content: center;
		align-items: center;
	}
	
	/*여기는 밑에 프리뷰 버튼 css*/
	.allfloor{
		width: 80px;
		height: 40px;
		float: right;
		background-color: #1474d0;
		border-radius: 20px;
		text-align: center;
		display : flex;
		justify-content : center;
		align-items : center;
		margin-top: 8px;	
		
	}
	
	#af{
		text-decoration-line: none;
		color: white;
		font-size: 10px;
		font-weight: bold;
		margin: 10px 17px 10px 17px;
	}
	.center{
		color: red;
		font-weight: bold;
	}
	
	.hsp{
		color: blue;
		font-weight: bold;
	}
	
	</style>
	
	
	
	
	
	
	
	
	
	
	
	<script type="text/javascript">
		if( window.location.href.indexOf('www.cauhs.or.kr') > -1){
			location.href='https://ch.cauhs.or.kr/group/';
		}
		//네이버 발전후원회 검색결과용 강제 링크!
		if( window.location.href.indexOf('/home/conts/103008001001000.do') > -1 || window.location.href.indexOf('/home/conts/103008002002000.do') > -1){
			location.href='https://gh.cauhs.or.kr/fund/';
		}
		// ie로 접속할 경우
		if(/MSIE \d|Trident.*rv:/.test(navigator.userAgent)) {
			window.location = 'microsoft-edge:' + window.location;

			setTimeout(function() {
			window.location = 'https://go.microsoft.com/fwlink/?linkid=2135547';
			}, 1);

		}

		function fn_ValidateSearchDate(startId, endId) {
			var sStart = $("#" + startId).val();
			var sEnd = $("#" + endId).val();
			if (sStart != "" && sStart != undefined && sEnd != "" && sEnd != undefined) {
				//시작날짜가 종료날짜보다 이후인 경우
				if (Number(sStart.replaceAll("-", "")) > Number(sEnd.replaceAll("-", ""))) {
					alert("시작일자가 종료일자보다 미래일 수 없습니다.");
					return false;
				} else {
					return true;
				}
			}
			return true;
		}
		//통합검색
		
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
		function fn_HealthBoard(sitePath, boardMngNo, boardNo){
			var formTag = "";
			formTag += "<form id='hspForm' name='hspForm' method='post'>";
			formTag += "<input name='siteCd' value='001000000'/>";
			formTag += "<input name='boardMngNo' value='"+boardMngNo+"'/>";
			formTag += "<input name='boardNo' value='"+boardNo+"'/>";
			formTag += "</form>";
			$("body").append(formTag);
			$("#hspForm").attr("action", "/"+sitePath+"/board/all/"+boardMngNo+"_View.do");
			$("#hspForm").submit();
		}
		function fn_ThanksDetail(boardNo,boardTp,boardSeqNo){
			var formTag = "";
			formTag += "<form id='hspForm' name='hspForm' method='post'>";
			formTag += "<input name='boardNo' value='"+boardNo+"'/>";
			formTag += "<input name='boardTp' value='"+boardTp+"'/>";
			formTag += "<input name='boardSeqNo' value='"+boardSeqNo+"'/>";
			formTag += "</form>";
			$("body").append(formTag);
			$("#hspForm").attr("action","/home/board/boardClientThanksView.do").submit();
		}
		function fn_ProfViewMoveReserve(deptNo, profNo){
			var formTag = "";
			formTag += "<form id='hspForm' name='hspForm' method='post'>";
			formTag += "<input name='deptNo' value='"+deptNo+"'/>";
			formTag += "<input name='profNo' value='"+profNo+"'/>";
			formTag += "</form>";
			$("body").append(formTag);
			$("#hspForm").attr({"action":"/home/reserveNew/resvOnline.do","target":"_self"}).submit();
		}
		//자세히보기.MOOK.2022.04.04.Max해상도 : FullHD
		function fn_DeatilPop(sitePath,deptNo,profNo, empNo){
			var array = {"sitePath":sitePath,"deptNo":deptNo,"profNo":profNo,"empNo":empNo};
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
			G_PostPopupOpen("ProfDetailPop","/"+sitePath+"/medical/profView.do?deptNo="+deptNo+"&profNo="+profNo+"&empNo="+empNo+"",popWidth,popHeight,array);
		}
		//엔터 기능 제한
		$(document).ready(function() {
			$("form").append("<input type='hidden' id='headHspCd' name='headHspCd' value='G' />");
			
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

			$(document).on("click", ".plus", function(){
				return false;
			});
			
			$("#idSaveCheck").change(function(){ // 체크박스에 변화가 있다면,
		        if($("#idSaveCheck").is(":checked")){ // ID 저장하기 체크했을 때,
		        	G_Util.setCookie("key", $("#userId").val(), 7); // 7일 동안 쿠키 보관
		        }else{ // ID 저장하기 체크 해제 시,
		        	G_Util.deleteCookie("key");
		        }
		    });
		});

			// 통합검색 레이어 열기
			function searchOpen() {
				$('.layer_search_wrapper').show();
			}

			// 통합검색 레이어 닫기
			function searchClose() {
				$('.layer_search_wrapper').hide();
			}

			function fn_TotalSearch(obj){
				if($.type(obj) != 'string'){
					if( obj != undefined && $(obj).html().indexOf('#') != -1 ){
						var searchWord = $(obj).html().replaceAll("#","");
						$("#totalWord").val(searchWord);
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
				$("#searchfrm").attr("action","/home/search/totalList.do").submit();
			}
	</script>
	
	
	<script type="text/javascript">
		$(document).ready(function(){
			if( $("#frmTab").length > 0 ){
				//[TAB 1번 형태]
				if( $("#TAB_CONV_1").length > 0 ){
					var nowUrl = window.location.pathname;
					$("input[name=menuCd]").each(function(idx){
						var menuCd  = $(this).val();
						var menuNm  = $("input[name=menuNm]").eq(idx).val();
						var depth   = $("input[name=depth]").eq(idx).val();
						var url     = $("input[name=url]").eq(idx).val();
						var classNm = "";
						if( nowUrl.indexOf(url) > -1 ){
							classNm = "class='on'";
						}
						// 어린이집 새창
						var target = "";
						if( url.indexOf('child') > -1 ){
							target = "target='_blank'";
						}
						$("#TAB_CONV_1").append("<li "+classNm+"><a href='"+url+"' "+target+">"+menuNm+"</a></li>");
					});
					//console.log(nowUrl);
				}
			}
		});
		//파일다운로드
		function fn_FileDown(filePath){
			var objForm = $("<form/>").attr({
				"id"     : "GLOVAL_FILE_FORM",
				"name"   : "GLOVAL_FILE_FORM",
				"action" : "/com/ATagFileDownload.do",
				"target" : "_self",
				"method" : "POST"
			});
			$("<input/>").attr({"type":"hidden","id":"filePath","name":"filePath","value":filePath}).appendTo(objForm);
			$(document.body).append(objForm);
			objForm.submit();
		}
	</script>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

<link rel="stylesheet" href="https://t1.daumcdn.net/kakaomapweb/place/jscss/roughmap/6af7869e/roughmapLander.css"><script src="//ssl.daumcdn.net/dmaps/map_js_init/v3.js?autoload=false"></script><script src="https://t1.daumcdn.net/mapjsapi/js/main/4.4.14/v3.js"></script></head>
<body>
	<!-- wrap -->
	<div class="contents_wrapper">
		<!-- 바로가기 -->
		<div class="skip_navi">
            <a href="#">주메뉴로 가기</a>
            <a href="#">본문으로 가기</a>
            <a href="#">하단으로 가기</a>
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
						<div class="top_lang_menu" style="display:none;">
							<a href="javascript:void(0);" onclick="javascript:$('ul.lang_list').toggle();">KOR</a>
							<ul class="lang_list">
								<li><a href="/eng/">ENG</a></li>
								<li><a href="/chi/">CHI</a></li>
								<li><a href="/rus/">RUS</a></li>
								<li><a href="/mon/">MON</a></li>
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
</li><li><a href="javascript:fn_goMenu('/home/conts/101003000000000.do');">면회안내</a>
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
</li><li><a href="javascript:fn_goMenu('/home/conts/101010000000000.do');">편의시설안내</a>
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
<li><a href="javascript:void(0);" onclick="javascript:fn_goMenu('/home/introduce/floor0Pop.do');">층별배치도</a></li>
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
</li><li><a href="javascript:fn_goMenu('/home/conts/105015007009000.do');" class="plus">심장뇌혈관병원</a>
<ul class="depth3" style="display:none;">
<li><a href="javascript:fn_goMenu('/home/conts/105015007009000.do');">소개</a></li>
<li><a href="javascript:fn_goMenu('/home/conts/105015008012001.do');">센터</a></li>
<li><a href="javascript:fn_goMenu('/home/medical/deptProf393.do');">의료진 소개</a></li>
<li><a href="javascript:fn_goMenu('/home/board/67_List.do');">미디어</a></li>
<li><a href="javascript:fn_goMenu('/home/board/68_List.do');">동영상</a></li>
</ul>
</li><li><a href="javascript:fn_goMenu('/home/medical/digesAllIntro.do');">소화기센터</a>
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
</li><li><a href="javascript:fn_goMenu('/home/medical/robotAllIntro.do');">로봇수술센터</a>
</li>
<li><a href="javascript:fn_goMenu('/home/conts/105022001001000.do');" class="plus">노년수술전문지원센터</a>
<ul class="depth3" style="display:none;">
<li><a href="javascript:fn_goMenu('/home/conts/105022001001000.do');">소개</a></li>
<li><a href="javascript:fn_goMenu('/home/conts/105022002000000.do');">진료안내</a></li>
</ul>
</li><li><a href="javascript:fn_goMenu('/home/conts/105023001000000.do');" class="plus">당일수술센터</a>
<ul class="depth3" style="display:none;">
<li><a href="javascript:fn_goMenu('/home/conts/105023001000000.do');">소개</a></li>
<li><a href="javascript:fn_goMenu('/home/conts/105023002000000.do');">수술 전 안내사항</a></li>
<li><a href="javascript:fn_goMenu('/home/conts/105023003000000.do');">이용안내</a></li>
<li><a href="javascript:fn_goMenu('/home/conts/105023004000000.do');">수술 후 안내사항</a></li>
</ul>
</li><li><a href="javascript:fn_goMenu('/home/conts/105021001000000.do');" class="plus">스마트임상시험센터(STC)</a>
<ul class="depth3" style="display:none;">
<li><a href="javascript:fn_goMenu('/home/conts/105021001000000.do');">소개</a></li>
<li><a href="javascript:fn_goMenu('/home/conts/105021002000000.do');">조직도</a></li>
<li><a href="javascript:fn_goMenu('/home/conts/105021005000000.do');">장점 및 차별화</a></li>
<li><a href="javascript:fn_goMenu('/home/board/70_List.do');">임상시험 모집공고</a></li>
</ul>
</li><li><a href="javascript:fn_goMenu('/home/conts/105009002000000.do');" class="plus">IRB</a>
<ul class="depth3" style="display:none;">
<li><a href="javascript:fn_goMenu('/home/conts/105009002000000.do');">IRB 심의안내</a></li>
</ul>
</li><li><a href="javascript:fn_goMenu('/home/conts/105006008002000.do');" class="plus">지원부서</a>
<ul class="depth3" style="display:none;">
<li><a href="javascript:fn_goMenu('/home/conts/105006008002000.do');">인재개발실</a></li>
<li><a href="javascript:fn_goMenu('/home/medical/deptIntro148.do');">의학정보도서관</a></li>
</ul>
</li></ul>
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
<li><a href="javascript:void(0);" onclick="javascript:fn_goMenu('/home/introduce/floor0Pop.do');">층별배치도</a></li>
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
</li><li><a href="javascript:fn_goMenu('/home/member/userMypageCheck.do');">진료예약 조회</a>
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
<li><a href="javascript:void(0);" onclick="javascript:fn_goMenu('/home/introduce/floor0Pop.do');">층별배치도</a></li>
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
</li><li><a href="javascript:fn_goMenu('/home/conts/102008000000000.do');">병리자료대출안내</a>
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
</li></ul>
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
<li><a href="javascript:void(0);" onclick="javascript:fn_goMenu('/home/introduce/floor0Pop.do');">층별배치도</a></li>
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
</li><li><a href="javascript:fn_goMenu('/home/conts/103002000000000.do');">미션 · 비전</a>
</li>
<li><a href="javascript:fn_goMenu('/home/conts/103012000000000.do');">안전보건경영방침</a>
</li>
<li><a href="javascript:fn_goMenu('/home/conts/103005001000000.do');" class="plus">병원현황</a>
<ul class="depth3" style="display:none;">
<li><a href="javascript:fn_goMenu('/home/conts/103005001000000.do');">시설현황</a></li>
<li><a href="javascript:fn_goMenu('/home/conts/103005002000000.do');">주요장비</a></li>
<li><a href="javascript:fn_goMenu('/home/conts/103005003000000.do');">병원 둘러보기</a></li>
</ul>
</li><li><a href="javascript:fn_goMenu('/home/conts/103006001000000.do');" class="plus">병원홍보</a>
<ul class="depth3" style="display:none;">
<li><a href="javascript:fn_goMenu('/home/conts/103006001000000.do');">홍보동영상</a></li>
</ul>
</li><li><a href="javascript:fn_goMenu('/home/conts/103011000000000.do');">병원연혁</a>
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
<li><a href="javascript:void(0);" onclick="javascript:fn_goMenu('/home/introduce/floor0Pop.do');">층별배치도</a></li>
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
<li><a href="javascript:void(0);" onclick="javascript:fn_goMenu('/home/introduce/floor0Pop.do');">층별배치도</a></li>
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
</li><li><a href="https://vy.vics.kr/cert.service" target="_blank">온라인 제증명</a>
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
<li><a href="javascript:void(0);" onclick="javascript:fn_goMenu('/home/introduce/floor0Pop.do');">층별배치도</a></li>
</ul>
</div>
</div></div></li>

                    </ul>
                </div>

                <div class="header_rit">
                	
					<a href="javascript:void(0);" class="btn_search" onclick="javascript:searchOpen(); fn_MoveSearch()"></a>
                    <a href="javascript:void(0);" class="btn_sitemap" onclick="sitemapOpen();"><i></i></a>
                </div>
            </div>
        </header>
		<!-- /header -->

		<!--location_section-->
		<div class="location_wrap">
			<div class="inner fix">
				<ul class="location fix">
					<li class="home">
                        <a href="/"><span class="skip">홈으로 가기</span></a>
                    </li>
                    <li>
                    	<a href="javascript:void(0);">이용안내<span class="location_icon"></span></a>
                    	<ul class="location_down">
	                    <li><a href="javascript:fn_goMenu('/home/conts/101001000000000.do');">이용안내</a></li>
<li><a href="javascript:fn_goMenu('/home/medical/deptAllIntro.do');">진료과/전문클러스터</a></li>
<li><a href="javascript:fn_goMenu('/home/reserveNew/resvOnline.do');">예약/조회</a></li>
<li><a href="javascript:fn_goMenu('/home/conts/102001000000000.do');">진료안내</a></li>
<li><a href="javascript:fn_goMenu('/home/board/2_List.do');">병원소개</a></li>
<li><a href="javascript:fn_goMenu('/home/board/8_List.do');">건강정보</a></li>
<li><a href="javascript:fn_goMenu('/home/board/boardClientThanksList.do');">고객서비스</a></li>
<li><a href="javascript:fn_goMenu('/home/member/login.do');">회원서비스</a></li>

                    	</ul>
                    </li>
                    <li>
                    	<a href="javascript:void(0);">오시는 길<span class="location_icon"></span></a>
                    	<ul class="location_down">
                    	<li><a href="javascript:fn_goMenu('/home/conts/101001000000000.do');">오시는 길</a></li>
<li><a href="javascript:fn_goMenu('/home/conts/101002003000000.do');">주차안내</a></li>
<li><a href="javascript:fn_goMenu('/home/conts/101003000000000.do');">면회안내</a></li>
<li><a href="javascript:fn_goMenu('/home/conts/101004000000000.do');">전화번호안내</a></li>
<li><a href="javascript:fn_goMenu('/home/introduce/floor0Pop.do');">층별안내</a></li>
<li><a href="javascript:fn_goMenu('/home/conts/101006010000000.do');">진료비안내</a></li>
<li><a href="javascript:fn_goMenu('/home/conts/101010000000000.do');">편의시설안내</a></li>
<li><a href="javascript:fn_goMenu('/home/conts/101014000000000.do');">모바일앱</a></li>

                    	</ul>
                    </li>
				</ul>
				
			</div>
		</div>
		<!--/location_section-->
		<!--sub_container_wrapper-->
		<section class="title fix">
            <div class="inner fix">
            	<h2>예약 환자 : ${maplist[0].userNm}
            	
            	<!-- 현재위치조회위한인풋 -->
            	<input type="hidden" name="resvIdx" id="resvIdx" value="${maplist[0].resvIdx}">
            	<input type="hidden" name="userNm" value="${maplist[0].userNm}">
            	<input type="hidden" name="userLat" id="userLat" value="${maplist[0].userLat}">
            	<input type="hidden" name="userLon" id="userLon" value="${maplist[0].userLon}">
            	</h2>
<a href="javascript:fn_goMenu('/home/conts/101002003000000.do');" class="title_next">Next</a>

            </div>
        </section>
        
       
		<!-- /wrap -->
		<!-- contents -->
		



	
	
	
	<script>
	$(function(){
		$('#tabMove > ul > li > a').click(function(){
			var tabNum = $(this).parent().index() + 1;
			$('#tabMove li').removeClass('on');
			$(this).parent().addClass('on');
			$('.tab_con').hide();
			$('#tabCon' + tabNum).show();
		});
	});

	function copy() {
		$('.address_copy').select();
		document.execCommand('copy');
		alert('클립보드에 복사되었습니다.');
	}
</script>
<section id="contents" class="contents_wrap location">
	<div class="inner">

		<div class="location">
			
			 <!-- 내가 가져온 지도 constant 지도-->

					 
					 
<div class="map_area">
				<div class="map" id="map" style="width:100%;height:350px;">					 
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
			var pacontent;
			var paposition;
			var pacustomOverlay;
			var positionlat = $('input[name=userLat]').val();
			var positionlon = $('input[name=userLon]').val();
			var pacontentNm = $('input[name=userNm]').val();
			
			

			var options = {
			      enableHighAccuracy: true,
			      timeout: 3000000,
			      maximunAge: 0
			};
			
			function success(position){
			   console.log(position);
			   console.log("시작위치");

			        positionlat = $('input[name=userLat]').val();
			        positionlon = $('input[name=userLon]').val();
			        var locPosition = new kakao.maps.LatLng(positionlat, positionlon), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
			         message = '<div style="padding:5px;">'+pacontentNm+' 환자</div>'; // 인포윈도우에 표시될 내용입니다
			         
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
			        
			   
			}
			
			
			//병원 위치 마커 찍기
			
			//위치 정보 가져오기

			// 마커를 생성합니다
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
			
			map.setCenter(mapposition);
			
		
			 
	</script>		 
					 
					 
					 
	</div>

</div>


			<div class="map_info">
				<ul class="floortit">
					<li class="floor"><input type="radio" name="radioFloor" id="1F" style="opacity:0;"><a href="javascript:void(0);" onclick="javascript:fn_gogo(1);" class="btn_pop_sty1" id="btn1F">1F</a></li>
					<li class="floor"><input type="radio" name="radioFloor" id="2F" style="opacity:0;"><a href="javascript:void(0);" onclick="javascript:fn_gogo(2);" class="btn_pop_sty1" id="btn2F">2F</a></li>
					<li class="floor"><input type="radio" name="radioFloor" id="3F" style="opacity:0;"><a href="javascript:void(0);" onclick="javascript:fn_gogo(3);" class="btn_pop_sty1" id="btn3F">3F</a></li>
					<li class="floor"><input type="radio" name="radioFloor" id="4F" style="opacity:0;"><a href="javascript:void(0);" onclick="javascript:fn_gogo(4);" class="btn_pop_sty1" id="btn4F">4F</a></li><br>
					<li class="floor"><input type="radio" name="radioFloor" id="5F" style="opacity:0;"><a href="javascript:void(0);" onclick="javascript:fn_gogo(5);" class="btn_pop_sty1" id="btn5F">5F</a></li>
					<li class="floor"><input type="radio" name="radioFloor" id="6F" style="opacity:0;"><a href="javascript:void(0);" onclick="javascript:fn_gogo(6);" class="btn_pop_sty1" id="btn6F">6F</a></li>
					<li class="floor"><input type="radio" name="radioFloor" id="7F" style="opacity:0;"><a href="javascript:void(0);" onclick="javascript:fn_gogo(7);" class="btn_pop_sty1" id="btn7F">7F</a></li>
				</ul>
			<!-- 	<a href="http://kko.to/H-uFIK0Px" target="_blank">Kakao 지도 바로가기</a> -->
			</div>
			<div class="allfloor"><a id="af" href="/home/reserveNew/floor.do">전층안내</a></div>
			
			

			<div class="ssgap"></div>
                
                    
            <div class="con_sec">
                <h3 class="sub_tit_h3">광명병원 ↔ 광명역 KTX 순환 셔틀버스 </h3>
<h4 class="con_tit mt0">34인승 셔틀버스 71 나 9600 (파란색 버스)</h4>
            <div class="img_wrap">
                <img src="/common/front/home/images/sub/img_route01_01_0904.png" alt="">
            </div>
</div>
<p class="txt_col07 right mt10"><strong>*직원용</strong></p>

<div class="ssgap"></div>

<div class="con_sec">
                <h3 class="sub_tit_h3">광명병원 ↔ 소하검진센터 ↔ 가산디지털단지역 셔틀버스
                 
 </h3>

<h4 class="con_tit mt0">25인승 셔틀버스 700 더 7166 (흰색 버스)  <span style="color: #000; font-size: 16px;">※ 가산디지털단지역 7번 출구 옆 189999번 버스정류장</span>  </h4>
 <div class="img_wrap">
                <img src="/common/front/home/images/sub/img_route02_01_0717.png" alt="">
            </div>
 <div class="img_wrap mt20">
                <img src="/common/front/home/images/sub/img_route02_02_0717.png" alt="">
            </div>
</div>
<p class="txt_col07 right mt10"><strong>*직원용</strong></p>

          
            <div class="sgap"></div>    
			<div class="con_sec">
				   <h3 class="sub_tit_h3">광명병원 ↔ 소하검진센터 차량운행 안내 </h3>
				<div class="img_wrap">
					<img src="/common/front/home/images/sub/img_route_0925.png" alt="">
				</div>
				<div class="img_wrap mt20">
					<img src="/common/front/home/images/sub/img_route03_02_0724.png" alt="">
				</div>
				<p class="con_tit">수요일 오후 1회(12:00 – 12:15), 오후 3회(14:00 – 14:30) 카니발 차량 운행 없음</p>
				<p class="bul1_sty6 mt20">차량 상세안내</p>
				<p class="con_txt mt20">25인승 셔틀버스 (700더 7166 흰색 버스)</p>
				<p class="con_txt">차량 (70주 3725 흰색 카니발)</p>
				<p class="bul1_sty6  mt20">탑승 위치</p>
				<p class="con_txt mt20">&lt;광명병원 → 검진센터&gt;</p>
				<p class="con_txt">- 병원셔틀버스 승강장</p>
				<p class="con_txt">&lt;검진센터 → 광명병원&gt;</p>
				<p class="con_txt">- 카니발차량(70주3725) – 검진센터 출입구 앞(3층 주차장)</p>
				<p class="con_txt">- 셔틀버스(700더7166) –  G타워(빽다방 맞은편 방향 휴먼시아 아파트 입구)</p>
				<p class="con_txt">* 자세한 사항은 안내데스크 문의</p>
				<div class="sssgap"></div>
			<div class="content_table_wrap mt10">
                    <table class="content_table">
                        <caption>광명지역 콜택시 안내 테이블입니다.</caption>
                        <colgroup>
                            <col style="width:20%;">
                            <col style="width:80%;">
                        </colgroup>
						<thead>
						   <tr>
						     <th>상호명</th>
							 <th>전화</th>
						   </tr>
						</thead>
                        <tbody>
                            <tr>
                                <th scope="row" class="t_cen">씨티콜</th>
                                <td class="t_cen">1588-5775</td>
                            </tr>
                            <tr>
                                <th scope="row" class="t_cen">GG콜</th>
                                <td class="t_cen">1688-9999</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
			</div>    
            <div class="sgap"></div>
            <div class="con_sec">
                <h3 class="sub_tit_h3">도보 시</h3>
	
	            <div class="location_dec_wrap">
	                <dl class="dec_box">
	                    <dt class="tit">
	                        <p>
	                            <span class="cate"><em class="">광명역</em></span><em class="">
	                            <span class="txt">1번 출구</span>
	                        </em></p><em class="">
	                    </em></dt><em class="">
	                    <dd class="dec">
                           
	                        <p class="">덕안터널 방향 도보 10분</p>
	                    </dd>
	                </em></dl><em class="">
	            </em></div><em class="">
            </em></div><em class="">
            <div class="sgap"></div> 
            <div class="con_sec">
	            <h3 class="sub_tit_h3">광명역 + 버스 이용 시</h3>
	
	            <div class="location_dec_wrap">
	                <dl class="dec_box">
	                    <dt class="tit">
	                        <p>
	                            <span class="cate"><em class="">광명역</em></span>
	                            <span class="txt">8번 출구</span>
	                        </p>
	                    </dt>
	                    <dd class="dec">
                            <span class="bus_col">
                                <strong class="green">일반</strong>
                                <em class="txt">22, 102</em>
                            </span>
	                        <p class="">중앙대학교광명병원 정류장 하차 </p>
	                    </dd>
	                </dl>
	            </div>
                <div class="location_dec_wrap">
	                <dl class="dec_box">
	                    <dt class="tit">
	                        <p>
	                            <span class="cate"><em class="">광명역</em></span>
	                            <span class="txt">6번 출구</span>
	                        </p>
	                    </dt>
	                    <dd class="dec">
                            <span class="bus_col">
                                <strong class="red">직행</strong>
                                <em class="txt">G9633</em>
                            </span>
	                        <p class="">중앙대학교광명병원 정류장 하차 </p>
	                    </dd>
	                </dl>
	            </div>
                <div class="location_dec_wrap">
	                <dl class="dec_box">
	                    <dt class="tit">
	                        <p>
	                            <span class="cate"><em class="">광명역</em></span>
	                            <span class="txt">2번 출구</span>
	                        </p>
	                    </dt>
	                    <dd class="dec">
                            <span class="bus_col">
                                <strong class="blue">일반</strong>
                                <em class="txt">3, 75</em>
                            </span>
	                        <p class="">이케아,롯데아울렛광명점 하차 → 덕안터널 방향 도보 5분</p>
	                    </dd>
	                </dl>
	            </div>
                <div class="location_dec_wrap">
	                <dl class="dec_box">
	                    <dt class="tit">
	                        <p>
	                            <span class="cate"><em class="">광명역</em></span>
	                            <span class="txt">7번 출구</span>
	                        </p>
	                    </dt>
	                    <dd class="dec">
                            <span class="bus_col">
                                <strong class="green">마을</strong>
                                <em class="txt">1-3, 1-1</em>
                            </span>
	                        <p class="">이케아,롯데아울렛광명점 하차 → 덕안터널 방향 도보 5분</p>
	                    </dd>
	                </dl>
	            </div>
	        </div>
            <div class="sgap"></div>

            <div class="con_sec">
	            <h3 class="sub_tit_h3">주요 지역별</h3>
	
	            <div class="location_dec_wrap">
	                <dl class="dec_box">
	                    <dt class="tit">
	                        <p>
	                            <span class="cate"><em class="">관악역</em></span>
	                            <span class="txt">1번 출구</span>
	                        </p>
	                    </dt>
	                    <dd class="dec">
                            <span class="bus_col">
                                <strong class="green">마을</strong>
                                <em class="txt">1-1</em>
                            </span>
	                        <p class="">GIDC지식산업센터 정류장 하차 → 덕안터널 방향 도보 5분</p>
	                    </dd>
	                </dl>
	            </div>
                <div class="location_dec_wrap">
	                <dl class="dec_box">
	                    <dt class="tit">
	                        <p>
	                            <span class="cate"><em class="">석수역</em></span>
	                            <span class="txt">1번 출구</span>
	                        </p>
	                    </dt>
	                    <dd class="dec">
                            <span class="bus_col">
                                <strong class="green">마을</strong>
                                <em class="txt">1-3</em>
                            </span>
	                        <p class="">이케아, 롯데아울렛광명점 하차 → 덕안터널 방향 도보 5분</p>
	                    </dd>
	                </dl>
	            </div>
                <div class="location_dec_wrap">
	                <dl class="dec_box">
	                    <dt class="tit">
	                        <p>
	                            <span class="cate"><em class="">양재역</em></span>
	                            <span class="txt">9번 출구</span>
	                        </p>
	                    </dt>
	                    <dd class="dec">
                            <span class="bus_col">
                                <strong class="red">직행</strong>
                                <em class="txt">G9633</em>
                            </span>
	                        <p class="">롯데아울렛광명점 하차 → 덕안터널 방향 도보 5분</p>
	                    </dd>
	                </dl>
	            </div>
                <div class="location_dec_wrap">
	                <dl class="dec_box">
	                    <dt class="tit">
	                        <p>
	                            <span class="cate"><em class="">사당역</em></span>
	                            <span class="txt">4번 출구</span>
	                        </p>
	                    </dt>
	                    <dd class="dec">
                            <span class="bus_col">
                                <strong class="red">직행</strong>
                                <em class="txt">8507</em>
                            </span>
	                        <p class="">KTX광명역3번출구 정류장 하차 → 버스 또는 덕안터널 방향 도보 10분</p>
	                    </dd>
	                </dl>
	            </div>
            
                <div class="location_dec_wrap">
	                <dl class="dec_box">
	                    <dt class="tit">
	                        <p>
	                            <span class="cate"><em class="airport">공항</em></span>
	                            <span class="txt">인천국제공항 정류장</span>
	                        </p>
	                    </dt>
	                    <dd class="dec">
                            <span class="bus_col">
                                <strong class="airport">공항</strong>
                                <em class="txt">6770</em>
                            </span>
	                        <p class="">KTX광명역4번출구 정류장 하차 → 버스 또는 덕안터널 방향 도보 10분</p>
	                    </dd>
	                </dl>
	            </div>
                        <div class="location_dec_wrap">
	                <dl class="dec_box">
	                    <dt class="tit">
	                        <p>
	                            <span class="cate"><em class="airport">공항</em></span>
	                            <span class="txt"> 김포공항국내선(4번홈)</span>
	                        </p>
	                    </dt>
	                    <dd class="dec">
                            <span class="bus_col">
                                <strong class="airport">공항</strong>
                                <em class="txt">6014</em>
                            </span>
	                        <p class=""> 이케아, 롯데아울렛광명점 하차 → 덕안터널 방향 도보 5분</p>
	                    </dd>
	                </dl>
	            </div>

	        </div>
            <div class="sgap"></div>
            <div class="con_sec">
	            <h3 class="sub_tit_h3">자동차 이용 시</h3>
	
	            <div class="location_dec_wrap">
	                <dl class="dec_box">
	                    <dt class="tit">
	                        <p>
	                        
	                            <span class="txt">서울 북부권</span>
	                        </p>
	                    </dt>
	                    <dd class="dec">
                            
	                        <p class="">성산대교 북단 → 서부간선지하도로 진입 → 금천IC (시흥대교 방면) → 금하지하차도(소하분기점 방면) → 우회전 → 기아자동차 방면 좌회전 → 소하지하차도 진입 → 덕안터널 진입 → 롯데아울렛 광명점 앞 좌회전 → 도착</p>
	                    </dd>
	                </dl>
	            </div>
                <div class="location_dec_wrap">
	                <dl class="dec_box">
	                    <dt class="tit">
	                        <p>
	                        
	                            <span class="txt">서울 남부권</span>
	                        </p>
	                    </dt>
	                    <dd class="dec">
                            
	                        <p class="">성산대교 북단 → 서부간선지하도로 진입 → 금천IC (시흥대교 방면) → 금하지하차도(소하분기점 방면) → 우회전 → 기아자동차 방면 좌회전 → 소하지하차도 진입 → 덕안터널 진입 → 롯데아울렛 광명점 앞 좌회전 → 도착</p>
	                    </dd>
	                </dl>
	            </div>
                <div class="location_dec_wrap">
	                <dl class="dec_box">
	                    <dt class="tit">
	                        <p>
	                        
	                            <span class="txt">경기 시흥, 안산권</span>
	                        </p>
	                    </dt>
	                    <dd class="dec">
                            
	                        <p class="">서해안고속도로(서울, 성산대교 방면) → 광명역IC(광명역 방면) → 광명시청 경찰서 방면 좌회전 → 서울, 시흥대교, 소하OC 방면 우회전 → 도착</p>
	                    </dd>
	                </dl>
	            </div>
                <div class="location_dec_wrap">
	                <dl class="dec_box">
	                    <dt class="tit">
	                        <p>
	                        
	                            <span class="txt">경기 안양, 의왕권</span>
	                        </p>
	                    </dt>
	                    <dd class="dec">
                            
	                        <p class="">제1순환고속도로(일산방면 진입) → 조남JC(성산대교, 목감 방면) → 광명역IC(광명역 방면) → 광명시청 경찰서 방면 좌회전 → 서울, 시흥대교, 소하OC 방면 우회전 → 도착</p>
	                    </dd>
	                </dl>
	            </div>
           
	        </div>
	</em></div><em class="">
</em></div></section><em class="">


		<!-- //contents -->
		<!--/sub_container_wrapper-->

		<!-- 통합검색 레이어팝업 -->
	<div class="layer_search_wrapper">
		<div class="layer_search">
			<form id="searchfrm" name="searchfrm" method="POST">
				<input type="hidden" id="tabCd" name="tabCd" value="">
				<input type="hidden" id="workType" name="workType">
				<input type="hidden" id="totalWord" name="totalWord" value="">
				<fieldset>
					<legend>통합검색</legend>
					<div class="top">
						<strong>SEARCH</strong>
						<a href="javascript:void(0);" class="layer_search_close" onclick="searchClose();"><i></i></a>
					</div>
					<div class="bott">
						
						<input type="text" id="subKeyWord" name="subKeyWord" class="layer_search_input" placeholder="무엇이 궁금하세요?">
						
						<input type="image" class="btn_layer_search" src="/common/front/home/images/common/btn_s.png" onclick="javascript:fn_TotalSearch('subKeyWord'); return false;">
					</div>
				</fieldset>
			<input type="hidden" id="headHspCd" name="headHspCd" value="G"></form>
		</div>
	</div>
	<!-- //통합검색 레이어팝업 -->


		
		
			
		












<!--footer-->

	
	
		
			
			
			
			
				<!--footer_wrapper-->
				<footer id="footer">
		            <div class="inner">
		                <div class="footer_bott">
		                	<h1 class="footer_logo">
		                        <a href="javascript:void(0);">
		                            <img src="/common/front/home/images/common/logo_footer-g.png" alt="중앙대학교 광명병원">
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
								<li><a href="https://www.youtube.com/channel/UC6t1q7O-yAlOa9lRpxRWY7A" target="_blank" title="새창으로 열기" class=""><img src="/common/front/home/images/icon/ico_circle_youtube.png" alt="유튜브"></a></li>
								<li><a href="https://instagram.com/ghcauhs_official?igshid=MzMyNGUyNmU2YQ==" target="_blank" title="새창으로 열기" class=""><img src="/common/front/home/images/icon/ico_circle_insta.png" alt="인스타"></a></li>
								<li><a href="https://blog.naver.com/gh_cauhs" target="_blank" title="새창으로 열기" class=""><img src="/common/front/home/images/icon/ico_circle_blog.png" alt="네이버 블로그"></a></li>

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
		



	</em></div><em class="">
<!-- // wrap -->
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async="" src="https://www.googletagmanager.com/gtag/js?id=G-VC9QBBNCWM"></script>
<script>
 window.dataLayer = window.dataLayer || [];
 function gtag(){dataLayer.push(arguments);}
 gtag('js', new Date());

 gtag('config', 'G-VC9QBBNCWM');
</script>
<!-- Global site tag (gtag.js) - Google Analytics -->
<script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script>
<script type="text/javascript">
if(!wcs_add) var wcs_add = {};
wcs_add["wa"] = "fab6e091590438";
if(window.wcs) {
wcs_do();
}
</script>

</em>
<script type="text/javascript">
function autoChase(){
	var resvIdx = $('input[name=resvIdx]').val();
	$.ajax({
		type : "POST",
		url  : "/home/reserveNew/UserLocLoad.do",
		data : {
			"resvIdx"		: resvIdx
		},
		dataType : "json",
		success  : function(data){
			document.querySelector("#userLat").value = data[0].userLat;
			document.querySelector("#userLon").value = data[0].userLon;
			qq = document.querySelector("#userLat").value; //갱신 위도
			ww = document.querySelector("#userLon").value; //갱신 경도
			console.log("성공");
			var locPosition = new kakao.maps.LatLng(qq, ww), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
	         message = '<div style="padding:5px;">'+pacontentNm+' 환자</div>'; // 인포윈도우에 표시될 내용입니다
	         
	           // 마커와 인포윈도우를 표시합니다
	           displayMarker(locPosition, message);
			//술먹어서 생각이안남 함수발동을 위한 트리거
		},
		error:function(request,status,error){
			console.log("실패");
			alert("처리 중 오류가 발생되었습니다.\nerror:"+error+"request:"+request+"status:"+status);
		}
	});
	
}
setInterval('autoChase()', 3000); // 3초 마다 함수실행
</script>

</body></html>