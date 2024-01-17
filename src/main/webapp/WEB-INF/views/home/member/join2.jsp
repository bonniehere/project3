<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" xmlns="http://www.w3.org/1999/xhtml"><head>
	<meta charset="utf-8">
	<meta http-equiv="Content-Script-Type" content="text/javascript">
	<meta http-equiv="Content-Style-Type" content="text/css">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta http-equiv="Expires" content="-1">
            <meta http-equiv="Pragma" content="no-cache">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimun-scale=1.0, user-scalable=no, target-densitydpi=medium-dpi, viewport-fit=cover">
	<title>중앙대학교광명병원 | 회원가입</title>
	<meta name="description" content="진료문의 1811-7800 / 환자중심의 디지털 혁신 병원, 수도권 서남부 거점 대학병원">
	<meta name="keywords" content="중앙대학교의료원, 중앙대학교병원, 중앙대학교광명병원, 진료과, 진료안내, 진료예약, 병원소개, 건강정보, 의료진, 고객서비스, 처방정보, 건강증진센터, 증명서발급">
	<meta name="title" content="중앙대학교광명병원">
	<meta property="og:site_name" content="중앙대학교광명병원">
	<meta property="og:title" content="중앙대학교광명병원">
	<meta property="og:description" content="진료문의 1811-7800 / 환자중심의 디지털 혁신 병원, 수도권 서남부 거점 대학병원">
	<meta http-equiv="Pragma" content="no-cache">
	<meta http-equiv="Expires" content="-1">
	<!-- 
	<link rel="shortcut icon" href="/common/front/home/favicon.ico" type="image/x-icon">
	<link rel="icon" href="/common/front/home/favicon.ico" type="image/x-icon">
	<link type="text/css" rel="stylesheet" href="/common/front/home/css/default.css?ver=20230220">
   <link type="text/css" rel="stylesheet" href="/common/front/home/css/responsive.css?ver=20230905">
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
	 -->
	 
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
	    	/*
	    	// 언체크 처리
	    	$("input[name*=agreeCh]").click(function() {
	    		if( $("#accessPerYnAll").is(":checked") ){
	    			$("#accessPerYnAll").prop("checked", false);
	    		}
	    	});
	    	*/
		});
        function fn_Next(){
            if( !$("#agreeCh1").is(":checked") ){
                alert("중앙대학교광명병원 회원 이용약관'에 동의하셔야 가입하실 수 있습니다.");
                $("#agreeCh1").focus();
                return false;
            }
			if( $("#agreeCh1_2").is(":checked") ){
                alert("중앙대학교광명병원 회원 이용약관'에 동의하셔야 가입하실 수 있습니다.");
                $("#agreeCh1").focus();
                return false;
            }
            if( !$("#agreeCh2").is(":checked") ){
                alert("개인정보 수집 및 이용 목적'에 동의하셔야 가입하실 수 있습니다.");
                $("#agreeCh2").focus();
                return false;
            }
			if( $("#agreeCh2_2").is(":checked") ){
                alert("개인정보 수집 및 이용 목적'에 동의하셔야 가입하실 수 있습니다.");
                $("#agreeCh2").focus();
                return false;
            }
            if( !$("#agreeCh3").is(":checked") ){
                alert("개인정보 수집 및 이용 항목'에 동의하셔야 가입하실 수 있습니다.");
                $("#agreeCh3").focus();
                return false;
            }
			if( $("#agreeCh3_2").is(":checked") ){
                alert("개인정보 수집 및 이용 항목'에 동의하셔야 가입하실 수 있습니다.");
                $("#agreeCh3").focus();
                return false;
            }
            if( !$("#agreeCh4").is(":checked") ){
                alert("개인정보 이용 및 보유기간'에 동의하셔야 가입하실 수 있습니다.");
                $("#agreeCh4").focus();
                return false;
            }
			if( $("#agreeCh4_2").is(":checked") ){
                alert("개인정보 이용 및 보유기간'에 동의하셔야 가입하실 수 있습니다.");
                $("#agreeCh4").focus();
                return false;
            }
            if( !$("#agreeCh5").is(":checked") ){
                alert("동의거부 권리 및 불이익'에 동의하셔야 가입하실 수 있습니다.");
                $("#agreeCh5").focus();
                return false;
            }
			if( $("#agreeCh5_2").is(":checked") ){
                alert("동의거부 권리 및 불이익'에 동의하셔야 가입하실 수 있습니다.");
                $("#agreeCh5").focus();
                return false;
            }
            $("#accessTermsYn").val("Y");
            $("#accessPerYn").val("Y");
			$("#frm").attr("action","/home/member/join3.do").submit();
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
							
		                		
		                		
		                			<a href="/home/member/login.do"><span>로그인</span></a>
									<a href="/home/member/join1.do"><span>회원가입</span></a>
		                		
		                	
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
                    	<a href="javascript:void(0);">회원가입<span class="location_icon"></span></a>
                    	<ul class="location_down">
                    	<li><a href="javascript:fn_goMenu('/home/member/login.do');">로그인</a></li>
<li><a href="javascript:fn_goMenu('/home/member/join1.do');">회원가입</a></li>
<li><a href="javascript:fn_goMenu('/home/member/findId.do');">아이디 찾기</a></li>
<li><a href="javascript:fn_goMenu('/home/member/findPw.do');">비밀번호 찾기</a></li>
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
            	<a href="javascript:fn_goMenu('/home/member/login.do');" class="title_prev">Previous</a>
<h2>회원가입</h2>
<a href="javascript:fn_goMenu('/home/member/findId.do');" class="title_next">Next</a>

            </div>
        </section>
        
       
		<!-- /wrap -->
		<!-- contents -->
		
	<form id="frm" name="frm" method="POST">
		<input type="hidden" id="loginType" name="loginType" value="S">
		<input type="hidden" id="userTp" name="userTp" value="Y">
		<input type="hidden" id="accessTermsYn" name="accessTermsYn">
		<input type="hidden" id="accessPerYn" name="accessPerYn">
		<section id="contents" class="contents_wrap">
			<div class="inner">
				<div class="agree_wrap">
					<div class="step_signup_wrap">
						<ol class="sty5 fix">
							<li class="step1"><span class="circle">STEP1</span><span class="tit">회원선택</span></li>
							<li class="step2"><span class="circle">STEP2</span><span class="tit">약관동의</span></li>
							<li class="step3"><span class="circle">STEP3</span><span class="tit">본인인증</span></li>
							<li class="step4"><span class="circle">STEP4</span><span class="tit">정보입력</span></li>
							<li class="step5"><span class="circle">STEP5</span><span class="tit">가입완료</span></li>
						</ol>
					</div>
					<div class="con_sec">
						<h3 class="sub_tit">약관동의</h3>
						<div class="notice_gray_box">
							<p>중앙대병원 회원으로 가입을 원하실 경우, 아래의 <span class="m_color2">'서비스 약관 및 개인정보 수집·이용'</span>에 대한 안내를 반드시 읽고 동의해 주시기 바랍니다.</p>
						</div>
					</div>
					<div class="ssgap"></div>
					<div class="con_sec">
						<h3 class="sub_tit">중앙대학교광명병원 회원 이용약관</h3>
						<!-- <div class="agree_check">
							<label for="agreeCh1" class="ch1">
								<input type="checkbox" id="agreeCh1" name="agreeCh1" class="">
								<span>중앙대학교광명병원 회원 이용약관 <em>(필수사항)</em></span>
							</label>
						</div> -->
						<div class="agree_txt" tabindex="0">
							<div class="con_txt">
								제1장 총칙<br>
								제1조 (목적)<br>
								본 약관은 중앙대학교광명병원(이하 "병원"이라 합니다)에서 운영하는 인터넷 홈페이지에서 제공하는 인터넷 관련 서비스(이하 "서비스"라 합니다)의 이용에 관한 사항을 규정함
								을 목적으로 합니다.<br><br>
								제2조 (정의)<br>
								① 이용자(회원) : 인터넷 홈페이지에 로그인하여 본 약관에 따라 병원이 제공하는 서비스를 받는 자를 말합니다.<br>
								② 운영자 : 서비스의 전반적인 관리와 원활한 운영을 위하여 병원에서 선정한 사람<br>
								③ 연결사이트 : 홈페이지와 하이퍼링크 방식(하이퍼링크의 대상에는 문자, 정지 및 동화상 등이 포함됨) 등으로 연결된 웹 사이트를 말합니다.<br>
								④ 개인정보 : 당해 정보에 포함되어 있는 성명, 주민등록번호 등의 사항에 의하여 특정 개인을 식별할 수 있는 정보(당해 정보만으로는 특정 개인을 인식할 수 없더라도 다른 정보와 용이하게 결합하여 식별할 수 있는 것을 포함한다)를 말합니다.<br>
								⑤ 해지 : 이용자가 서비스 개통 후 이용계약을 해약하는 것 <br><br>
								제3조 (약관의 게시 및 변경)<br>
								① 병원은 본 약관의 내용과 상호, 병원 소재지, 전자우편 주소 등을 이용자가 알 수 있도록 홈페이지에 게시합니다.<br>
								② 병원은 불가피한 사정이 있는 경우 관계법령을 위배하지 않는 범위에서 본 약관을 개정할 수 있습니다.<br>
								③ 병원은 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 서비스화면에 그 적용일자 7일 이전부터 적용일자 전일까지 공지합니다.<br>
								④ 이 약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는 관계법령 또는 상관례에 따릅니다.<br><br>
								제4조 (서비스의 내용 및 변경)<br>
								① 병원은 다음의 서비스를 제공합니다.<br>
								 1. 병원의 의료진 및 진료일정 안내 <br>
								 2. 병원 또는 연결사이트를 통해 제공되는 각종 예약 서비스 <br>
								 3. 병원 또는 연결사이트를 통해서 제공되는 건강상담 서비스<br>
								 4. 병원에서 제공하는 건강정보<br>
								 5. 기타 병원이 정하는 서비스 <br>
								② 병원은 불가피한 사정이 있는 경우 제공하는 서비스의 내용을 변경할 수 있으며, 이 경우 변경된 서비스의 내용 및 제공일자를 명시하여 그 제공일자 이전 7일부터 공지합니다.<br>
								③ 병원은 서비스 내용의 변경으로 인하여 이용자가 입은 손해에 대하여 배상하지 아니합니다. 단, 병원의 고의 또는 중과실이 있는 경우에는 그러하지 아니합니다.<br><br>
								제5조 (서비스의 중단)<br>
								① 병원은 시스템 등 장치의 보수점검·교체 및 고장, 통신의 두절, 기타 불가항력적 사유가 발생한 경우에는 서비스의 제공을 일시적으로 중단할 수 있습니다.<br>
								② 병원은 제1항의 사유로 서비스 제공이 일시적으로 중단됨으로 인하여 이용자 또는 제3자가 입은 손해에 대하여는 배상하지 아니합니다. 단, 병원의 고의 또는 중과실이 있는 경우에는 그러하지 아니합니다.<br>
								제2장 회원의 가입 및 탈퇴 <br><br>
								제6조 (회원가입)<br>
								① 이용자는 병원의 정한 양식에 따라 회원정보를 기입한 후 본 약관에 동의한다는 의사표시를 함으로써 회원가입을 신청합니다.<br>
								② 병원은 전 항과 같이 회원으로 가입할 것을 신청한 이용자 중 이하 각호에 해당하지 않는 한 회원으로 등록합니다.<br>
								 1. 가입신청자가 본 약관 제7조 제2항에 의거하여 이전에 회원 자격을 상실한 적이 있는 경우<br>
								 2. 등록내용에 허위, 기재누락, 오기가 있는 경우 <br>
								 3. 기타 회원으로 등록하는 것이 병원의 기술상 또는 업무 수행상 현저히 지장이 있다고 판단하는 경우 <br>
								 4. 입력한 비밀번호가  8~12자 사이 영대문자, 영소문자, 숫자, 특수문자 중 3종류 이상의 조합이 아닌 경우<br>
								③ 회원가입계약의 성립시기는 병원이 승낙한 시점으로 합니다.<br>
								④ 회원은 등록사항에 변경이 있는 경우, 즉시 전자우편 또는 기타 방법으로 병원에 그 변경사항을 알려야 합니다.<br><br>
								제7조 (회원 탈퇴 및 자격의 상실 등)<br>
								① 회원은 병원에 언제든지 탈퇴를 요청할 수 있으며 병원은 즉시 회원탈퇴를 처리합니다. 단, 탈퇴의 요청은 전자메일 또는 서면으로 하여야 하며, 요청하는 자의 이름, 전화번호, 해지사유 등을 기재하여야 합니다.<br>
								② 회원이 다음 각호의 사유에 해당하는 경우, 병원은 회원자격을 상실시킬 수 있습니다.<br>
								 1. 등록 신청 시에 허위 내용을 등록한 경우 <br>
								 2. 다른 사람의 서비스 이용을 방해하거나 그 정보를 도용하는 등 질서를 위협하는 경우 <br>
								 3. 병원 내에서 검증되지 않은 허위정보 및 기타 허락되지 않은 물품의 판매 행위를 하는 경우 <br>
								 4. 병원 내에서 허락되지 않은 진료행위 또는 진료행위를 위한 선전의 장소로 이용하는 경우 <br>
								 5. 병원 내에 제공되는 정보를 변경하는 등 홈페이지 운영을 방해한 경우 <br>
								 6. 병원을 이용하여 법령과 본 약관이 금지하거나 공서양속에 반하는 행위를 하는 경우 <br>
								 7. 본 약관을 위반한 경우 <br>
								 8. 기타 회원으로서의 자격을 지속시키는 것이 부적절하다고 판단되는 경우 <br><br>
								제8조 (회원에 대한 통지)<br>
								① 병원은 회원에 대한 통지를 하는 경우, 회원이 병원에 제공한 전자우편 주소 또는 전화번호로 할 수 있습니다.<br>
								② 병원은 불특정다수 회원에 대한 통지의 경우 게시판에 게시함으로써 개별통지에 갈음할 수 있습니다. <br><br>
								제9조 (진료예약의 신청 및 성립)<br>
								① 이용자는 홈페이지 상에서 이하의 방법에 의하여 진료예약을 신청합니다.<br>
								 1. 주민등록번호(실명인증), 비밀번호, 성명, 주소, 전화번호 입력<br>
								 2. 의료진, 진료과, 예약일시 선택<br>
								 3. 이 약관에 동의한다는 표시<br>
								② 병원은 제1항의 예약신청에 대하여 다음 각호의 사유에 해당하지 않는 한 승낙합니다.<br>
								 1. 신청 내용에 허위, 기재누락, 오기가 있는 경우 <br>
								 2. 기타 예약신청에 승낙하는 것이 기술상 현저히 지장이 있다고 판단하는 경우 <br>
								③ 병원의 승낙 통지가 이용자의 전자우편으로 도달된 때에 예약이 성립된 것으로 봅니다.<br><br>
								제3장 개인정보의 보호 <br><br>
								제10조 (개인정보의 수집)<br>
								1 .병원은 이용자의 정보수집 시 필요한 최소한의 정보를 수집합니다. 다음 사항을 필수 사항으로 하며 그 외 사항은 선택사항으로 합니다.<br>
								 - 회원구분<br>
								 - 성명<br>
								 - 생년월일<br>
								 - 성별<br>
								 - 아이디<br>
								 - 비밀번호<br>
								 - 휴대폰번호<br>
								 - 전화번호<br>
								 - 뉴스레터 수신여부<br>
								 - (만 14세 미만인 경우) 법정 대리인 정보 <br>
								2. 이용자의 개인정보를 수집하는 때에는 이하 각호의 경우를 제외하고는 당해 이용자의 동의를 받습니다.<br>
								 - 법률에 특별한 규정이 있는 경우<br>
								 - 서비스이용계약의 이행을 위해서 필요한 경우<br>
								 - 서비스의 제공에 따른 요금정산을 위하여 필요한 경우<br>
								3. 병원은 개인정보의 보호를 위하여 관리자를 한정하여 그 수를 최소화하며 개인정보의 분실, 도난, 유출, 변조되지 아니하도록 안정성 확보에 필요한 기술적 조치 등을 강구합니다.<br>
								4. 병원은 개인정보의 수집목적을 달성한 때에는 당해 개인정보를 지체없이 파기합니다.<br>
								5. 병원은 마지막 로그인 후 12개월이 지난 회원정보를 휴먼회원으로 전환하며, 그 이후 12개월이 지나면 회원의 모든 정보는 파기합니다.<br>
								<br>
								제11조(개인정보의 수집목적 및 이용목적)<br>
								1. 이용자에게 원활한 의료정보 제공을 위한 온라인 및 오프라인에서의 공지기능<br>
								2. 사용자 인증 절차 및 병원 내 진료와 관련된 진료정보서비스 제공<br>
								3. 병원의 홈페이지 원활한 운영 및 통계분석자료로 활용<br><br>
								제12조(개인정보의 보유기간 및 이용기간)<br>
								병원은 회원 자격을 가지고 있는 기간을 개인정보의 보유기간 및 이용기간으로 정합니다.<br><br>
								제13조(개인정보의 이용 및 제공의 제한)<br>
								1. 제공된 개인정보는 당해 이용자의 동의없이 목적외 이용이나 제3자에게 제공할 수 없으며, 이에 따른 이용자의 피해에 대한 모든 책임은 병원이 집니다. 단, 다음의 경우에는 예외로 합니다.<br>
								 - 법률에 특별한 규정이 있는 경우<br>
								 - 서비스의 제공에 따른 요금정산 및 배송 등을 위하여 필요한 경우<br>
								 - 통계작성·학술연구 또는 시장조사를 위하여 필요한 경우로서 특정 개인을 식별할 수 없는 형태로 제공하는 경우<br>
								2. 정보통신서비스제공자로부터 이용자의 개인정보를 제공받은 자는 당해 이용자의 동의가 있거나 다른 법률에 특별한 규정이 있는 경우를 제외하고는 개인정보를 제공받은 목적 외의 용도로 이를 이용하거나 제3자에게 제공하여서는 안됩니다.<br><br>
								제14조(이용자의 권리)<br>
								1. 이용자는 언제든지 제10조 제2항, 제15조 제1항 또는 동조 제2항의 규정에 의한 동의를 철회할 수 있습니다. 단, 철회의 의사표시는 병원 또는 병원으로부터 정보를 제공받은 자에게 전자우편이 도달된 때로부터 유효합니다.<br>
								2. 이용자는 병원에게 자신의 개인정보에 대한 열람을 요구할 수 있으며, 자신의 개인정보에 오류가 있는 경우에는 그 정정을 요구할 수 있습니다.<br>
								3. 제1항 및 제2항에 의한 철회, 열람, 정정의 요구는 병원에 전자우편을 보내는 방식으로 하여야 하며, 병원은 전자우편이 도달된 후 지체없이 필요한 조치를 취할 의무를 집니다. 이용자가 오류의 정정을 요구한 경우에는 병원이 그 오류를 정정할 때까지 당해 개인정보를 이용하지 않습니다.<br><br>
								제4장 서비스에 관한 책임의 제한 <br><br>
								제15조 (건강상담서비스)<br>
								① 병원은 이용자의 상담 내용이 상담의사를 제외한 제3자에게 유출되지 않도록 최선을 다해 보안을 유지하려고 노력합니다. 다만, 다음 각호의 사유로 인하여 상담 내용이 공개 또는 훼손된 경우 병원은 책임을 지지 않습니다.<br>
								 1. 사용자의 부주의로 비밀번호가 유출된 경우 <br>
								 2. 사용자가 '상담삭제' 기능을 사용한 경우 <br>
								 3. 천재지변등 기타 불가항력에 의한 경우 <br>
								② 이용자의 상담요청에 대한 종합적이고 적절한 답변을 위하여 상담 의사들은 상담 내용과 답변을 참고할 수 있습니다.<br>
								③ 서비스에서 진행된 상담의 내용은 특정 개인을 식별할 수 없는 형태로 다음과 같은 목적으로 사용할 수 있습니다.<br>
								 1. 학술활동<br>
								 2. 인쇄물, CD-ROM 등의 저작활동<br>
								 3. FAQ, 추천상담 등의 서비스 내용의 일부<br>
								④ 상담에 대한 답변 내용은 각 전문 의사의 의학적 지식을 바탕으로 한 주관적인 답변으로 병원의 공식적인 의견이 될 수 없으며, 상담내용에 대하여 병원은 일체의 책임을 지지 않습니다.<br>
								⑤ 다음과 같은 상담신청의 경우에는 상담을 거절할 수 있습니다.<br>
								 1. 같은 내용의 상담을 반복하여 신청하는 경우 <br>
								 2. 상식에 어긋나는 표현을 사용하여 상담을 신청하는 경우<br>
								 3. 진단명을 요구하는 상담을 신청하는 경우 <br>
								 4. 치료비, 검사비, 의약품 가격 등에 대하여 상담을 신청하는 경우 <br><br>
								제16조 (건강관련정보 제공 서비스)<br>
								① 병원에서 제공하는 건강관련정보는 개략적이며 일반적인 것으로서 특정인의 의견에 지나지 않으며 어떠한 경우에도 전문적인 의학적 진단, 진료, 치료를 대신할 수 없습니다. <br>
								② 병원은 건강관련정보제공서비스에서 언급된 어떠한 특정한 검사나 제품 또는 치료법을 보증하지 않습니다. <br>
								③ 병원은 제공하는 건강관련정보는 전적으로 이용자의 판단에 따라 이용되는 것으로서, 병원은 건강관련정보의 제공과 관련하여 어떠한 책임도 지지 않습니다.<br><br>
								제17조 (병원과 연결 사이트간의 관계)<br>
								병원은 연결 사이트가 독자적으로 제공하는 재화, 용역, 서비스에 의하여 이용자와 행하는 거래에 대해서 어떠한 보증책임을 지지 않습니다.<br><br>
								제 5장 병원 및 이용자의 의무 시작 <br><br>
								제18조 (병원의 의무)<br>
								① 병원은 법령과 본 약관이 금지하거나 공서양속에 반하는 행위를 하지 않으며 본 약관이 정하는 바에 따라 지속적이고, 안정적으로 서비스를 제공하는 데 최선을 다합니다.<br>
								② 병원은 이용자의 신용정보를 포함한 개인신상정보의 보안에 대하여 기술적 안전 조치를 강구하고 관리에 만전을 기함으로써 이용자의 정보보안에 최선을 다합니다.<br>
								③ 병원은 공정하고 건전한 운영과 지속적인 연구개발을 통하여 양질의 서비스를 제공함으로써 고객만족을 극대화 하여 인터넷 비즈니스 발전에 기여하도록 합니다.<br>
								④ 병원은 이용자가 원하지 않는 영리목적의 광고성 전자우편을 발송하지 않습니다.<br><br>
								제19조 (이용자의 주민등록번호 및 비밀번호에 대한 의무)<br>
								① 이용자는 병원인터넷 진료 및 진료조회를 이용하는 경우 주민등록번호(실명인증) 및 비밀번호를 사용해야 합니다. <br>
								② 주민등록번호(실명인증)와 비밀번호에 관한 모든 관리의 책임은 이용자에게 있습니다. <br>
								③ 이용자는 자신의 주민등록번호 및 비밀번호를 제3자에게 이용하게 해서는 안 됩니다. <br>
								④ 이용자의 주민등록번호 및 비밀번호의 관리의 부실로 인한 모든 책임은 이용자가 부담합니다. <br>
								⑤ 이용자는 주민등록번호 및 비밀번호를 도난 당하거나 제3자에게 사용되고 있음을 인지한 경우에는 바로 병원에 통보하고 병원의 안내가 있는 경우에는 그에 따라야 합니다. <br><br>
								제20조 (이용자의 의무)<br>
								① 이용자는 다음의 행위를 하여서는 안 됩니다.<br>
								 1. 신청 또는 변경 시 허위내용의 등록<br>
								 2. 병원에 게시된 정보의 변경<br>
								 3. 병원이 정한 정보 이외의 정보(컴퓨터프로그램 등)의 송신 또는 게시<br>
								 4. 병원 기타 제3자의 저작권 등 지적재산권에 대한 침해<br>
								 5. 병원 기타 제3자의 명예를 손상시키거나 업무를 방해하는 행위<br>
								 6. 외설 또는 폭력적인 메시지·화상·음성 기타 공서양속에 반하는 정보를 병원에 공개 또는 게시하는 행위<br>
								 7. 다른 이용자에 대한 건강진료 및 상담을 하거나 알선하는 행위<br>
								 8. 제3자의 진료행위를 선전하는 행위<br>
								 9. 상품을 판매하거나 판매를 알선하는 행위<br>
								 10. 기타 부적절하다고 판단하는 행위<br>
								② 전항 각호의 정보 또는 기타 병원이 사이트 운영상 부적절하다고 판단한 정보가 홈페이지에 게시되거나 사이트와 링크된 곳에 게시된 경우, 병원은 이용자 또는 기타 정보의 게시를 행한 자의 승낙 없이 홈페이지에 게재된 당해 정보를 삭제하거나 링크를 단절할 수 있습니다. 단, 병원은 이러한 정보의 삭제링크의 절단 등을 할 의무를 지지 않습니다.<br><br>
								제6장 기타 <br><br>
								제21조 (저작권의 귀속 및 이용제한)<br>
								① 병원은 작성한 저작물에 대한 저작권 기타 지적재산권은 병원에 귀속합니다. <br>
								② 이용자는 홈페이지를 이용함으로써 얻은 정보를 병원의 사전 승낙 없이 복제, 송신, 출판, 배포, 방송 기타 방법에 의하여 영리목적으로 이용하거나 제3 자에게 이용하게 하여서는 안 됩니다.<br><br>
								제22조 (분쟁해결)<br>
								① 본 이용약관에 규정된 것을 제외하고 발생하는 서비스 이용에 관한 제반 문제에 관한 분쟁은 최대한 쌍방합의에 의해 해결하도록 합니다. <br>
								② 이용자가 홈페이지 이용과 관련하여 불만이 있거나 의견을 제시하고자 하는 경우에는 전자우편으로 홈페이지에 대한 불만사항 또는 의견을 제출하면 됩니다. <br>
								③ 병원은 이용자로부터 제출되는 불만사항 및 의견이 정당하다고 판단하는 경우 우선적으로 그 사항을 처리합니다. 다만, 신속한 처리가 곤란한 경우에는 이용자에게 그 사유와 처리일정을 즉시 통보해 드립니다.<br><br>
								제23조 (재판권 및 준거법) <br>
								① 병원과 이용자 간에 서비스 이용으로 발생한 분쟁에 관한 소송은 민사소송법상의 관할법원으로 합니다. <br>
								② 병원과 이용자 간에 제기된 전자거래 소송에는 한국법을 적용합니다.<br><br>
								본 약관은 2018년 1월 16일부터 적용하고, 2004년 7월 01일부터 적용되던 종전의 약관은 본 약관으로 대체합니다.<br>
							</div>
						</div>
						<div class="agree_check mt20" style="text-align:right;">
							<label for="agreeCh1" class="ch">
								<input type="radio" id="agreeCh1" name="agreeCh1" class="">
								<span>동의함</span>
							</label>
							<label for="agreeCh1_2" class="ch">
								<input type="radio" id="agreeCh1_2" name="agreeCh1" class="">
								<span>동의안함</span>
							</label>
						</div>
					</div>
					<div class="ssgap"></div>
					<div class="con_sec">
						<h3 class="sub_tit">개인정보 수집 및 이용 목적</h3>
						<!-- <div class="agree_check">
							<label for="agreeCh2" class="ch1">
								<input type="checkbox" id="agreeCh2" name="agreeCh2" class="">
								<span>개인정보 수집 및 이용 목적 <em>(필수사항)</em></span>
							</label>
						</div> -->
						<div class="agree_txt" tabindex="0">
							<div class="con_txt">
								 - 회원제 서비스 제공 및 인터넷 진료예약<br>
							</div>
						</div>
						<div class="agree_check mt20" style="text-align:right;">
							<label for="agreeCh2" class="ch">
								<input type="radio" id="agreeCh2" name="agreeCh2" class="">
								<span>동의함</span>
							</label>
							<label for="agreeCh2_2" class="ch">
								<input type="radio" id="agreeCh2_2" name="agreeCh2" class="">
								<span>동의안함</span>
							</label>
						</div>
					</div>
					<div class="ssgap"></div>
					<div class="con_sec">
						<h3 class="sub_tit">개인정보 수집 및 이용 항목</h3>
						<!-- <div class="agree_check">
							<label for="agreeCh3" class="ch1">
								<input type="checkbox" id="agreeCh3" name="agreeCh3" class="">
								<span>개인정보 수집 및 이용 항목 <em>(필수사항)</em></span>
							</label>
						</div> -->
						<div class="agree_txt" tabindex="0">
							<div class="con_txt">
								<strong>[회원 가입 시 수집항목]</strong><br>
								필수항목 : 회원구분, 성명, 생년월일, 성별, 아이디, 비밀번호, 전화번호, 휴대폰번호<br>
								- 만 14세 미만인 경우 법정 대리인 정보<br>
								선택항목 : 이메일, 주소, 뉴스레터 수신여부<br>
								<strong>서비스 이용과정이나 서비스 제공 업무처리과정에서 서비스 이용기록, 접속로그, 쿠키, 접속IP정보가 자동으로 수집 생성될 수 있습니다.</strong><br>
							</div>
						</div>
						<div class="agree_check mt20" style="text-align:right;">
							<label for="agreeCh3" class="ch">
								<input type="radio" id="agreeCh3" name="agreeCh3" class="">
								<span>동의함</span>
							</label>
							<label for="agreeCh3_2" class="ch">
								<input type="radio" id="agreeCh3_2" name="agreeCh3" class="">
								<span>동의안함</span>
							</label>
						</div>
					</div>
					<div class="ssgap"></div>
					<div class="con_sec">
						<h3 class="sub_tit">개인정보 이용 및 보유기간</h3>
						<!-- <div class="agree_check">
							<label for="agreeCh4" class="ch1">
								<input type="checkbox" id="agreeCh4" name="agreeCh4" class="">
								<span>개인정보 이용 및 보유기간 <em>(필수사항)</em></span>
							</label>
						</div> -->
						<div class="agree_txt" tabindex="0">
							<div class="con_txt">
								병원은 개인정보의 수집 목적 또는 제공받은 목적이 달성된 때에는 귀하의 개인정보를 지체없이 파기합니다.<br>
								회원 가입 정보의 경우 : 회원 가입 기간(탈퇴후 즉시 파기)<br>
								<p class="m_color2">다만, 수집목적 또는 제공받은 목적이 달성된 경우에도 상법 등 법령의 규정에 의하여 보존할 필요성이 있는 경우에는 귀하의 개인정보를 보유할 수 있습니다.</p>
							</div>
						</div>
						<div class="agree_check mt20" style="text-align:right;">
							<label for="agreeCh4" class="ch">
								<input type="radio" id="agreeCh4" name="agreeCh4" class="">
								<span>동의함</span>
							</label>
							<label for="agreeCh4_2" class="ch">
								<input type="radio" id="agreeCh4_2" name="agreeCh4" class="">
								<span>동의안함</span>
							</label>
						</div>
					</div>
					<div class="ssgap"></div>
					<div class="con_sec">
						<h3 class="sub_tit">동의거부 권리 및 불이익</h3>
						<!-- <div class="agree_check">
							<label for="agreeCh5" class="ch1">
								<input type="checkbox" id="agreeCh5" name="agreeCh5" class="">
								<span>동의거부 권리 및 불이익 <em>(필수사항)</em></span>
							</label>
						</div> -->
						<div class="agree_txt" tabindex="0">
							<div class="con_txt">
								귀하는 선택정보에 대한 개인정보 수집·이용에 동의하지 않으실 수 있습니다.<br>
								선택정보 수집·이용에 동의하지 않을 경우에도 홈페이지 회원가입은 가능하나, 일부 서비스의 이용이 제한될 수 있습니다.<br>
								다만, 홈페이지 개선 지원을 위한 최소한의 정보인 필수항목의 개인정보 미제공시에는 홈페이지 회원가입이 거부될 수 있습니다.
							</div>
						</div>
						<div class="agree_check mt20" style="text-align:right;">
							<label for="agreeCh5" class="ch">
								<input type="radio" id="agreeCh5" name="agreeCh5" class="">
								<span>동의함</span>
							</label>
							<label for="agreeCh5_2" class="ch">
								<input type="radio" id="agreeCh5_2" name="agreeCh5" class="">
								<span>동의안함</span>
							</label>
						</div>
					</div>
					<div class="btn_area">
						<a href="javascript:void(0);" onclick="javascript:fn_Next();" class="btn_ty01_sty01"><span>동의합니다.</span></a>
						<a href="/" class="btn_ty01_sty0"><span>취소</span></a>
					</div>
				</div>
			</div>
		</section>
	<input type="hidden" id="headHspCd" name="headHspCd" value="G"></form>

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
							<p class="sns_wrap">
								<a href="https://www.youtube.com/channel/UC6t1q7O-yAlOa9lRpxRWY7A" target="_blank" title="새창으로 열기" class=""><img src="../../../../resources/img/ico_circle_youtube.png" alt="유튜브"></a>
								<!-- <a href="https://www.facebook.com/CauHospital" target="_blank" title="새창으로 열기" class=""><img src="/common/front/home/images/icon/ico_circle_facebook.png" alt="페이스북" /></a>
								<a href="https://blog.naver.com/cau_hs" target="_blank" title="새창으로 열기" class=""><img src="/common/front/home/images/icon/ico_circle_blog.png" alt="네이버 블로그" /></a> -->
							</p>
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