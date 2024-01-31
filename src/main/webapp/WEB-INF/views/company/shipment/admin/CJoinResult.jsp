<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 ID 부여</title>
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
	<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
	<script src="https://html2canvas.hertzen.com/dist/html2canvas.min.js"></script>
	
<style>
        body {
            background-color: #87CEEB; /* 전체 페이지에 대한 하늘색 배경색 */
            font-family: '나눔고딕', sans-serif; /* 공통 sans-serif 폰트 사용 */
            color: #333; /* 텍스트 색상 */
        }

        .con_sec {
            background-color: #FFF; /* 컨테이너 섹션에 대한 흰색 배경 */
            padding: 20px;
            margin: 20px;
            border-radius: 10px; /* 컨테이너에 둥근 모서리 추가 */
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* 깊이를 나타내기 위한 약한 그림자 추가 */
        }

        .con_tit {
            color: #4682B4; /* 제목에 대한 스틸 블루(청청한 파란색) 색상 */
        }

        .content_table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        .content_table th,
        .content_table td {
            border: 1px solid #87CEEB; /* 테이블 셀에 대한 하늘색 테두리 */
            padding: 10px;
            text-align: left;
        }

        .btn_area {
            margin-top: 20px;
            text-align: center;
        }

        .btn_ty01_sty01,
        .btn_ty01_sty0 {
            display: inline-block;
            padding: 10px 20px;
            background-color: #4682B4; /* 버튼에 대한 스틸 블루(청청한 파란색) 배경색 */
            color: #FFF; /* 버튼 텍스트에 대한 흰색 색상 */
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s ease-in-out;
        }

        .btn_ty01_sty01:hover,
        .btn_ty01_sty0:hover {
            background-color: #357EC7; /* 버튼 호버 시 더 어두운 색상으로 변경 */
        }
        .input_text {
            padding: 8px;
            border: 1px solid #87CEEB;
            border-radius: 5px;
            margin-bottom: 5px;
            height:30px;
        }

        /* 텍스트 입력 필드에 대한 추가 스타일 */
        #userNm,
        #birthDt1,
        #birthDt2,
        #birthDt3,
        #m_userId,
        #m_userPw,
        #hpNo2,
        #hpNo3,
        #telNo2,
        #telNo3,
        #email1,
        #email2,
        #email4,
        #zipCd,
        #addr,
        #detladdr {
            width: 100%;
            max-width: 500px; /* 입력 필드의 최대 너비 설정 */
        }

        /* 입력 필드가 비활성화된 경우의 스타일 */
        .input_text:disabled {
            background-color: #f0f0f0; /* 비활성화된 입력 필드에 회색 배경색 적용 */
            color: #666; /* 비활성화된 텍스트 색상 */
        }

        /* '비밀번호 보기' 버튼 스타일 */
        .eye {
            background-color: #4682B4;
            color: #FFF;
            border: none;
            padding: 8px 10px;
            border-radius: 5px;
            cursor: pointer;
        }
        <!-- -->
         body, html {
        height: 100%;
        margin: 0;
        padding: 0;
    }

    .con_sec {
        min-height: 100%;
        display: flex;
        flex-direction: column;
        justify-content: space-between;
    }

    .content_table_wrap {
        flex-grow: 1;
    }

    .btn_area {
        margin-top: 20px;
        text-align: center;
        flex-shrink: 0;
    }

    .btn_ty01_sty01, .btn_ty01_sty0 {
        display: inline-block;
        padding: 10px 20px;
        background-color: #4682B4;
        color: #FFF;
        text-decoration: none;
        border-radius: 5px;
        transition: background-color 0.3s ease-in-out;
    }

    .btn_ty01_sty01:hover, .btn_ty01_sty0:hover {
        background-color: #357EC7;
    }
    </style>
    <script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script><script charset="UTF-8" type="text/javascript" src="//t1.daumcdn.net/postcode/api/core/221018/1666013742754/221018.js"></script>
