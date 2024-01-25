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
	<script type="text/javascript" src="../../../../resources/js/frameLayer.js"></script>
	<script type="text/javascript" src="../../../../resources/js/calendar.js"></script>
	<script type="text/javascript" src="../../../../resources/js/CommonUtil.c3r-custom.js"></script>
	
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
	
	<script type="text/javascript" src="/plug-in/c3r/CommonUtil.c3r-custom.js"></script>
	<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script><script charset="UTF-8" type="text/javascript" src="//t1.daumcdn.net/postcode/api/core/221018/1666013742754/221018.js"></script>
	<script type="text/javascript">
		//생년월일 유효성
		function G_isBirthday(birthday){
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
		}
		//이메일 유효성 체크
		function fn_VerificationEmail(email){
			var regEmail = /([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
			if( !regEmail.test(email) ){
				return false;
			}
			var arrEmail = email.split("@");
			if( arrEmail.length > 2 ){
				return false;
			}
			return true;
		}
		//이메일
		function fn_ChangeEmail(obj){
			var $this = obj;
			if( $this.val() != "" ){
				$("#email2").val($this.val());
			}else{
				$("#email2").val("");
			}
		}
		//다음 메일 호출
		function fn_DaumPostcode( ){
			new daum.Postcode({
			oncomplete: function(data ){
				// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
				// 각 주소의 노출 규칙에 따라 주소를 조합한다.
				// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
				var fullAddr = ''; // 최종 주소 변수
				var extraAddr = ''; // 조합형 주소 변수
				// 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
				if( data.userSelectedType === 'R' ){ // 사용자가 도로명 주소를 선택했을 경우
				    fullAddr = data.roadAddress;
				}else{ // 사용자가 지번 주소를 선택했을 경우(J)
				    fullAddr = data.jibunAddress;
				}
				// 사용자가 선택한 주소가 도로명 타입일때 조합한다.
				if( data.userSelectedType === 'R' ){
					//법정동명이 있을 경우 추가한다.
					if( data.bname !== '' ){
						extraAddr += data.bname;
					}
					// 건물명이 있을 경우 추가한다.
					if( data.buildingName !== '' ){
						extraAddr += (extraAddr !== '' ? ', '+data.buildingName : data.buildingName);
					}
					// 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
					fullAddr += (extraAddr !== '' ? ' ('+extraAddr+')' : '');
				}
				// 우편번호와 주소 정보를 해당 필드에 넣는다.
				document.getElementById('zipCd').value = data.zonecode; //5자리 새우편번호 사용
				document.getElementById('addr').value = fullAddr;
				// 커서를 상세주소 필드로 이동한다.
				document.getElementById('detlAddr').focus();
				}
			}).open();
		}
		
		var duplYn = true;
		function fn_CheckDupl(obj ){
			if( $("#userId").val() == "" ){
				alert("아이디를 입력해 주세요.");
				$("#userId").focus();
				return false;
			}
			if( $("#userId").val().length < 6 ){
				alert("아이디는 6자리 이상 입력해 주세요.");
				$("#userId").focus();
				return false;
			}
			$.ajax({
				type: "POST",
				url: "/home/member/joinCheckId.do",
				data: {
					"userId": $("#userId").val()
				},
				dataType: "text",
				success: function(rData ){
					onebtnchk = 0;
					if( rData == "OK" ){
						if( confirm("사용가능한 아이디 입니다.\n중앙대학교광명병원 아이디로 사용하시겠습니까?") ){
							duplYn = false;
							$(obj).val("다시검색");
						}
						duplYn = false;
						$(obj).text("다시검색");
						//$("#userIdChkTxt").text("*사용 가능한 아이디입니다.");
					}else{
						alert("해당 아이디는 사용할 수 없습니다.");
						duplYn = true;
						$(obj).text("중복확인");
						//$("#userIdChkTxt").text("*해당 아이디는 사용할 수 없습니다.");
					}
				},
				error: function(request, status, error ){
					onebtnchk = 0;
					alert("처리 중 오류가 발생되었습니다.\nerror:"+error+"request:"+request+"status:"+status);
				}
			});
		}
		
		var duplProfEmpNoYn = true;
		function fn_CheckProfEmpNo(obj){
			if( $("#profEmpNo_2").val() == "" ){
				alert("의료진 사번을 입력해주세요.");
				$("#profEmpNo_2").focus();
				return false;
			}
			if( $("#profEmpNo_2").val() == "1" ){
				alert("인증완료");
				duplProfEmpNoYn = false;
			}else{
				alert("올바른 의료진 사번을 입력해주세요.");
			}
			/*
			$.ajax({
				type	 : "POST",
				url      : "/home/member/joinCheckProfEmpNo.do",
				data	 : {"profEmpNo":$("#profEmpNo_2").val()},
				dataType : "text",
				success  : function(rData ){
					onebtnchk = 0;
					if( rData == "OK" ){
						if( confirm("의료진 사번검증이 완료되었습니다.") ){
							duplProfEmpNoYn = false;
							$(obj).text("의료진사번 다시검색");
						}
					}else{
						alert("해당 의료진 사번으로 이미 회원가입정보가 존재합니다.");
						duplProfEmpNoYn = true;
						$(obj).text("사번 검증");
					}
				},
				error: function(request, status, error ){
					onebtnchk = 0;
					alert("처리 중 오류가 발생되었습니다.\nerror:"+error+"request:"+request+"status:"+status);
				}
			});*/
		}
		function fn_Regist(){
			if( $("#subName").length > 0 ){
				if( $("#subName").val() == "" ){
					alert("성명을 입력해 주세요.");
					$("#userNm").focus();
					return false;
				}
			}
			if( $("#userNm").val() == "" ){alert("성명을 입력해 주세요.");$("#userNm").focus();return false;}
			
			if( $("#birthDt1").val() == "" ){alert("생년월일 중 연도를 입력해 주세요.");$("#birthDt1").focus();return false;}
			if( $("#birthDt2").val() == "" ){alert("생년월일 중 월을 입력해 주세요.");$("#birthDt2").focus();return false;}
			if( $("#birthDt3").val() == "" ){alert("생년월일 중 일을 입력해 주세요.");$("#birthDt3").focus();return false;}
			
			//생년월일 유효성 검증
			
			var birthday = G_isBirthday($("#birthDt1").val()+"-"+($("#birthDt2").val() < 10 ? "0"+($("#birthDt2").val()*1) : $("#birthDt2").val())+"-"+($("#birthDt3").val() < 10 ? "0"+($("#birthDt3").val()*1) : $("#birthDt3").val()));
			var age = G_Util.ageCheck($("#birthDt1").val()+($("#birthDt2").val() < 10 ? "0"+($("#birthDt2").val()*1) : $("#birthDt2").val())+($("#birthDt3").val() < 10 ? "0"+($("#birthDt3").val()*1) : $("#birthDt3").val()), "1");
			
			
				var birthday = G_isBirthday($("#birthDt1").val()+"-"+$("#birthDt2").val()+"-"+$("#birthDt3").val());
				var age = G_Util.ageCheck($("#birthDt1").val()+$("#birthDt2").val()+$("#birthDt3").val(), "1");
			
			
			if( !birthday ){
				alert("생년월일 형식이 맞지 않습니다.\n다시 입력해 주세요.");
				$("#birthDt1").focus();
				return false;
			}
			
			if("Y" == 'N'){
				if( age > 14 ){
					alert("만 14세 미만 회원만 신청 가능합니다.\n생년월일을 확인해 주세요.");
					$("#birthDt1").focus();
					return false;
				}
			}
			if( $("#userId").val() == "" ){
				alert("아이디를 입력해 주세요.");
				$("#userId").focus();
				return false;
			}
			if( $("#userId").val().length < 6 ){
				alert("아이디는 6자리 이상 입력해 주세요.");
				$("#userId").focus();
				return false;
			}
			/*
			if( duplYn ){
				alert("아이디 중복검사를 진행해 주세요.");
				$("#userIdBtn").focus();
				return false;
			}
			*/
			if( $("input[id=userStat4]:checked").val() == "PROF" ){
				if( duplProfEmpNoYn ){
					alert("의료진 사번 검증을  진행해주세요.");
					$("#userProfNoBtn").focus();
					return false;
				}
			}
			/*
			if( $("#userPw").val() == "" ){
				alert("비밀번호를 입력해 주세요.");
				$("#userPw").focus();
				return false;
			}
			if( $("#userPwConfirm").val() == "" ){
				alert("비밀번호 확인을 입력해 주세요.");
				$("#userPwConfirm").focus();
				return false;
			}
			*/
			/*
			if( $("#userPw").val() != "" ){
				var limitStartCnt = 8;
				var limitEndCnt   = 20;
				var spePattern  = /[!@#$%^&*()_|<>?]/;
				var numPattern  = /[0-9]/g;
				var engPattern1 = /[a-z]/g;
				var engPattern2 = /[A-Z]/g;
				var pw   = $("#userPw").val();
				var num  = numPattern.test(pw);
				var eng1 = engPattern1.test(pw);
				var eng2 = engPattern2.test(pw);
				var spe  = spePattern.test(pw);
				//alert("num["+num+"]eng1["+eng1+"]eng2["+eng2+"]spe["+spe+"]");return false;
				//글자수 제한
				if( pw.length < limitStartCnt || pw.length > limitEndCnt ){
					alert("변경 비밀번호는 "+limitStartCnt+"자리에서 "+limitEndCnt+"자리 이하로 입력해 주세요.");
					$("#userPw").focus();
					return false;
				}
				//공백 제한
				if( pw.search(/\s/) != -1 ){
					alert("변경 비밀번호는 공백없이 입력해 주세요.");
					$("#userPw").focus();
					return false;
				}
				//영대문자,영소문자,숫자,특수문자 혼용
				var pwCnt = 0;
				if( num )	pwCnt++;
				if( eng1 )	pwCnt++;
				if( eng2 )	pwCnt++;
				if( spe )	pwCnt++;
				if( pwCnt < 3 ){
					alert("영대문자,영소문자,숫자,특수문자 중 3종류 이상을 조합하여 입력해 주세요.");
					$("#userPw").focus();
					return false;
				}
			}
			if( $("#userPwConfirm").val() != "" ){
				if( $("#userPw").val() != $("#userPwConfirm").val() ){
					alert("비밀번호와 비밀번호 확인이 일치하지 않습니다.");
					$("#userPwConfirm").focus();
					return false;
				}
			}
			*/
			if( $("input[name=userStat]:checked").length == 0 ){
				alert("회원구분을 선택해 주세요.");
				$("input[name=userStat]").eq(0).focus();
				return false;
			}
			if( $("input[name=userStat]:checked").val() == "EMPLOY" || $("input[name=userStat]:checked").val() == "NURSE" ){
				if( $("#empNo_1").val() == "" ){
					alert("사번을 입력해 주세요");
					$("input[name=userStat]").focus();
					return false;
				}
			}
			if( $("input[name=sex]:checked").length == 0 ){
				alert("성별을 선택해 주세요.");
				$("input[name=sex]").focus();
				return false;
			}
			if( $("#hpNo1").val() == "" || $("#hpNo2").val() == "" || $("#hpNo3").val() == "" ){
				alert("휴대전화를 입력해 주세요.");
				if( $("#hpNo1").val() == "" ){
					$("#hpNo1").focus();
				} else if( $("#hpNo2").val() == "" ){
					$("#hpNo2").focus();
				}else{
					$("#hpNo3").focus();
				}
				return false;
			}
			if( $("#hpNo2").val() != "" ){
				if( $("#hpNo2").val().length < 3 ){
					alert("휴대전화 중간번호를 3~4자리로 입력해 주세요.");
					$("#hpNo2").focus();
					return false;
				}
			}
			if( $("#hpNo3").val() != "" ){
				if( $("#hpNo3").val().length != 4 ){
					alert("휴대전화 마지막번호를 4자리로 입력해 주세요.");
					$("#hpNo3").focus();
					return false;
				}
			}
			if( $("#telNo1").val() == "" || $("#telNo2").val() == "" || $("#telNo3").val() == "" ){
				alert("전화번호를 입력해 주세요.");
				if( $("#telNo1").val() == "" ){
					$("#telNo1").focus();
				} else if( $("#telNo2").val() == "" ){
					$("#telNo2").focus();
				}else{
					$("#telNo3").focus();
				}
				return false;
			}
			if( $("#telNo1").val() != "" && $("#telNo2").val() != "" ){
				if( $("#telNo2").val().length < 3 ){
					alert("전화번호 중간번호를 3~4자리로 입력해 주세요.");
					$("#telNo2").focus();
					return false;
				}
			}
			if( $("#telNo1").val() != "" && $("#telNo2").val() != "" && $("#telNo3").val() != "" ){
				if( $("#telNo3").val().length != 4 ){
					alert("전화번호 마지막번호를 4자리로 입력해 주세요.");
					$("#telNo3").focus();
					return false;
				}
			}
			if( $("input:radio[name=userStat]:checked").val() != "PROF" ){
				if( $("#email1").val() == "" || $("#email2").val() == "" ){
					alert("이메일을 입력해 주세요.");
					if( $("#email1").val() == "" ){
						$("#email1").focus();
					}else{
						$("#email2").focus();
					}
					return false;
				}else{
					if( !fn_VerificationEmail($("#email1").val()+"@"+$("#email2").val()) ){
						alert("이메일주소가 유효하지 않습니다.");
						$("#email1").focus();
						return false;
					}
				}
			}else{
				if( $("#email1").val() == "" ){
					alert("이메일을 입력해 주세요.");
					$("#email1").focus();
					return false;
				}
			}
			/*
			if( $("#zipCd").val() == "" || $("#addr").val() == "" ){
				alert("주소를 검색해 주세요.");
				$("#zipCdBtn").focus();
				return false;
			}
			if( $("#detlAddr").val() == "" ){
				alert("상세 주소를 입력해 주세요.");
				$("#detlAddr").focus();
				return false;
			}
			*/
			if( $("#email1").val() != "" && $("#email2").val() != "" ){
				if( !fn_VerificationEmail($("#email1").val()+"@"+$("#email2").val()) ){
				alert("이메일주소가 유효하지 않습니다.");
				$("#email1").focus();
				return false;
				}
			}
			
			/*
			if( $("input[name=emailRcvYn]:checked").length == 0 ){
				alert("뉴스레터 수신을 선택해 주세요.");
				$("input[name=emailRcvYn]").eq(0).focus();
				return false;
			}
			*/
			$("#userId").val($("#userId").val().trim().replaceAll(" ",""));
			
			$("#birthDt").val($("#birthDt1").val()+"-"+($("#birthDt2").val() < 10 ? "0"+($("#birthDt2").val()*1) : $("#birthDt2").val())+"-"+($("#birthDt3").val() < 10 ? "0"+($("#birthDt3").val()*1) : $("#birthDt3").val()));
			
			$("#zipCd").val($("#zipCd").val().replaceAll(" ",""));
			if( $("#telNo1").val() != "" && $("#telNo2").val() != "" && $("#telNo3").val() != ""  ){
            	$("#telNo").val($("#telNo1").val()+"-"+$("#telNo2").val()+"-"+$("#telNo3").val());
            }
			$("#hpNo").val($("#hpNo1").val()+"-"+$("#hpNo2").val()+"-"+$("#hpNo3").val());
			if( $("input:radio[name=userStat]:checked").val() != "PROF" ){
				$("#email").val($("#email1").val().replaceAll(" ","")+"@"+$("#email2").val().replaceAll(" ",""));
			}else{
				$("#email").val($("#email1").val().replaceAll(" ","")+"@"+$("#email4").val().replaceAll(" ",""));
			}
			$("#puserAgrYn").val("Y");
			$("#profEmpNo").val( $("#empNo_1").val() == "" ? $("#profEmpNo_2").val() : $("#empNo_1").val() );
			
			$("#frm").attr("action","/home/member/joinProcEnd.do").submit();
			
		}
		$(document).ready(function(){
			$("input:checkbox[name=clone]").click(function(){
        		if( $("input[name=clone]").is(":checked")){
        			$("#telNo1").val($("#hpNo1").val());
    				$("#telNo2").val($("#hpNo2").val());
    				$("#telNo3").val($("#hpNo3").val());
        		}else{
        			$("#telNo1").val("");
        			$("#telNo2").val("");
        			$("#telNo3").val("");
        		}
        	});
			$(".eye").on("mousedown",function(){
				$(this).parent().find("input").prop("type","text");
			}).on('mouseup mouseleave',function(){
				$(this).parent().find("input").prop("type","password");
		});
		$("#userId").keyup(function(event){
			if( !(event.keyCode >=37 && event.keyCode<=40) ){
				var inputVal = $(this).val();
				$(this).val(inputVal.replace(/[^a-z0-9]/gi,''));
			}
		});
		$("input:radio[name=userStat]").click(function(){
			
			if( $(this).val() == "PROF" ){
				$("#fileShow").show();
				$("#fileShow2").hide();
				$("span.userStatDesc").hide();
				$("#email2").hide();
				$("#email3").hide();
				$("#email4").show();
			}else if( $(this).val() == "NURSE" || $(this).val() == "EMPLOY" ){
				$("#fileShow").hide();
				$("#fileShow2").show();
				$("span.userStatDesc").show();
				$("#email2").prop("readonly",true);
				$("#email2").val("cauhs.or.kr");
				$("#email2").show();
				$("#email3").hide();
				$("#email4").hide();
			}else{
				$("#empNo_1").val("");
				$("#profEmpNo_2").val("");
				$("#fileShow").hide();
				$("#fileShow2").hide();
				$("span.userStatDesc").hide();
				$("#email2").prop("readonly",false);
				$("#email2").val("");
				$("#email2").show();
				$("#email3").show();
				$("#email4").hide();
			}
		});
			
		});
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
		
	<form id="frm" name="frm" method="post" action="/home/member/joinProcEnd.do">
		<input type="hidden" id="accessTermsYn" name="accessTermsYn" value="Y">
		<input type="hidden" id="accessPerYn" name="accessPerYn" value="Y">
		<input type="hidden" id="loginType" name="loginType" value="S">
		<input type="hidden" id="userTp" name="userTp" value="Y">
		<input type="hidden" id="profEmpNo" name="profEmpNo" value="">
		
		<input type="hidden" id="birthDt" name="birthDt">
		
		<input type="hidden" id="authType" name="authType">
		<input type="hidden" id="telNo" name="telNo">
		<input type="hidden" id="hpNo" name="hpNo">
		<input type="hidden" id="email" name="email">
		<input type="hidden" id="authIvTp" name="authIvTp" value="">
		<input type="hidden" id="statusCd" name="statusCd">
		<section id="contents" class="contents_wrap">
			<div class="inner">
				<div class="signup_form_wrap">
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
						<div class="tit_area fix">
							<h4 class="con_tit" style="display:inline-block">
								
									
									회원정보
								
							</h4>
							<p class="bul_point1"><em class="m_color2">*</em>는 필수 입력 사항입니다.</p>
						</div>
						<div class="content_table_wrap">
							<table class="content_table">
								<colgroup>
									<col style="width:20%">
									<col style="width:80%">
								</colgroup>
								<tbody>
									
										
										
										
										
											<tr>
												<th><em class="m_color2">*</em> 성명</th>
												<td>
												
													<% 
													String userNm = request.getParameter("userNm");
													String authType = request.getParameter("authType");
													String userDi = request.getParameter("userDi");
													%>
													<input type="hidden" id="userNm" name="userNm" value="<%=userNm%>">
													<%=userNm%>
													

													<p>
														<!-- <input type="hidden" class="input_text" id="birthDt" name="birthDt"> <span class="bar"></span> -->
													</p>
												</td>
													
												
											</tr>
											<tr>
												<th><em class="m_color2">*</em> 생년월일<br>(ex : YYYY년 MM월 DD일)</th>
												<td>
													<p>
														<input type="text" class="input_text" id="birthDt1" name="birthDt1" style="max-width:100px" onkeyup="javascript:G_Util.inputNumber(this)" maxlength="4"> <span class="bar">년</span>
														<input type="text" class="input_text" id="birthDt2" name="birthDt2" style="max-width:100px" onkeyup="javascript:G_Util.inputNumber(this)" maxlength="2"> <span class="bar">월</span>
														<input type="text" class="input_text" id="birthDt3" name="birthDt3" style="max-width:100px" onkeyup="javascript:G_Util.inputNumber(this)" maxlength="2"> <span class="bar">일</span>
													</p>
												</td>
											</tr>
									
									
									<tr>
										<th><em class="m_color2">*</em> 아이디<br>(주민등록번호 앞자리)</th>
										<td>
											<input type="text" class="input_text" placeholder="" id="userId" name="userId" style="ime-mode:disabled;" maxlength="16" value="<%=authType%>" readonly>
											<!-- <a href="javascript:void(0);" id="userIdBtn" onclick="javascript:fn_CheckDupl(this); return false;" class="btn1_sty1">중복확인</a> -->
											<!-- <span class="bul_point1">(아이디는 6~16자 사이 영문,숫자만 가능)</span> -->
										</td>
									</tr>
									<tr>
										<th><em class="m_color2">*</em> 비밀번호<br>(주민등록번호 뒷자리)</th>
										<td>
											<input type="password" class="input_text" placeholder="비밀번호를 입력해 주세요." id="userPw" name="userPw" maxlength="20" value="<%=userDi%>" readonly>
											<button type="button" class="btn1_sty1 eye">비밀번호 보기</button>
										</td>
									</tr>
									<!-- 
									<tr>
										<th><em class="m_color2">*</em> 비밀번호확인</th>
										<td>
											<input type="password" class="input_text" id="userPwConfirm" name="userPwConfirm" placeholder="비밀번호를 한번더 입력해 주세요." maxlength="20">
											<button type="button" class="btn1_sty1 eye">비밀번호 보기</button>
											<p class="bul_point1 mt10">(비밀번호는 8~20자 사이 <span class="m_color2">영대문자, 영소문자, 숫자, 특수문자 중 3종류 이상의 조합</span>)<br>
												※ 특수문자 예 : @ # $ % ^ &amp; * ( ) _  |  ? </p>
										</td>
									</tr>
									 -->
									<tr>
										<th><em class="m_color2">*</em> 회원구분</th>
										<td>
											<label for="userStat1" class="ch">
												<input type="radio" id="userStat1" name="userStat" class="" value="NORMAL">
												<span>일반회원</span>
											</label>
											
												<label for="userStat2" class="ch">
													<input type="radio" id="userStat2" name="userStat" class="" value="EMPLOY">
													<span>병원직원</span>
												</label>
												<label for="userStat3" class="ch">
													<input type="radio" id="userStat3" name="userStat" class="" value="NULSE">
													<span>간호부</span>
												</label>
												<label for="userStat4" class="ch">
													<input type="radio" id="userStat4" name="userStat" class="" value="PROF">
													<span>의료진</span>
												</label>
												
											
											<span class="bul_point1 userStatDesc" style="display: none;">병원직원,간호부의 경우 이메일주소는 사내메일주소로 입력 부탁드립니다.</span>
										</td>
									</tr>
									<tr id="fileShow2" style="display: none;">
										<th><em class="m_color2">*</em>사번</th>
										<td>
											<input type="text" class="input_text" placeholder="" id="empNo_1" name="profEmpNo_1" style="ime-mode:disabled;" onkeyup="javascript:G_Util.inputNumber(this);" maxlength="16">
										</td>
									</tr>
									<tr id="fileShow" style="display: none;">
										<th><em class="m_color2">*</em> 의료진사번</th>
										<td>
											<input type="text" class="input_text" placeholder="" id="profEmpNo_2" name="profEmpNo_2" style="ime-mode:disabled;" onkeyup="javascript:G_Util.inputNumber(this);" maxlength="16">
											<a href="javascript:void(0);" id="userProfNoBtn" onclick="javascript:fn_CheckProfEmpNo(this); return false;" class="btn1_sty1">사번검증</a>
										</td>
									</tr>
									<tr>
										<th><em class="m_color2">*</em> 성별</th>
										<td>
											<label for="sex1" class="ch">
												<input type="radio" id="sex1" name="sex" class="" value="M">
												<span>남</span>
											</label>
											<label for="sex2" class="ch">
												<input type="radio" id="sex2" name="sex" class="" value="F">
												<span>여</span>
											</label>
										</td>
									</tr>
									<tr>
										<th><em class="m_color2">*</em> 휴대전화</th>
										<td>
											<select id="hpNo1" name="hpNo1" class="select_cell">
												<option value="">선택</option>
												<option value="010">010</option>
												<option value="011">011</option>
												<option value="016">016</option>
												<option value="017">017</option>
												<option value="018">018</option>
												<option value="019">019</option>
											</select>
											<span class="bar"> - </span>
											<input type="text" id="hpNo2" name="hpNo2" maxlength="4" onkeyup="javascript:G_Util.inputNumber(this);" class="input_cell">
											<span class="bar"> - </span>
											<input type="text" id="hpNo3" name="hpNo3" maxlength="4" onkeyup="javascript:G_Util.inputNumber(this);" class="input_cell">
										</td>
									</tr>
									<tr>
										<th><em class="m_color2">*</em> 전화번호</th>
										<td>
											<select id="telNo1" name="telNo1" class="select_cell">
												<option value="">선택</option>
												<option value="02">서울(02)</option>
												<option value="031">경기(031)</option>
												<option value="032">인천(032)</option>
												<option value="033">강원(033)</option>
												<option value="041">충남(041)</option>
												<option value="042">대전(042)</option>
												<option value="043">충북(043)</option>
												<option value="051">부산(051)</option>
												<option value="052">울산(052)</option>
												<option value="053">대구(053)</option>
												<option value="054">경북(054)</option>
												<option value="055">경남(055)</option>
												<option value="061">전남(061)</option>
												<option value="062">광주(062)</option>
												<option value="063">전북(063)</option>
												<option value="064">제주(064)</option>
												<option value="0502">KT(0502)</option>
												<option value="0505">데이콤(0505)</option>
												<option value="0506">하나로(0506)</option>
												<option value="070">인터넷(070)</option>
												<option value="010">010</option>
												<option value="011">011</option>
												<option value="016">016</option>
												<option value="017">017</option>
												<option value="018">018</option>
												<option value="019">019</option>
											</select>
											<span class="bar"> - </span>
											<input type="text" id="telNo2" name="telNo2" maxlength="4" onkeyup="javascript:G_Util.inputNumber(this);" class="input_cell">
											<span class="bar"> - </span>
											<input type="text" id="telNo3" name="telNo3" maxlength="4" onkeyup="javascript:G_Util.inputNumber(this);" class="input_cell">
											<span><input type="checkbox" id="clone" name="clone"><label for="clone">휴대전화번호와 전화번호가 동일시 체크해 주세요.</label></span>
										</td>
									</tr>
									<tr>
										<th><em class="m_color2">*</em> 이메일</th>
										<td>
											<input type="text" id="email1" name="email1" class="input_text" placeholder="이메일 앞주소" style="max-width:200px"> <em>@</em>
											<input type="text" id="email2" name="email2" class="input_text" placeholder="이메일 뒷주소" style="max-width: 200px; display: inline-block;">
											<select id="email3" name="email3" class="select_cell" onchange="javascript:fn_ChangeEmail($(this));" style="display: inline-block;">
												<option value="">직접입력</option>
												<option value="hotmail.com">hotmail.com</option>
												<option value="dreamwiz.com">dreamwiz.com</option>
												<option value="intizen.com">intizen.com</option>
												<option value="korea.com">korea.com</option>
												<option value="lycos.co.kr">lycos.co.kr</option>
												<option value="hanmail.net">hanmail.net</option>
												<option value="netian.com">netian.com</option>
												<option value="yahoo.co.kr">yahoo.co.kr</option>
												<option value="orgio.net">orgio.net</option>
												<option value="empal.com">empal.com</option>
												<option value="hanmir.com">hanmir.com</option>
												<option value="naver.com">naver.com</option>
												<option value="nate.com">nate.com</option>
											</select>
											<select id="email4" name="email4" class="select_cell" style="display: none;">
												<option value="cau.ac.kr">cau.ac.kr</option>
												<option value="cauhs.or.kr">cauhs.or.kr</option>
											</select>
										</td>
									</tr>
									<tr>
										<th>주소</th>
										<td>
											<p>
												<input type="text" id="zipCd" name="zipCd" class="input_text" style="max-width:120px;" readonly="readonly">
												<a href="javascript:void(0)" class="btn1_sty1" title="새 창 열림" id="zipCdBtn" onclick="javascript:fn_DaumPostcode();">우편번호 검색</a>
												<span class="bul_point1">인터넷 진료예약을 위해서는 주소 정보 입력이 필요합니다</span>
											</p>
											<p class="mt10">
												<input type="text" id="addr" name="addr" class="input_text" maxlength="100" readonly="readonly">
												<input type="text" id="detlAddr" name="detlAddr" class="input_text" placeholder="상세주소를 입력해 주세요." maxlength="100">
											</p>
										</td>
									</tr>
									<!-- 
									<tr>
										<th><em class="m_color2">*</em> 뉴스레터 수신</th>
										<td>
											<label for="emailRcvYn1" class="ch">
												<input type="radio" id="emailRcvYn1" name="emailRcvYn" value="Y" class="">
												<span>수신함</span>
											</label>
											<label for="emailRcvYn2" class="ch">
												<input type="radio" id="emailRcvYn2" name="emailRcvYn" value="N" class="">
												<span>수신안함 (중앙대학교의료원에서 제공하는 건강정보 소식을 수신하시겠습니까?)</span>
											</label>
										</td>
									</tr>
									 -->
								</tbody>
							</table>
						</div>
						<div class="btn_area">
							<a href="javascript:void(0);" onclick="javascript:fn_Regist();" class="btn_ty01_sty01"><span>가입하기</span></a>
							<a href="/home.do" class="btn_ty01_sty0"><span>취소</span></a>
						</div>
					</div>
				</div>
			</div>
		</section>
	<input type="hidden" id="headHspCd" name="headHspCd" value="G">
	</form>
	<!-- 로그인폼 끝 -->
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
		



	</div>
<!-- // wrap -->
<!-- Global site tag (gtag.js) - Google Analytics  -->
<script async="" src="https://www.googletagmanager.com/gtag/js?id=G-VC9QBBNCWM"></script>
<script>
 window.dataLayer = window.dataLayer || [];
 function gtag(){dataLayer.push(arguments);}
 gtag('js', new Date());

 gtag('config', 'G-VC9QBBNCWM');
</script>
<!-- Global site tag (gtag.js) - Google Analytics  -->
<script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script>
<script type="text/javascript">
if(!wcs_add) var wcs_add = {};
wcs_add["wa"] = "fab6e091590438";
if(window.wcs) {
wcs_do();
}
</script>

</body></html>