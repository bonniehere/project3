<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="${path }/resources/js/jquery.js"></script>
<script type="text/javascript" src="${path }/resources/js/scripts.js"></script>
<c:set var="path" value="${pageContext.request.contextPath }"></c:set>
<style type="text/css">
#join {
	color: #324028;
}

hr {
	width: 100%;
	margin-left: auto;
	margin-right: auto;
}

#err {
	color: blue;
}

.err {
	color: blue;
}

#err2 {
	color: gray;
}
#err3 {
	color: red !important;
}

#over {
	border: 1px solid gray;
	border-radius: 10px 10px;
	resize: none;
	overflow: auto;
}

input {
	width: 100%;
	height: 35px;
	background-color: white;
	color: black;
	border: 1px solid gray;
	padding: 0 10px;
}

#box2 {
	margin-top: -20px;
}

#img_box2 {
	margin-top: 40px;
}

.thumbnail {
	border: none;
	width: 150px;
	padding: 0;
	border-radius: 50%;
	width: 85px;
	height: 85px;
}

.filebox label {
	height: 38px;
}

.thumb {
	border: none;
	width: 100%;;
	margin-top: 0;
	margin-bottom: 8px;
}

#box2 {
	border: solid 1px black;
	width: 100%;
	height: 40px;
	line-height: 40px;
	background-color: white;
}

#box2:hover {
	border: solid 1px black;
	width: 100%;
	height: 40px;
	text-align: center;
	line-height: 40px;
	color: black;
	background-color: #f5f3ed;
	cursor: pointer;
}

.alert {
	height: 20px;
	padding: 0px;
	margin-bottom: 0px;
	border: none;
	border-radius: 4px;
	background-color: none;
}

/* .inputline1 {
	border: none;
	outline: 0;
	width: 65%;
} */

/* .inputline2 {
	border: none;
	outline: 0;
	width: 50%;
} */

.inputline3 {
	border: none;
	outline: 0;
	width: 35%;
}

/* #keyShow {
	position: absolute;
	display: none;
	margin-right: 10px;
	margin-top: 4px;
	font-size: 15px;
	cursor: pointer;
	color: grey;
} */
</style>
<script type="text/javascript">

//안보이게 하기
$(function() {
	$("#emailChk").hide();
	$("#emailChk_success").hide();
	$("#emailChk_fail").hide();
	
});
//파일 업로드 미리보기
function preView(fis) {  
	   var str = fis.value;
      $('.thumbnail').text(fis.value.substring(str.lastIndexOf("\\")+1));
      // 이미지를 변경한다.
      var reader = new FileReader();
	   reader.onload = function(e){  
	   $('.thumbnail').attr('src',e.target.result);
     }
  	 reader.readAsDataURL(fis.files[0]);
}  

//파일 이름 
$(document).ready( function(){ 
	var fileTarget = $('.filebox .upload-hidden'); 
	
	fileTarget.on('change', function(){ // 값이 변경되면 
		if(window.FileReader){ // modern browser 
			var filename = $(this)[0].files[0].name;
		} 
		else { // old IE 
			var filename = $(this).val().split('/').pop().split('\\').pop(); // 파일명만 추출 
		} 
	// 추출한 파일명 삽입 
	$(this).siblings('.upload-name').val(filename);
	}); 
});

