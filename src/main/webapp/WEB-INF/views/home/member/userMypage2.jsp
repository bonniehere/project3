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
	<title>CONSTANT 메디컬 | 의사 정보</title>
	<meta name="description" content="진료문의 1811-7800 / 환자중심의 디지털 혁신 병원, 수도권 서남부 거점 대학병원">
	<meta name="keywords" content="중앙대학교의료원, 중앙대학교병원, 중앙대학교광명병원, 진료과, 진료안내, 진료예약, 병원소개, 건강정보, 의료진, 고객서비스, 처방정보, 건강증진센터, 증명서발급">
	<meta name="title" content="중앙대학교광명병원">
	<meta property="og:site_name" content="중앙대학교광명병원">
	<meta property="og:title" content="중앙대학교광명병원">
	<meta property="og:description" content="진료문의 1811-7800 / 환자중심의 디지털 혁신 병원, 수도권 서남부 거점 대학병원">
	<meta http-equiv="Pragma" content="no-cache">
	<meta http-equiv="Expires" content="-1">
	<link rel="shortcut icon" href="../../../../resources/img/favicon.ico" type="image/x-icon">
	<link rel="icon" href="../../../../resources/img/favicon.ico" type="image/x-icon">
	<link type="text/css" rel="stylesheet" href="../../../../resources/css/default.css?ver=20230220">
   <link type="text/css" rel="stylesheet" href="../../../../resources/css/responsive.css?ver=20230905">
   <link type="text/css" rel="stylesheet" href="../../../../resources/css/swiper-bundle.min.css?ver=1">
   <link type="text/css" rel="stylesheet" href="../../../../resources/css/reservation.css?ver=1">
	<link type="text/css" rel="stylesheet" href="../../../../resources/css/floor.css?ver=1">
	<link type="text/css" rel="stylesheet" href="../../../../resources/css/intro.css?ver=1">
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
		if( window.location.href.indexOf('www.cauhs.or.kr') > -1){
			location.href='https://ch.cauhs.or.kr/group/';
		}
		//네이버 발전후원회 검색결과용 강제 링크
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
			$("form").append("<input type='hidden' id='userId' name='userId' value='G' />");
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
	
	<script type="text/javascript" src="../../../../resources/js/CommonUtil.c3r-custom.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			
			$("a.title_prev").hide();
			$("a.title_next").hide();
			$(".resvPopClose").on("click",function(){
				$(".resvPop").hide();
			})
			
			
		});
		function fn_DetailComplain(boardNo,boardTp,boardSeqNo){
			$("#boardNo").val(boardNo);
			$("#boardTp").val(boardTp);
			$("#boardSeqNo").val(boardSeqNo);
			$("#frm").attr("action","/home/member/userMypageComplainView.do").submit();
		}
		
		function fn_CancelResv(obj){
			var oTr = $(obj).parent().parent();
			var prcpyn = oTr.find("input[name=i_prcpyn]").val();
			if( prcpyn == "Y" ){
				alert("해당 예약은 홈페이지에서 취소가 불가능 하오니,\n취소하기위해서는 콜센터(1811-7800)로 전화 하시거나\n진료과로 방문하셔서 취소 부탁드립니다.");
				return false;
			}
			if( confirm("진료예약을 취소하면 다시 복구하실 수 없습니다.\n진료예약을 취소하시겠습니까?\n※검사예약 취소의 경우에는 유선으로(대표전화 1811-7800) 취소 부탁드립니다.") ){
				G_Util.newFormSubmit({
					"action" : "/home/reserveNew/resvCancelProc.do",
					"param"  : {
						"resvIdx"      : oTr.find("input[name=i_resvIdx]").val(),
						"bforddd"      : oTr.find("input[name=i_bforddd]").val(),
						"bfcretno"     : oTr.find("input[name=i_bfcretno]").val(),
						"rsrvflag"     : oTr.find("input[name=i_rsrvflag]").val(),
						"pid"          : oTr.find("input[name=i_ptNo]").val(),
						"resvUserNm"   : oTr.find("input[name=i_resvUserNm]").val(),
						"resvBrd"      : oTr.find("input[name=i_resvBrd]").val(),
						"resvMobileNo" : oTr.find("input[name=i_resvMobileNo]").val(),
						"deptKorNm"    : oTr.find("input[name=i_deptKorNm]").val(),
						"profKorNm"    : oTr.find("input[name=i_profKorNm]").val(),
						"resvDd"       : oTr.find("input[name=i_resvDd]").val(),
						"resvHh"       : oTr.find("input[name=i_resvHh]").val(),
						"togoplace"    : oTr.find("input[name=i_togoplace]").val(),
						"prcpyn"       : oTr.find("input[name=i_prcpyn]").val()
					}
				});
			}
		}
		function fn_ResvPop(obj){
			var oTd = $(obj).parent();
			G_Util.postPopup("resvReport","/c3r/report/ubiPop.do","1280","1024",{
				"ptNo"      : oTd.find("input[name=i_ptNo]").val(),
				"userNm"    : oTd.find("input[name=i_resvUserNm]").val(),
				"userBirth" : oTd.find("input[name=i_resvBrd]").val(),
				"userHpNo"  : oTd.find("input[name=i_resvMobileNo]").val(),
				"deptNm"    : oTd.find("input[name=i_deptKorNm]").val(),
				"profNm"    : oTd.find("input[name=i_profKorNm]").val(),
				"resvDd"    : oTd.find("input[name=i_resvDd]").val(),
				"resvHh"    : oTd.find("input[name=i_resvHh]").val(),
				"togoplace" : oTd.find("input[name=i_togoplace]").val(),
				"fileNm"    : "RESV_1"
			});
		}
		function fn_PrintDiv(){
			$(".popup_content").printThis();
		}
		
		
		//환자 위치 보기
		function fn_maplist(obj){
			var oTd = $(obj).parent();
			G_Util.newFormSubmit({
				"action" : "/home/reserveNew/map3.do",
				"param"  : {
					"resvIdx"      : oTd.find("input[name=resvIdx]").val()
					
				}
			
			})
		}
		
	</script>

