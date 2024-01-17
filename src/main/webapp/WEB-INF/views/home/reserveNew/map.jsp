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
	
	#dmap{
		width: 100%;
		height: 380px;
		position: relative;
	
	}
	
	#map{
		position: relative;
	
	}
	.label{
		
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
            	<h2>병원 내부 실시간 지도</h2>
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
			
				
					<!-- 1. 지도 노드 -->
					<!--
					<div id="daumRoughmapContainer1647509594008" class="root_daum_roughmap root_daum_roughmap_landing" style="width:100%; height:100%;">
					<div class="wrap_map">
					<div class="map" style="overflow: hidden; background: url(&quot;https://t1.daumcdn.net/mapjsapi/images/bg_tile.png&quot;);">
					<div style="position: absolute; left: 0px; top: 0px; width: 100%; height: 100%; touch-action: none; cursor: url(&quot;https://t1.daumcdn.net/mapjsapi/images/cursor/openhand.cur.ico&quot;) 7 5, url(&quot;https://t1.daumcdn.net/mapjsapi/images/cursor/openhand.cur.ico&quot;), default;">
					<div style="position: absolute; left: -492px; top: -25px;">
					<div style="position: absolute; z-index: 1; left: 0px; top: 0px;">
					<img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNGSD01/v18_qqn7d/7/120/51.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 478px; top: 290px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;">
					<img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNGSD01/v18_qqn7d/7/120/52.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 734px; top: 290px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;">
					<img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNGSD01/v18_qqn7d/7/120/53.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 990px; top: 290px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;">
					<img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNGSD01/v18_qqn7d/7/120/54.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1246px; top: 290px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;">
					<img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNGSD01/v18_qqn7d/7/120/55.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1502px; top: 290px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;">
					<img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNGSD01/v18_qqn7d/7/120/56.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1758px; top: 290px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;">
					<img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNGSD01/v18_qqn7d/7/121/51.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 478px; top: 34px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;">
					<img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNGSD01/v18_qqn7d/7/121/52.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 734px; top: 34px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;">
					<img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNGSD01/v18_qqn7d/7/121/53.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 990px; top: 34px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;">
					<img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNGSD01/v18_qqn7d/7/121/54.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1246px; top: 34px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;">
					<img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNGSD01/v18_qqn7d/7/121/55.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1502px; top: 34px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;">
					<img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNGSD01/v18_qqn7d/7/121/56.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1758px; top: 34px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;">
					<img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNGSD01/v18_qqn7d/7/122/51.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 478px; top: -222px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;">
					<img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNGSD01/v18_qqn7d/7/122/52.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 734px; top: -222px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;">
					<img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNGSD01/v18_qqn7d/7/122/53.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 990px; top: -222px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;">
					<img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNGSD01/v18_qqn7d/7/122/54.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1246px; top: -222px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;">
					<img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNGSD01/v18_qqn7d/7/122/55.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1502px; top: -222px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;">
					<img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNGSD01/v18_qqn7d/7/122/56.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1758px; top: -222px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"></div>
					<div style="position: absolute; z-index: 0; left: 0px; top: 0px;">
					<img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNGSD01/v18_qqn7d/6/241/105.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 861.5px; top: 290px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;">
					<img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNGSD01/v18_qqn7d/6/241/106.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 989.5px; top: 290px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;">
					<img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNGSD01/v18_qqn7d/6/241/107.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1117.5px; top: 290px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;">
					<img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNGSD01/v18_qqn7d/6/241/108.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1245.5px; top: 290px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;">
					<img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNGSD01/v18_qqn7d/6/241/109.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1373.5px; top: 290px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;">
					<img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNGSD01/v18_qqn7d/6/242/105.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 861.5px; top: 162px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;">
					<img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNGSD01/v18_qqn7d/6/242/106.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 989.5px; top: 162px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;">
					<img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNGSD01/v18_qqn7d/6/242/107.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1117.5px; top: 162px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;">
					<img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNGSD01/v18_qqn7d/6/242/108.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1245.5px; top: 162px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;">
					<img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNGSD01/v18_qqn7d/6/242/109.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1373.5px; top: 162px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;">
					<img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNGSD01/v18_qqn7d/6/243/105.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 861.5px; top: 34px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;">
					<img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNGSD01/v18_qqn7d/6/243/106.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 989.5px; top: 34px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;">
					<img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNGSD01/v18_qqn7d/6/243/107.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1117.5px; top: 34px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;">
					<img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNGSD01/v18_qqn7d/6/243/108.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1245.5px; top: 34px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;">
					<img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNGSD01/v18_qqn7d/6/243/109.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1373.5px; top: 34px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;">
					<img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNGSD01/v18_qqn7d/6/241/110.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1501.5px; top: 290px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;">
					<img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNGSD01/v18_qqn7d/6/242/110.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1501.5px; top: 162px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;">
					<img src="https://map.daumcdn.net/map_k3f_prod/bakery/image_map_png/PNGSD01/v18_qqn7d/6/243/110.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1501.5px; top: 34px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 128px; height: 128px;"></div>
					<div style="position: absolute; z-index: 1;"></div>
					<div style="width: 1276px; height: 468px; position: absolute; z-index: 1;"></div>
					<div style="position: absolute; z-index: 1;"><svg version="1.1" style="stroke: none; stroke-dashoffset: 0.5; stroke-linejoin: round; fill: none; transform: translateZ(0px); position: absolute; left: -2060px; top: -911px; width: 6380px; height: 2340px;" viewBox="0 0 6380 2340"><defs></defs></svg></div>
					<div style="position: absolute; z-index: 1; width: 100%; height: 0px; transform: translateZ(0px);">
					<div style="position: absolute; margin: -48px 0px 0px -18px; z-index: 2; left: 1166px; top: 260px;">
					<img draggable="false" src="//t1.daumcdn.net/localimg/localimages/07/2018/pc/map/marker_map01.png" alt="" role="presentation" title="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 45px, 50px, 0px); top: 0px; left: 0px; width: 45px; height: 50px;"></div>
					<div style="position: absolute; z-index: 3; white-space: nowrap; margin: -28px 0px 0px -54px; left: 1166px; top: 260px;">
					<div class="roughmap_maker_label" style="top: -57px; left: -2.25px;">
					<a href="https://map.kakao.com/?urlX=474760.0&amp;urlY=1090263.0&amp;itemId=827464898&amp;q=%EC%A4%91%EC%95%99%EB%8C%80%ED%95%99%EA%B5%90%EA%B4%91%EB%AA%85%EB%B3%91%EC%9B%90&amp;srcid=827464898&amp;map_type=TYPE_MAP&amp;from=roughmap" target="_blank"><span class="roughmap_lebel_text">중앙대학교광명병원</span></a></div></div></div></div></div>
					<div style="position: absolute; cursor: default; z-index: 1; margin: 0px 6px; height: 19px; line-height: 14px; bottom: 0px; color: rgb(0, 0, 0); right: 0px;">
					<div style="color: rgb(0, 0, 0); text-align: center; font-size: 10px; float: right;">
					<div style="float: left; margin: 2px 3px 0px 4px; height: 6px; transition: width 0.1s ease 0s; border-top: none rgb(0, 0, 0); border-right: 2px solid rgb(0, 0, 0); border-bottom: 2px solid rgb(0, 0, 0); border-left: 2px solid rgb(0, 0, 0); border-image: initial; width: 58px;"></div>
					<div style="float: left; margin: 0px 4px 0px 0px; font-family: AppleSDGothicNeo-Regular, 돋움, dotum, sans-serif; font-weight: bold; color: rgb(0, 0, 0);">1km</div></div>
					<div style="margin: 0px 4px; float: right;">
					<a target="_blank" href="http://map.kakao.com/" title="Kakao 지도로 보시려면 클릭하세요." style="float: left; width: 32px; height: 10px;">
					<img src="https://t1.daumcdn.net/mapjsapi/images/m_bi_b.png" alt="Kakao 지도로 이동" style="float: left; width: 32px; height: 10px; border: none;"></a>
					<div style="font: 11px / 11px Arial, Tahoma, Dotum, sans-serif; float: left;"></div></div></div>
					<div style="cursor: auto; position: absolute; z-index: 2; left: 0px; top: 0px;"></div></div>
					<span class="map_border border1"></span>
					<span class="map_border border2"></span>
					<span class="map_border border3"></span>
					<span class="map_border border4"></span>
					<div class="wrap_btn_zoom">
					<button class="btn_zoom_in hide_text"><span class="img_zoom">확대</span></button>
					<button class="btn_zoom_out hide_text"><span class="img_zoom">축소</span></button>
					<button class="btn_zoom_reset hide_text"><span class="img_zoom">초기화</span></button></div></div>
					<div class="wrap_controllers hide">
					<a class="tit_controllers" href="https://map.kakao.com" target="_blank">
					<img src="//t1.daumcdn.net/localimg/localimages/07/2018/pc/common/logo_kakaomap.png" width="72" height="16" alt="카카오맵" style="display:block;width:72px;height:16px"></a>
					<div class="wrap_btn_roadview">
					<a class="txt" target="_blank" href="https://map.kakao.com/?from=roughmap&amp;srcid=827464898&amp;confirmid=827464898&amp;q=%EC%A4%91%EC%95%99%EB%8C%80%ED%95%99%EA%B5%90%EA%B4%91%EB%AA%85%EB%B3%91%EC%9B%90&amp;rv=on">로드뷰</a><span class="txt_bar"></span>
					<a class="txt" target="_blank" href="https://map.kakao.com/?from=roughmap&amp;eName=%EC%A4%91%EC%95%99%EB%8C%80%ED%95%99%EA%B5%90%EA%B4%91%EB%AA%85%EB%B3%91%EC%9B%90&amp;eX=474760.0&amp;eY=1090263.0">길찾기</a><span class="txt_bar"></span>
					<a class="txt" target="_blank" href="https://map.kakao.com?map_type=TYPE_MAP&amp;from=roughmap&amp;srcid=827464898&amp;itemId=827464898&amp;q=%EC%A4%91%EC%95%99%EB%8C%80%ED%95%99%EA%B5%90%EA%B4%91%EB%AA%85%EB%B3%91%EC%9B%90&amp;urlX=474760.0&amp;urlY=1090263.0">지도 크게 보기</a></div></div></div>

					<!--
						2. 설치 스크립트 
						* 지도 퍼가기 서비스를 2개 이상 넣을 경우, 설치 스크립트는 하나만 삽입합니다.
					-->
					<!-- 
					<script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>
					<script charset="UTF-8" src="https://t1.daumcdn.net/kakaomapweb/place/jscss/roughmap/6af7869e/roughmapLander.js"></script>
					-->
						<!-- 3. 실행 스크립트 -->
						<!--  <script charset="UTF-8">
							new daum.roughmap.Lander({
								"timestamp" : "1647509594008",
								"key" : "29i3b",

							}).render();
						</script>
						
					 여까지 -->	
					 
					 
					 
					 <!-- 내가 가져온 지도 constant 지도!!!!!!!!!!!-->

					 
					 
<div class="map_area">
				<div class="map" id="map" style="width:380px;height:380px; z-index:1;">				 
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4964815528aa3bf5334721911ccdc6964964815528aa3bf5334721911ccdc696"></script>
	<script>
			var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
			    mapOption = { 
			        center: new kakao.maps.LatLng(35.542990773269565, 129.33653130703433), // 지도의 중심좌표
			        level: 2 // 지도의 확대 레벨 
			    }; 
			
			var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
			// 마우스 드래그와 모바일 터치를 이용한 지도 이동을 막는다
			map.setDraggable(false);		
	
			// 마우스 휠과 모바일 터치를 이용한 지도 확대, 축소를 막는다
			map.setZoomable(false);  
			
			var flag1=false;
			var hspcontent = [];
			var hspposition = [];
			var hspcustomOverlay = [];
			var positionlat = [35.54253208872906,35.542502954568036,35.54247505618329,35.54243055026881,35.54298183050119,35.54295746588735,35.54291161807004,35.542878734382406,35.54344992142927,35.54342683767449,35.543391596782385,35.54337081634955];
			var positionlon = [129.33590612990636,129.33624704734848,129.33664036722297,129.33719306129316,129.3359467400585,129.3362740169526,129.33677982083077,129.33719780321204,129.336202865509,129.33646403300148,129.33688746215125,129.33714593990086];
			var contentNm1 = ["관절센터","척추센터","비뇨의학과","원무과","이비인후과","엘리베이터","엘리베이터","핵의학과","편의점","편의시설","응급의학과","병동약국"];
			var contentNm2 = ["암병원","소화기센터","가정의학과","감염내과","내분비내과","엘리베이터","엘리베이터","외과","치과","피부과","정신건강의학과","내시경실"];
			var contentNm3 = ["소아청소년과","재활의학과","병리과","진단검사의학과","간호본부","엘리베이터","엘리베이터","주사실","호흡기알레르기내과","방사선종양학과","의료기기용품점","의용공학실"];
			var contentNm4 = ["치과교정과","수술실","마취회복실","산모치료실","신생아실","엘리베이터","엘리베이터","당일수술센터","산부인과","영상의학과","안과","외래약국"];
			var contentNm5 = ["신장내과","신경외과","신경과","순환기내과","소화기내과","엘리베이터","엘리베이터","화장실","성형외과","마취통증의학과","류마티스내과","내분비과"];
			var contentNm6 = ["심장혈관흉부외과","외과","입원내과","정형외과","구강악안면외과","엘리베이터","엘리베이터","치과보존과-보철과","혈액종양내과","편의점","야외공원","휴게실"];
			var contentNm7 = ["701호실","702호실","703호실","704호실","705호실","엘리베이터","엘리베이터","706호실","707호실","708호실","709호실","710호실"];
			
			function fn_gogo(i){
				if(flag1){
					hspcustomOverlay[0].setMap(null);
					hspcustomOverlay[1].setMap(null);
					hspcustomOverlay[2].setMap(null);
					hspcustomOverlay[3].setMap(null);
					hspcustomOverlay[4].setMap(null);
					hspcustomOverlay[5].setMap(null);
					hspcustomOverlay[6].setMap(null);
					hspcustomOverlay[7].setMap(null);
					hspcustomOverlay[8].setMap(null);
					hspcustomOverlay[9].setMap(null);
					hspcustomOverlay[10].setMap(null);
					hspcustomOverlay[11].setMap(null);
					$("#labelMap").remove();
				}
				if(i==1){
			        $("input:radio[name='radioFloor']:radio[id="+i+"F]").prop('checked', true); // 선택하기
			        
					for(j=0; j < contentNm1.length; j++){
					// 커스텀 오버레이에 표시할 내용입니다     
					// HTML 문자열 또는 Dom Element 입니다 
					hspcontent[j] = '<div class ="label" style="z-index:3;"><span class="left"></span><span class="center">'+contentNm1[j]+'</span><span class="right"></span></div>';
		
					// 커스텀 오버레이가 표시될 위치입니다 
					hspposition[j] = new kakao.maps.LatLng(positionlat[j], positionlon[j]);  
			
					// 커스텀 오버레이를 생성합니다
					hspcustomOverlay[j] = new kakao.maps.CustomOverlay({
					    position: hspposition[j],
					    content: hspcontent[j]   
					});
					for(k=1; k<=7; k++){
						$("#btn"+k+"F").css({"background-color":"#1474d0","color":"white"}); // css변경 초기화
					}
					$("#btn"+i+"F").css({"background-color":"white","color":"#1474d0"}); // css변경
					// 커스텀 오버레이를 지도에 표시합니다
					hspcustomOverlay[j].setMap(map);
					}
					// ------------------
					flag1 = true;
				}
				if(i==2){
					$("input:radio[name='radioFloor']:radio[id="+i+"F]").prop('checked', true); // 선택하기
					for(j=0; j < contentNm2.length; j++){
					// 커스텀 오버레이에 표시할 내용입니다     
					// HTML 문자열 또는 Dom Element 입니다 
					hspcontent[j] = '<div class ="label"><span class="left"></span><span class="center">'+contentNm2[j]+'</span><span class="right"></span></div>';
		
					// 커스텀 오버레이가 표시될 위치입니다 
					hspposition[j] = new kakao.maps.LatLng(positionlat[j], positionlon[j]);  
			
					// 커스텀 오버레이를 생성합니다
					hspcustomOverlay[j] = new kakao.maps.CustomOverlay({
					    position: hspposition[j],
					    content: hspcontent[j]   
					});
					for(k=1; k<=7; k++){
						$("#btn"+k+"F").css({"background-color":"#1474d0","color":"white"}); // css변경 초기화
					}
					$("#btn"+i+"F").css({"background-color":"white","color":"#1474d0"}); // css변경
					// 커스텀 오버레이를 지도에 표시합니다
					hspcustomOverlay[j].setMap(map);
					}
					// ------------------
					flag1 = true;
				}
				if(i==3){
					$("input:radio[name='radioFloor']:radio[id="+i+"F]").prop('checked', true); // 선택하기
					for(j=0; j < contentNm3.length; j++){
					// 커스텀 오버레이에 표시할 내용입니다     
					// HTML 문자열 또는 Dom Element 입니다 
					hspcontent[j] = '<div class ="label"><span class="left"></span><span class="center">'+contentNm3[j]+'</span><span class="right"></span></div>';
		
					// 커스텀 오버레이가 표시될 위치입니다 
					hspposition[j] = new kakao.maps.LatLng(positionlat[j], positionlon[j]);  
			
					// 커스텀 오버레이를 생성합니다
					hspcustomOverlay[j] = new kakao.maps.CustomOverlay({
					    position: hspposition[j],
					    content: hspcontent[j]   
					});
					for(k=1; k<=7; k++){
						$("#btn"+k+"F").css({"background-color":"#1474d0","color":"white"}); // css변경 초기화
					}
					$("#btn"+i+"F").css({"background-color":"white","color":"#1474d0"}); // css변경
					// 커스텀 오버레이를 지도에 표시합니다
					hspcustomOverlay[j].setMap(map);
					}
					// ------------------
					flag1 = true;
				}
				if(i==4){
					$("input:radio[name='radioFloor']:radio[id="+i+"F]").prop('checked', true); // 선택하기
					for(j=0; j < contentNm4.length; j++){
					// 커스텀 오버레이에 표시할 내용입니다     
					// HTML 문자열 또는 Dom Element 입니다 
					hspcontent[j] = '<div class ="label"><span class="left"></span><span class="center">'+contentNm4[j]+'</span><span class="right"></span></div>';
		
					// 커스텀 오버레이가 표시될 위치입니다 
					hspposition[j] = new kakao.maps.LatLng(positionlat[j], positionlon[j]);  
			
					// 커스텀 오버레이를 생성합니다
					hspcustomOverlay[j] = new kakao.maps.CustomOverlay({
					    position: hspposition[j],
					    content: hspcontent[j]   
					});
					for(k=1; k<=7; k++){
						$("#btn"+k+"F").css({"background-color":"#1474d0","color":"white"}); // css변경 초기화
					}
					$("#btn"+i+"F").css({"background-color":"white","color":"#1474d0"}); // css변경
					// 커스텀 오버레이를 지도에 표시합니다
					hspcustomOverlay[j].setMap(map);
					}
					// ------------------
					flag1 = true;
				}
				if(i==5){
					$("input:radio[name='radioFloor']:radio[id="+i+"F]").prop('checked', true); // 선택하기
					for(j=0; j < contentNm5.length; j++){
					// 커스텀 오버레이에 표시할 내용입니다     
					// HTML 문자열 또는 Dom Element 입니다 
					hspcontent[j] = '<div class ="label"><span class="left"></span><span class="center">'+contentNm5[j]+'</span><span class="right"></span></div>';
		
					// 커스텀 오버레이가 표시될 위치입니다 
					hspposition[j] = new kakao.maps.LatLng(positionlat[j], positionlon[j]);  
			
					// 커스텀 오버레이를 생성합니다
					hspcustomOverlay[j] = new kakao.maps.CustomOverlay({
					    position: hspposition[j],
					    content: hspcontent[j]   
					});
					for(k=1; k<=7; k++){
						$("#btn"+k+"F").css({"background-color":"#1474d0","color":"white"}); // css변경 초기화
					}
					$("#btn"+i+"F").css({"background-color":"white","color":"#1474d0"}); // css변경
					// 커스텀 오버레이를 지도에 표시합니다
					hspcustomOverlay[j].setMap(map);
					}
					// ------------------
					flag1 = true;
				}
				if(i==6){
					$("input:radio[name='radioFloor']:radio[id="+i+"F]").prop('checked', true); // 선택하기
					for(j=0; j < contentNm6.length; j++){
					// 커스텀 오버레이에 표시할 내용입니다     
					// HTML 문자열 또는 Dom Element 입니다 
					hspcontent[j] = '<div class ="label"><span class="left"></span><span class="center">'+contentNm6[j]+'</span><span class="right"></span></div>';
		
					// 커스텀 오버레이가 표시될 위치입니다 
					hspposition[j] = new kakao.maps.LatLng(positionlat[j], positionlon[j]);  
			
					// 커스텀 오버레이를 생성합니다
					hspcustomOverlay[j] = new kakao.maps.CustomOverlay({
					    position: hspposition[j],
					    content: hspcontent[j]   
					});
					for(k=1; k<=7; k++){
						$("#btn"+k+"F").css({"background-color":"#1474d0","color":"white"}); // css변경 초기화
					}
					$("#btn"+i+"F").css({"background-color":"white","color":"#1474d0"}); // css변경
					// 커스텀 오버레이를 지도에 표시합니다
					hspcustomOverlay[j].setMap(map);
					}
					// ------------------
					flag1 = true;
				}
				if(i==7){
					$("input:radio[name='radioFloor']:radio[id="+i+"F]").prop('checked', true); // 선택하기
					for(j=0; j < contentNm7.length; j++){
					// 커스텀 오버레이에 표시할 내용입니다     
					// HTML 문자열 또는 Dom Element 입니다 
					hspcontent[j] = '<div class ="label"><span class="left"></span><span class="center">'+contentNm7[j]+'</span><span class="right"></span></div>';
		
					// 커스텀 오버레이가 표시될 위치입니다 
					hspposition[j] = new kakao.maps.LatLng(positionlat[j], positionlon[j]);  
			
					// 커스텀 오버레이를 생성합니다
					hspcustomOverlay[j] = new kakao.maps.CustomOverlay({
					    position: hspposition[j],
					    content: hspcontent[j]   
					});
					for(k=1; k<=7; k++){
						$("#btn"+k+"F").css({"background-color":"#1474d0","color":"white"}); // css변경 초기화
					}
					$("#btn"+i+"F").css({"background-color":"white","color":"#1474d0"}); // css변경
					// 커스텀 오버레이를 지도에 표시합니다
					hspcustomOverlay[j].setMap(map);
					}
					// ------------------
					flag1 = true;
				}
				var a = $(".label").parent();
				var b = $(a).parent();
				$(document).ready(function(){
					$(b).append('<div class ="label" id="labelMap" style="position: absolute; z-index: -1; width: 350px; height:350px; left: 20px; top: -7px;"><span class="left"></span><span class="center"><img id= "dmap" src="../../../../resources/img/map/dmap_1.jpg" width:100%; height:100%;></span><span class="right"></span></div>');
				});
			}//gogo()함수 종료
			
			var hsp = new kakao.maps.LatLng(35.54297, 129.33657);
			//위치 정보 가져오기
			var lat;
			var lon;
			var options = {
			      enableHighAccuracy: true,
			      timeout: 5000,
			      maximunAge: 0
			};
			
			function success(position){
			   console.log(position);
			       lat = position.coords.latitude, // 위도
			        lon = position.coords.longitude; // 경도
			        
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
			   console.log(1);
			   if(flag){
			      marker.setMap(null);
			   }
			   //마커를 생성합니다
			   marker = new kakao.maps.Marker({
			      position: locPosition
			   });
			   marker.setMap(map);
			   flag=true;
			        
			
			    // 지도 중심좌표를 접속위치로 변경합니다
			    map.setCenter(hsp);      
			}    
		
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

</em></body></html>