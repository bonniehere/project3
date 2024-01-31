<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>C market</title>
<link type="text/css" rel="stylesheet" href="../../resources/css/homelog.css">
</head>
<body>
 
 
	<script type="text/javascript" src="../../../../resources/js/jquery-1.11.0.min.js"></script>
	<script type="text/javascript" src="../../../../resources/js/jquery-ui.min.js"></script>
	<script type="text/javascript" src="../../../../resources/js/CommonUtil.c3r-custom.js"></script>

<script type="text/javascript">
//로그인
$(document).ready(function(){
	alert("탈퇴한 회원 입니다.");
})
function fn_CheckForm(){
	if( $("#userId").val() == "" ){
		alert("아이디를 입력해 주세요");
		$("#userId").focus();
		return false;
	}
	if( $("#userPw").val() == "" ){
		alert("비밀번호를 입력해 주세요");
		$("#userPw").focus();
		return false;
	}
	G_Util.newFormSubmit({
		"action" : "/company/homelog.do",
		"param"  : {
			"m_userId" : $("#userId").val().trim(),
			"m_userPw" : $("#userPw").val()
		}
	});
}
</script>






<!-- Section 1 -  Login  / ///////////-->
<div class="centering-container">
  <div class="flex-container">
    <div class="form-container">
      <h2>CMarket</h2>
      <form id="loginForm" name="frm" method="POST">
        <div class="form-row">
          <input id="userId" type="text" placeholder="" required />
          <span class="placeholder">Username</span>
        </div>
        <div class="form-row">
          <input id="userPw" type="password" placeholder="" required />
          <span class="placeholder">Password</span>
        </div>
      </form>
       
        <input type="button" class="btn btn-hollow btn-hover" value="Login" href="javascript:void(0);" onclick="javascript:fn_CheckForm();">
       <!--  <button id="login" class="btn btn-solid btn-hover" type="submit" value="Submit" form="loginform" onclick="javascript:fn_CheckForm(); return false;">Sign In</button>  -->
       <!-- 
       <div class="checkbox-container">
        <input class="styled-checkbox" id="remember" type="checkbox" value="Remenber me">
        <label for="remember">Remember me</label>
      </div>
       --> 
    </div>
  </div>
</div>


</body>
</html>