<script type="text/javascript">
function takeScreenshotAndSaveAsImage() {
	html2canvas(document.body).then(function(canvas) {
        // 캔버스에서 이미지 데이터를 얻기
        var imageData = canvas.toDataURL("image/jpeg");
		var name = $("#name").val();
		var hspNm = $("#hspNm").val();
        // 가상의 링크를 생성하고 다운로드
        var link = document.createElement('a');
        link.href = imageData;
        link.download = hspNm+'_'+name+'.jpg';
        link.click();
    });
}
function emailGogo(){
	var m_userId = $("#userId").val();
	
	$.ajax({
        type: "GET",
        url: "/company/CjoinEmail.do",
        data: { m_userId: m_userId },
        success: function(response) {
        	alert("메일 전송 완료");
        },
        error: function(error) {
        	alert("메일 전송 실패");
        }
    });
}
</script>
</head>
<body>
<form id="frm" name="frm" method="post" action="/company/CJoinResult.do">
<div class="con_sec">
						<div class="tit_area fix">
							<h4 class="con_tit" style="display:inline-block">
								
									
									회원정보
								
							</h4>
							
								
									
									
									
								
							
							<p class="bul_point1"><em class="m_color2"></em></p>
						</div>
						<div class="content_table_wrap">
							<table class="content_table">
								<colgroup>
									<col style="width:20%">
									<col style="width:80%">
								</colgroup>
								<tbody>
								
										
								
										<tr>
										<th><em class="m_color2"></em>이메일</th>
										<td>
											<input type="text" id="email" name="email" class="input_text" placeholder="" style="max-width:200px" value="${cmember.m_email}">
											
											
											
										</td>
									</tr>
										<tr>
										<th><em class="m_color2"></em>아이디<br></th>
										<td>
											<input type="text" class="input_text" placeholder="" id="userId" name="m_userId" style="ime-mode:disabled;" maxlength="16" value="${cmember.m_userId}">
											<!-- <a href="javascript:void(0);" id="m_userIdBtn" onclick="javascript:fn_CheckDupl(this); return false;" class="btn1_sty1">중복확인</a> -->
											<!-- <span class="bul_point1">(아이디는 6~16자 사이 영문,숫자만 가능)</span> -->
										</td>
									</tr>
									<tr>
										<th><em class="m_color2"></em>초기 비밀번호</th>
										<td>
											<input type="text" class="input_text" placeholder="자동부여 버튼을 눌러주세요." id="userPw" name="m_userPw" maxlength="20" value="${cmember.m_userPw}">
											
										</td>
									</tr>
										
										
										
											<tr>
												<th><em class="m_color2"></em> 병원명<br></th>
												<td>
												
													
													<input type="text" class="input_text" id="hspNm" name="m_hspNm" value="${cmember.m_hspNm}">
													
													

													
												</td>
													
												
											</tr>
											
											<tr>
												<th><em class="m_color2"></em> 담당자 이름<br></th>
												<td>
												
													
													<input type="text" class="input_text" id="name" name="m_name" value="${cmember.m_name}">
													
													

												
												</td>
													
												
											</tr>
									
									
									
									
									
									<tr>
										<th><em class="m_color2"></em> 담당자 휴대전화번호</th>
										<td>
											<input type="text" class="input_text" id="phone" name="m_phone" readonly value="${cmember.m_phone}">
											
										</td>
									</tr>
									<tr>
										<th><em class="m_color2"></em>병원 전화번호</th>
										<td>
											<input type="text" class="input_text" id="tel" name="m_tel" value="${cmember.m_tel}">
										</td>
									</tr>
									
									<tr>
										<th>주소</th>
										<td>
											<input type="text" class="input_text" id="zipCd" name="m_zipCd" value="${cmember.m_zipCd}">
											<input type="text" class="input_text" id="addr" name="m_addr" value="${cmember.m_addr}">
											<input type="text" class="input_text" id="addr_detail" name="m_addr_detail" value="${cmember.m_addr_detail}">
										</td>
									</tr>
									
								</tbody>
							</table>
						</div>
						<div class="btn_area">
							<a href="javascript:void(0);" onclick="javascript:takeScreenshotAndSaveAsImage();" class="btn_ty01_sty01"><span>이미지 저장</span></a>
							<a href="javascript:void(0);" onclick="emailGogo();" class="btn_ty01_sty01"><span>이메일 전송</span></a>
							<a href="adminPage.do" class="btn_ty01_sty0"><span>홈으로</span></a>
						</div>
					</div>
</form>
</body>
</html>