</head>
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
                            <img src="../../../../resources/img/logo-g.png" alt="중앙대학교 광명병원">
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
                        <a href="/home.do" style="background: #fff url(/resources/img/ico_home.png)no-repeat center center;"><span class="skip">홈으로 가기</span></a>
                    </li>
                    <li>
                    	<a href="javascript:void(0);">회원서비스<span class="location_icon"></span></a>
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
                    	<a href="javascript:void(0);">회원정보<span class="location_icon"></span></a>
                    	<ul class="location_down">
                    	<li><a href="javascript:fn_goMenu('/home/member/userMypageCheck.do');">의료진 정보</a></li>
<li><a href="javascript:fn_goMenu('/home/member/familyRegist.do');">대리예약 대상자등록</a></li>
<li><a href="javascript:fn_goMenu('/home/conts/109014000000000.do');">환자권리장전</a></li>
<li><a href="javascript:fn_goMenu('/home/member/PrivacyInfo.do');">개인정보처리방침</a></li>
<li><a href="javascript:fn_goMenu('/home/member/TermsInfo.do');">이용약관</a></li>
<li><a href="javascript:fn_goMenu('/home/search/totalList.do');">통합검색</a></li>

                    	</ul>
                    </li>
				</ul>
				
			</div>
		</div>
		<!--/location_section-->
		<!--sub_container_wrapper-->
		<section class="title fix">
            <div class="inner fix">
            	<a href="javascript:fn_goMenu('/home/member/findPw.do');" class="title_prev" style="display: none;">Previous</a>
