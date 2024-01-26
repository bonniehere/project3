<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="${path }/resources/css/styles.css">
<link rel="stylesheet" type="text/css"
	href="/yphl1/resources/css/styles.css">
<script type="text/javascript" src="${path }/resources/js/jquery.js"></script>
<script type="text/javascript" src="${path }/resources/js/scripts.js"></script>
<style type="text/css">
body {
	background-color: #f1eee5 !important;
	color: #324028;
}

div {
	display: block;
}

hr {
	width: 70%;
	margin-left: auto;
	margin-right: auto;
}

.button_box {
	text-align: center;
}

.btnGray60 {
	color: black;
	border: 1px solid #666666;
	height: 50px;
	border-radius: 5px;
	padding: 15px 28px;
	font-size: 14px;
	line-height: 16px;
	font-weight: 700;
	background-color: #222222;
	width: 350px;
}

.btnRegist {
	padding: 15px 0;
	padding-top: 12px;
	padding-right: 0px;
	padding-bottom: 15px;
	padding-left: 0px;
	margin-top: 3px;
}

.border {
	left: auto;
	height: 1px;
	position: absolute;
	width: 40%;
	top: 50%;
	line-height: 1.6;
}

.right {
	right: 0;
}

.txt_line {
	border-width: 0px;
	border-style: solid;
	position: relative;
	margin: 25px 0;
	text-align: center;
	width: 350px;
}

input[type="text"] {
	width: 100%;
	height: 30px;
}

.text-center {
	width: 350px;
}

#box {
	border: solid 1px black;
	width: 100%;
	height: 40px;
	/* line-height: 40px; */
	background-color: white;
}

#box:hover {
	border: solid 1px black;
	width: 100%;
	height: 40px;
	text-align: center;
	/* line-height: 40px; */
	color: black;
	background-color: #f5f3ed;
	cursor: pointer;
}

.err {
	color: red;
}
</style>
<script type="text/javascript">

/* 핸드폰번호 자동 하이픈 추가 */
const autoHyphen = (target) => {
	 target.value = target.value
	   .replace(/[^0-9]/g, '')
	   .replace(/^(\d{2,3})(\d{3,4})(\d{4})$/, `$1-$2-$3`);
	}

</script>
</head>
<c:set var="path" value="${pageContext.request.contextPath }"></c:set>
<body>
	<br />
	<br />
	<br />
	<br />
	<a href="javascript:window.history.back();">
		<button type="button" class="btn btn-outline-secondary mb-5">뒤로가기</button>
	</a>
	<div class="container mt-5">
		<div class="row">

			<div class="col-md-4"></div>
			<div class="col-md-4">
				<a href="javascript:window.history.back();">
					<button type="button" class="btn btn-outline-secondary mb-5">뒤로가기</button>
				</a>
				<div class="text-center">

					<img class="masthead-avatar"
						src="${path }/resources/images/main2.png" alt="..." width="210px"
						height="105px" />

					<div class="text-center">
						<a
							href="https://kauth.kakao.com/oauth/authorize?response_type=code&client_id=5f02f28c117d75ae2a0070d274b88bee&redirect_uri=http://localhost:8080/yphl1/joinForm.do">
							<img class="masthead-avatar"
							src="${path }/resources/images/kakao.png" alt="..." width="350px"
							height="50px" />
						</a>
					</div>
					<div class="txt_line">
						<div class="border"></div>
						또는
						<div class="border right"></div>
					</div>
					<form action="loginResult.do" method="post" name="frm"
						onsubmit="return chk()">
						<div class="mb-3">
							<input type="text" class="form-control" placeholder="이메일"
								name="m_email"> <input type="password"
								class="form-control" placeholder="비밀번호" name="m_password">
							<div class="form-check justify-content-start">
								<label class="form-check-label" for="flexCheckDefault">
									<input class="form-check-input" type="checkbox" value=""
									checked> 로그인상태유지
								</label>
							</div>
							<br />
							<div class="button_box">
								<input type="submit" class="btnGray60 btnRegist" id="box"
									value="로그인">
							</div>

							<nav aria-label="breadcrumb">
								<ol class="breadcrumb justify-content-center mb-5">
									<li class="breadcrumb-item">
										<div OnClick="location.href='joinForm.do'"
											style="cursor: pointer">회원가입</div>
									</li>

									<li class="breadcrumb-item"><span style="cursor: pointer"
										data-bs-toggle="modal" data-bs-target="#staticBackdrop">아이디
											비밀번호 찾기</span></li>


								</ol>
							</nav>

						</div>
					</form>
				</div>
			</div>
		</div>
		<div class="col col-md-4"></div>

	</div>

	<!-- Modal -->
	<div class="modal fade" id="staticBackdrop" data-bs-keyboard="false"
		tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h1 class="modal-title fs-5" id="staticBackdropLabel">아이디 /
						비밀번호 찾기</h1>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">

					<ul class="nav nav-tabs justify-content-center" id="myTab"
						role="tablist">
						<li class="nav-item" role="presentation">
							<button class="nav-link active" id="home-tab"
								data-bs-toggle="tab" data-bs-target="#home-tab-pane"
								type="button" role="tab" aria-controls="home-tab-pane"
								aria-selected="true">아이디 찾기</button>
						</li>
						<li class="nav-item" role="presentation">
							<button class="nav-link" id="profile-tab" data-bs-toggle="tab"
								data-bs-target="#profile-tab-pane" type="button" role="tab"
								aria-controls="profile-tab-pane" aria-selected="false">비밀번호
								찾기</button>
						</li>
					</ul>
					<div class="tab-content" id="myTabContent">
						<div class="tab-pane fade show active" id="home-tab-pane"
							role="tabpanel" aria-labelledby="home-tab" tabindex="0">

							<form action="findIdResult.do" method="post">
								<div class="mt-3">
									가입한 핸드폰 번호와 이름으로 찾기
									<div class="input-group flex-nowrap">
										<input type="text" class="" oninput="autoHyphen(this)"
											aria-label="Username" aria-describedby="addon-wrapping"
											name="m_tel">
									</div>
								</div>
								<div class="mt-3">
									이름
									<div class="input-group flex-nowrap">
										<input type="text" class="" aria-label="Username"
											aria-describedby="addon-wrapping" name="m_name">
									</div>
								</div>
								<input class="mt-3" id="box" type="submit" value="아이디 찾기">
							</form>

						</div>
						<form action="findPwResult.do" method="post">
							<br />
							<div class="tab-pane fade" id="profile-tab-pane" role="tabpanel"
								aria-labelledby="profile-tab" tabindex="0">
								가입한 이메일로 찾기
								<div class="input-group flex-nowrap">
									<input type="text" class="" aria-label="Username"
										aria-describedby="addon-wrapping" name="m_email">
								</div>
								<input class="mt-3" id="box" type="submit" value="비밀번호 찾기">
							</div>
						</form>
					</div>

				</div>
			</div>
		</div>
	</div>
</body>
</html>