//비밀번호 유효성 검사
	$(function () {
// 1. 비밀번호와 비밀번호  일치 확인 ajax
	$("#alert-success").hide();
	$("#alert-danger").hide();
	$("#pw_confirm").keyup(function() {
		var MB_pw = $("#pw").val();
		var MB_pw_confirm = $("#pw_confirm").val();
		if (MB_pw != "" || MB_pw_confirm != "") {
			if (MB_pw == MB_pw_confirm) {
				$("#alert-success").show();
				$("#alert-danger").hide();
				/* $("#submit").attr('disabled', false); */
			} else {
				$("#alert-success").hide();
				$("#alert-danger").show();
				/* $("#submit").attr('disabled', true); */
			}
	    }
   });

//2. 비밀번호 형태 유효성 검사
	    $("#alert1").hide();  
		$("#alert2").hide();
		$("#alert3").hide();
		$("#alert4").hide();

	$("#pw").keyup(function() {  
	 	var pw = $("#pw").val(); 
     	var num = pw.search(/[0-9]/g);      //숫자 기입
	 	var eng = pw.search(/[a-zA-Z]/ig);  //영문자 기입
	 	var tab = pw.search(/[/\s/]/ig);    //공백

	 	if (tab != -1) {
	    	 $("#alert1").hide();
			 $("#alert2").toggle();
			 $("#alert3").hide();
			 $("#alert4").hide();
			 /* $("#submit").attr('disabled', true); */
		 } else {
		 	 if (pw.length < 4 ) {  
				$("#alert1").toggle();
				$("#alert2").hide();
				$("#alert3").hide();
			    $("#alert4").hide();
			   /*  $("#submit").attr('disabled', true);  */
   			 } else if (num >= 0 && eng >= 0){
    			$(".alert").hide(); 
    			/* $("#submit").attr('disabled', false); */
 	  		 } else if (num < 0 && eng >= 0  ) {    
			    $("#alert1").hide();
		        $("#alert2").hide();
		  	    $("#alert3").toggle();    
		   	    $("#alert4").hide();
		   	    /* $("#submit").attr('disabled', true); */
	   		 } else if ( num >= 0 && eng < 0  ){  
			    $("#alert1").hide();
				$("#alert2").hide();
				$("#alert3").hide();
				$("#alert4").toggle();
				/* $("#submit").attr('disabled', true); */
		 	 }
        } 
	  });	

//비밀번호 보이거나 감추는 선택 기능

		$("#pw").on("keyup", function(event) {
			if (event.keyCode === 13) {
			    event.preventDefault();
			    $("#submit").triggerHandler("click");
			} else {
				if (this.value) {
					$("#keyShow").css("display", "inline-block");
				} else {
					$("#keyShow").hide();
			}
		  }
	    }).focus();
 	
	    $("#keyShow").on("click", function() {
	  		if ($("#pw").attr("type") == "password") {
				$("#pw").attr("type", "text");
				$($(this)).text("비밀번호 숨기기");
			} else {
				$("#pw").attr("type", "password");
				$($(this)).text("비밀번호 보이기");
			}
	 	});	
  	 	
});	

	//이메일 유효성 검사 및 중복 체크
	function idChk() {
		// 이메일 유효성 검사
		var reg_id = /^([0-9a-zA-Z_\.-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/;
		if(!frm.m_email.value) { // 이메일 입력창에 아무것도 작성안하고 체크 눌럿을 때
			alert("이메일을 입력하세요")
			frm.m_email.focus();
			frm.m_email.value="";
			return false;
		} else { 								// 작성한 후 체크 줄렀을때
			if(!reg_id.test(frm.m_email.value)){ // 올바른 이메일 형식이 아닐때
				alert("올바른 이메일 형식이 아닙니다.");
				frm.m_email.focus();
				return false;
			}  else { 							// 올바른 이메일 형식이면 중복 체크를 함
				$.post('idChk.do', 'm_email='+frm.m_email.value, function(data) { 
					$('#idChk').html(data);
					if (data == '사용가능한 이메일 입니다.') { // 중복 체크했는데 사용 가능한 아이디일때 메일을 보냄
						$("#emailChk").show();
						$.post("mailResult.do", "m_email="+frm.m_email.value, function(data2){
							$("#emailChk").keyup(function() {
							if (data2 == frm.emailChk.value) {
								$("#emailChk_success").show();
								$("#emailChk_fail").hide();
								 $("#submit").attr('disabled', false); 
							
							} else {
								$("#emailChk_success").hide();
								$("#emailChk_fail").show();
								 $("#submit").attr('disabled', true); 
															}
							});
						});
					} else {
						$("#submit").attr('disabled', true);
					} 
			    });	
		    } 
		}
	}
	
	/* 핸드폰번호 자동 하이픈 추가 */
	const autoHyphen = (target) => {
		 target.value = target.value
		   .replace(/[^0-9]/g, '')
		   .replace(/^(\d{2,3})(\d{3,4})(\d{4})$/, `$1-$2-$3`);
		}	

</script>
</head>
<body>
	<div class="container-md mt-5 mb-5">
		<p></p>
		<p></p>
		<p></p>
		<p></p>
		<p></p>
		<p></p>
		<br /> <br /> <br /> <br /> <br />
		<div class="row">

			<div class="col-md-4"></div>
			<div class="col-md-4">
				<h4 class="mt-5 text-start" id="join">윤식단 회원가입</h4>
				<hr>
				<form action="joinResult.do" method="post"
					enctype="multipart/form-data" name="frm" onsubmit="return chk()">
					<input type="hidden" name="coupon_type" value="회원가입 쿠폰">
					<input type="hidden" name="coupon_use " value="n">
					<input type="hidden" name="coupon_status" value="사용가능">
					<input type="hidden" name="use_price" value="10000">
					
					<div class="mb-3">
						<div class="text-center" id="img_box">
							<c:if test="${empty member.m_img}">
								<img alt="" src="${path }/resources/images/profile.png"
									class="thumbnail">
							</c:if>
							<c:if test="${not empty member.m_img}">
								<img alt="" src="${path }/resources/upload/${member.m_img}"
									class="thumbnail">
							</c:if>
							<div class="filebox">
								<!-- 그림있는 곳에 커서가 가면 메세지 나옴 -->
								<label for="ex_filename" data-toggle="tooltip"
									data-placement="center" title="이미지를 선택하세요" id="nameA"><strong>프로필
										사진 업로드</strong></label> <input type="file" name="file" id="ex_filename"
									class="upload-hidden" style="display: none;"
									onchange="preView(this);">
							</div>
						</div>

						<p>
							<br /> 
							
						<input type="email" class="" placeholder="이메일" id="m_email"
								name="m_email" required="required" autofocus="autofocus">
						<input type="button" onclick="idChk()" value="이메일 인증"
								class="btn btn-outline-success">
						<div>
						<div id="idChk" class="err"></div>
						<div id="emailChk">
							<input type="text" name="emailChk" id="emailChk" 
								class="inputline1" placeholder="인증번호 입력"> 
						</div>
						<div id="emailChk_success" class="err">인증번호가 일치합니다.</div>
						<div id="emailChk_fail" class="err3">인증번호가 일치하지 않습니다.</div>
						<div id="emailChkFalse" class="err"></div>
						</div>
						<input type="password" class="inputline2" placeholder="비밀번호"
							name="m_password" id="pw" maxlength="12" autocomplete="false"
							placeholder="영문자, 숫자, 4자 이상">

						<div class="alert alert-danger" id="alert1">"숫자와 영문자를 포함해서
							4자리 이상 "</div>
						<div class="alert alert-danger" id="alert2">"공백 없이 입력"</div>
						<div class="alert alert-danger" id="alert3">"숫자 필수 포함"</div>
						<div class="alert alert-danger" id="alert4">"영문자 필수 포함"</div>

						<input type="button" id="keyShow" value="비밀번호 보기"
							class="btn btn-outline-success"> <input type="password"
							class="inputline1" placeholder="비밀번호 확인" name="m_password2"
							id="pw_confirm" required="required">
						<div class="alert alert-success" id="alert-success">비밀번호가
							일치합니다.</div>

						<div class="alert alert-danger" id="alert-danger">비밀번호가 일치하지
							않습니다.</div>

						<p>
							이름<span class="err">ㅇ</span> <input type="text" class=""
								placeholder="이름을(를) 입력하세요." name="m_name" required="required">
						</p>
						<p>
							연락처<span class="err">ㅇ</span> <input type="text"
								oninput="autoHyphen(this)" maxlength="13" placeholder="연락처"
								name="m_tel" required="required">
						</p>
						<p>
							주소<span class="err">ㅇ</span> <input type="text" class=""
								placeholder="주소" name="m_addr" id="address_kakao"
								required="required"> <input type="text" class=""
								placeholder="상세주소" name="m_addr_detail"
								id="sample6_detailAddress" required="required">
						</p>
						<p>
							생년월일<span class="err">ㅇ</span> <input type="date" class=""
								name="m_birth" required="required">
						</p>


						<div class="d-grid gap-2">

							<input class="mt-3" id="box2" type="submit" value="가입하기">
						</div>
					</div>
				</form>

			</div>
			<div class="col col-md-4"></div>

		</div>

	</div>
</body>

<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
window.onload = function(){
    document.getElementById("address_kakao").addEventListener("click", function(){ //주소입력칸을 클릭하면
        //카카오 지도 발생
        new daum.Postcode({
            oncomplete: function(data) { //선택시 입력값 세팅
                document.getElementById("address_kakao").value = data.address; // 주소 넣기
                document.querySelector("input[name=m_addr_detail]").focus(); //상세입력 포커싱
            }
        }).open();
    });
}
</script>
</html>