<h2>의료진 정보</h2>
<a href="javascript:fn_goMenu('/home/member/familyRegist.do');" class="title_next" style="display: none;">Next</a>

            </div>
        </section>
        

			<div class="tab_sty01 tabList">
				<div class="inner">
					<ul class="fix">
					<li class="on"><a href="javascript:fn_goMenu('/home/member/userMypageCheck.do');">마이페이지</a></li>
<li class=""><a href="javascript:fn_goMenu('/home/member/userTimeline.do');">나의타임라인</a></li>
<li class=""><a href="javascript:fn_goMenu('/home/member/userInfoCheck.do');">회원정보 수정</a></li>
<li class=""><a href="javascript:fn_goMenu('/home/member/userChangePw.do');">비밀번호 수정</a></li>
<li class=""><a href="javascript:fn_goMenu('/home/member/userExitCheck.do');">회원탈퇴</a></li>
<li class=""><a href="javascript:fn_goMenu('/home/member/complainList.do');">고객의소리</a></li>

					</ul>
				</div>
			</div>

       
       
		<!-- /wrap -->
		<!-- contents -->
		<!-- 
			"userId" : $("#userId").val().trim(),
					"userNm" : $("#userNm").val(),
					"telNo" : $("#telNo").val(),
					"birthDt" : $("#birthDt").val()
		 -->
	<form id="frm" name="frm" method="POST">
		<input type="hidden" id="boardNo" name="boardNo">
		<input type="hidden" id="boardTp" name="boardTp">
		<input type="hidden" id="boardSeqNo" name="boardSeqNo">
		<input type="hidden" id="resvIdx" name="resvIdx">
		<input type="hidden" id="resvCheck" name="resvCheck">
		<input type="hidden" id="userId" name="userId">
		<input type="hidden" id="userNm" name="userNm">
		<input type="hidden" id="telNo" name="telNo">
		<input type="hidden" id="birthDt" name="birthDt">
		<section id="contents" class="contents_wrap">
			<div class="inner">
				<div class="mypage_wrap">
					<div class="con_sec">
						<div class="notice_gray_box02">
						<p class="notice_tit">회원님의 이름, 로그인ID, 생년월일 안내입니다.</p><br>
							<table class="board_list_table">
								<colgroup>
									<col style="width:33%;">
									<col style="width:33%;">
									<col style="width:*;">
								</colgroup>
								<thead>
									<tr>
										<th>이름</th>
										<th>의료진ID</th>
										<th>생년월일</th>
									</tr>
								</thead>
								<tbody>
									<tr style="background-color: white;">
										
											
												<td><%=member.getUserNm() %></td>
											
											
										
										<td>
											
												
												<%=member.getUserId() %>
											
										</td>
										<td>
											
											<%=member.getBirthDt() %>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
						
						<br><br><br>
						<h3 class="sub_tit">의료진 담당 환자 리스트</h3>
						<div class="table_header_wrap">
							<p class="lft_con con_txt">
								최근 예약 일로 부터 3년이내의 예약 내역만 확인 가능합니다.
							</p>
						</div>
						<div class="table_wrap m_table">
							<table class="board_list_table">
								<caption></caption>
								<colgroup>
									<col style="width:10%;">
									
									<col style="width:15%;">
									<col style="width:20%;">
									<col style="width:10%;">
									<col style="width:*;">
									<col style="width:15%;">
									<col style="width:15%;">
								</colgroup>
								<thead>
									<tr>
										<th>번호</th>
										<!-- <th>구분</th> -->
										<th>이름(환자번호)</th>
										<th>진료과</th>
										<th>담당의</th>
										<th>예약일시</th>
										<th>취소</th>
										<th>접수증</th>
										<!-- 예약 지도 보기 내가 추가함 -->
										<th>환자 위치 확인</th>
									</tr>
								</thead>
								<tbody>
											
											
										
											<c:forEach items="${list}" var="list" varStatus="status">
												<tr>
													<td>${status.count}</td>
													<td>${list.userNm}(${list.userId})</td>
													<td>${list.selDeptNm}</td>
													<td>${list.selProfNm}</td>
													<td>${list.resvDd}</td>
													<td>
														<a href="javascript:void(0);" onclick="javascript:fn_CancelResv(this);" class="chip2_sty0">취소</a>
													</td>
													<td>
														<input type="hidden" name="i_resvIdx" value="모델로 값 받아서 입력">
														<input type="hidden" name="i_bforddd" value="20240116">
														<input type="hidden" name="i_bfcretno" value="2">
														<input type="hidden" name="i_rsrvflag" value="9">
														<input type="hidden" name="i_ptNo" value="00101026">
														<input type="hidden" name="i_resvUserNm" value="정순욱">
														<input type="hidden" name="i_resvBrd" value="1993-03-24">
														<input type="hidden" name="i_resvMobileNo" value="010-8561-9220">
														<input type="hidden" name="i_deptKorNm" value="치과">
														<input type="hidden" name="i_profKorNm" value="박성원">
														<input type="hidden" name="i_resvDd" value="2024-01-16">
														<input type="hidden" name="i_resvHh" value="10:30">
														<input type="hidden" name="i_togoplace" value="2층 치과">
														<input type="hidden" name="i_prcpyn" value="N">
														<a href="javascript:void(0);" class="chip2_sty2" onclick="javascript:fn_ResvPop(this);">출력</a>
													</td>
													
													<td>
														<input type="hidden" name="resvIdx" value="${list.resvIdx}">

														<a href="javascript:void(0);" class="chip2_sty2" onclick="javascript:fn_maplist(this);">지도</a>
														<!-- 예약 지도 보기 내가 추가함 -->
														<!-- <a href="javascript:void(0);" class="chip2_sty2" onclick="javascript:fn_ResMap(${list.selDeptNm},${list.userNm});">지도</a> -->
													</td>
												</tr>
											</c:forEach>
											
											
										

											<!-- 
											<tr>
												<td>1</td>
												
												<td>  (${detail.userId })</td>
												<td>${detail.userDeptNm }</td>
												<td>${detail.userProfNm }</td>
												<td>
													
													${detail.resvDd } ${detail.resvHh }
												</td>
												<td>
													
													
													
														<a href="javascript:void(0);" onclick="javascript:fn_CancelResv(this);" class="chip2_sty0">취소</a>
													
												</td>
												<td>
													
													<input type="hidden" name="i_resvIdx" value="모델로 값 받아서 입력">
													<input type="hidden" name="i_bforddd" value="20240116">
													<input type="hidden" name="i_bfcretno" value="2">
													<input type="hidden" name="i_rsrvflag" value="9">
													<input type="hidden" name="i_ptNo" value="00101026">
													<input type="hidden" name="i_resvUserNm" value="정순욱">
													<input type="hidden" name="i_resvBrd" value="1993-03-24">
													<input type="hidden" name="i_resvMobileNo" value="010-8561-9220">
													<input type="hidden" name="i_deptKorNm" value="치과">
													<input type="hidden" name="i_profKorNm" value="박성원">
													<input type="hidden" name="i_resvDd" value="2024-01-16">
													<input type="hidden" name="i_resvHh" value="10:30">
													<input type="hidden" name="i_togoplace" value="2층 치과">
													<input type="hidden" name="i_prcpyn" value="N">
													<a href="javascript:void(0);" class="chip2_sty2" onclick="javascript:fn_ResvPop(this);">출력</a>
												</td>
											</tr>
											 -->

								</tbody>
							</table>
						</div>
					</div>
					<div class="sgap"></div>
					<div class="con_sec">
						<h3 class="sub_tit">홈페이지 <span style="color: blue;">본인</span> 진료예약</h3>
						<div class="table_header_wrap">
							<p class="lft_con con_txt txt_point">
								※ 전산시스템 변경으로 당분간 홈페이지 내에서 예약 변경이 불가합니다.<em class="m_block"></em>
								<span style="display:inline-block; padding:0 0 0 20px;">예약을 변경하실 경우, 홈페이지에서 기존 예약을 취소 후 재 예약하시거나
								중앙대학교광명병원 콜센터(1811-7800)로 전화하여 변경하시기 바랍니다.</span>
							</p>
						</div>
						<div class="table_wrap m_table">
							<table class="board_list_table">
								<caption></caption>
								<colgroup>
									<col style="width:8%;">
									<col style="width:15%;">
									<col style="width:15%;">
									<col style="width:8%;">
									<col style="width:*;">
									<col style="width:10%;">
									<col style="width:10%;">
								</colgroup>
								<thead>
									<tr>
										<th>번호</th>
										<th>이름</th>
										<th>진료과</th>
										<th>진료의사</th>
										<th>예약일시</th>
										<th>취소</th>
										<th>접수증</th>
									</tr>
								</thead>
								<tbody>
									
									
										
										
									
										
										
									
									<tr><td colspan="7">접수된 홈페이지 본인 진료예약이 없습니다.</td></tr>
								</tbody>
							</table>
						</div>
					</div>
					<div class="sgap"></div>
					<div class="con_sec">
						<h3 class="sub_tit">홈페이지 <span style="color: blue;">대리인</span> 진료예약</h3>
						<div class="table_header_wrap">
							<p class="lft_con con_txt txt_point">
								※ 전산시스템 변경으로 당분간 홈페이지 내에서 예약 변경이 불가합니다.<em class="m_block"></em>
								<span style="display:inline-block; padding:0 0 0 20px;">예약을 변경하실 경우, 홈페이지에서 기존 예약을 취소 후 재 예약하시거나
								중앙대학교광명병원 콜센터(1811-7800)로 전화하여 변경하시기 바랍니다.</span>
							</p>
						</div>
						<div class="table_wrap m_table">
							<table class="board_list_table">
								<caption></caption>
								<colgroup>
									<col style="width:8%;">
									<col style="width:15%;">
									<col style="width:8%;">
									<col style="width:15%;">
									<col style="width:8%;">
									<col style="width:*;">
									<col style="width:10%;">
									<col style="width:10%;">
								</colgroup>
								<thead>
									<tr>
										<th>번호</th>
										<th>이름(환자번호)</th>
										<th>예약자</th>
										<th>진료과</th>
										<th>진료의사</th>
										<th>예약일시</th>
										<th>취소</th>
										<th>접수증</th>
									</tr>
								</thead>
								<tbody>
									
									
										
									
									<tr><td colspan="8">접수된 홈페이지 대리인 진료예약이 없습니다.</td></tr>
								</tbody>
							</table>
						</div>
					</div>
					
					
				</div>
			</div>
		</section>
	<input type="hidden" id="headHspCd" name="headHspCd" value="G"></form>

	<div class="popup_wrap resvPop" style="display:none;">
            <div class="popup_dim"></div>
            <div class="popup_inner">
                <div class="popup_header">
                        <h3 class="tit">예약확인증 출력</h3>
                    <a href="javascript:void(0);" class="btn_close resvPopClose"><span class="skip">닫기</span></a>
                </div>
                <div class="popup_content">
                    <!-- <p class="bul_point1">선택 진료를담당하는의료진일 경우, 의료진 이름 앞에 ○로 표시됩니다.  </p> -->
                    <div class="content_table_wrap mt20">
                        <table class="content_table">
                            <colgroup>
                                <col style="width:20%">
                                <col style="width:80%">
                            </colgroup>
                            <tbody>
                                <tr>
                                    <th scope="row">환자번호</th>
                                    <td id="ptNo"></td>
                                </tr>
                                <tr>
                                    <th scope="row">환자성명</th>
                                    <td class="resvUserNm"></td>
                                </tr>
                                <tr>
                                    <th scope="row">생년월일</th>
                                    <td id="resvBrd"></td>
                                </tr>
                                <tr>
                                    <th scope="row">핸드폰번호</th>
                                    <td id="resvMobileNo"></td>
                                </tr>
                                <tr>
                                    <th scope="row">진료과</th>
                                    <td id="deptKorNm"></td>
                                </tr>
                                <tr>
                                    <th scope="row">선택의사</th>
                                    <td id="profKorNm"></td>
                                </tr>
                                <tr>
                                    <th scope="row">예약일자</th>
                                    <td id="resvDd"></td>
                                </tr>
                                <tr>
                                    <th scope="row">예약시간</th>
                                    <td id="resvHh"></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="ssgap"></div>
                    <p class="print_txt">「의료법」 제 46조(환자의 진료의사의선택 등) 1항 및 「선택진료에 관한 규칙」 제 2조의 규정에 따라 위와 같이선택진료를 신청합니다. </p>
                    <p class="print_txt mt20 center">2022년 2월 3일<br>신청인 <strong class="resvUserNm"></strong> (서명 또는인)<br>중앙대학교 광명병원장 귀하</p>
                    <div class="ssgap"></div>
                    <div class="notice_gray_box">
                        <p class="notice_tit">참고사항</p>
                        <ul class="">
                            <!-- <li class="bul1_sty1">예약하신진료과가 첫 방문일 경우 ‘진료의뢰서’ 또는 ‘건강검진결과서’ 를 반드시 지참하셔야 보험적용을 받으실 수 있습니다.</li> -->
                            <li class="bul1_sty1">출력하신 예약확인증을지참하시고 수납을 하신 후 진료를 보시기 바랍니다.<br>
                                   1) 예약하신 진료과로처음 방문하시는 경우, 선택진료의사와 관련하여 변동사항이 있는 경우에는 수납창구를 이용하시기 바랍니다.<br>
                                   2) 이전에 예약진료과를방문하셨던분들은무인수납기를 이용하시면 수납시간을 단축할 수 있습니다.<br>
                                   단, 무인수납기를이용하시는경우 6개월 1회씩 수납창구를 방문하여 인적사항 및 보험사항 등 변동사항을 확인해야합니다.<br>
                                   확인 후 6개월 경과되면 무인수납기 사용이 불가하므로 수납창구를 이용하시기바랍니다.
                            </li>
                            <li class="bul1_sty1">환자 또는 그 보호자가선택진료를변경 또는 해지할 수 있습니다.</li>
                            <li class="bul1_sty1">추가비용을 징수할수 있는 선택 진료의 항목과 추가비용은 「선택진료에 관한 규칙」 제 6조의 규정에 의하여 선택 진료 의료기관의 장이 정하여 게시 또는 비치한 것에 의합니다.</li>
                        </ul>
                    </div>
                </div>
                <div class="btn_area">
                    <a href="javascript:fn_PrintDiv();" class="btn_ty01_sty01"><span>인쇄하기</span></a>
                </div>
            </div>
        </div>

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
						
						<input type="image" class="btn_layer_search" src="../../../../resources/img/btn_s.png" onclick="javascript:fn_TotalSearch('subKeyWord'); return false;">
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
		                            <img src="../../../../resources/img/logo_footer-g.png" alt="중앙대학교 광명병원">
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
								<li><a href="https://www.youtube.com/channel/UC6t1q7O-yAlOa9lRpxRWY7A" target="_blank" title="새창으로 열기" class=""><img src="../../../../resources/img/ico_circle_youtube.png" alt="유튜브"></a></li>
								<li><a href="https://instagram.com/ghcauhs_official?igshid=MzMyNGUyNmU2YQ==" target="_blank" title="새창으로 열기" class=""><img src="../../../../resources/img/ico_circle_insta.png" alt="인스타"></a></li>
								<li><a href="https://blog.naver.com/gh_cauhs" target="_blank" title="새창으로 열기" class=""><img src="../../../../resources/img/ico_circle_blog.png" alt="네이버 블로그"></a></li>

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

</body></html>