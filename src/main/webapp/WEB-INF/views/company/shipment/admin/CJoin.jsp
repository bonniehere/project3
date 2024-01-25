<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        }

        /* 텍스트 입력 필드에 대한 추가 스타일 */
        #userNm,
        #birthDt1,
        #birthDt2,
        #birthDt3,
        #userId,
        #userPw,
        #hpNo2,
        #hpNo3,
        #telNo2,
        #telNo3,
        #email1,
        #email2,
        #email4,
        #zipCd,
        #addr,
        #detlAddr {
            width: 100%;
            max-width: 300px; /* 입력 필드의 최대 너비 설정 */
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
    </style>
    <script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script><script charset="UTF-8" type="text/javascript" src="//t1.daumcdn.net/postcode/api/core/221018/1666013742754/221018.js"></script>
<script type="text/javascript">
		
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
		
		function fn_Regist(){
			if( $("input[name=userStat]:checked").length == 0 ){
				alert("회원구분을 선택해 주세요.");
				$("input[name=userStat]").eq(0).focus();
				return false;
			}
			
			if( $("#email1").val() != "" && $("#email2").val() != "" ){
				if( !fn_VerificationEmail($("#email1").val()+"@"+$("#email2").val()) ){
				alert("이메일주소가 유효하지 않습니다.");
				$("#email1").focus();
				return false;
				}
			}
			$("#userId").val($("#userId").val().trim().replaceAll(" ",""));
			if( $("#subName").length > 0 ){
				if( $("#subName").val() == "" ){
					alert("병원명을 입력해 주세요.");
					$("#userNm").focus();
					return false;
				}
			}
			if( $("#userNm").val() == "" ){alert("병원명을 입력해 주세요.");$("#userNm").focus();return false;}
			
			
			
			
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
			
			$("#profEmpNo").val( $("#empNo_1").val() == "" ? $("#profEmpNo_2").val() : $("#empNo_1").val() );
			
			$("#frm").attr("action","/company/CJoinResult.do").submit();
			
		}
		
		function generateRandomPassword() {
	            // 8자리의 랜덤 숫자 생성
	            const password = Math.floor(10000000 + Math.random() * 90000000).toString();
	            
	            // 생성된 패스워드를 input 필드에 삽입
	            document.getElementById("userPw").value = password;
	     }
		 
		//다음 메일 호출
		function fn_DaumPostcode(){
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
		
	</script>
</head>
<body>
<div class="con_sec">
						<div class="tit_area fix">
							<h4 class="con_tit" style="display:inline-block">
								
									
									회원정보
								
							</h4>
							<form id="frm" name="frm" method="post" action="/home/member/joinProcEnd.do">
								<input type="hidden" id="accessTermsYn" name="accessTermsYn" value="Y">
								<input type="hidden" id="accessPerYn" name="accessPerYn" value="Y">
								<input type="hidden" id="loginType" name="loginType" value="S">
								<input type="hidden" id="userTp" name="userTp" value="Y">
								<input type="hidden" id="profEmpNo" name="profEmpNo" value="">
								
								<input type="hidden" id="authType" name="authType">
								<input type="hidden" id="telNo" name="telNo">
								<input type="hidden" id="hpNo" name="hpNo">
								<input type="hidden" id="email" name="email">
								<input type="hidden" id="authIvTp" name="authIvTp" value="">
								<input type="hidden" id="statusCd" name="statusCd">
							</form>
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
										<th><em class="m_color2"></em> 회원구분</th>
										<td>
											<label for="userStat1" class="ch">
												<input type="radio" id="userStat1" name="userStat" class="" value="NORMAL">
												<span>일반회원</span>
											</label>
											
												<label for="userStat2" class="ch">
													<input type="radio" id="userStat2" name="userStat" class="" value="VIP">
													<span>우수회원</span>
												</label>
												<label for="userStat3" class="ch">
													<input type="radio" id="userStat3" name="userStat" class="" value="VVIP">
													<span>VIP</span>
												</label>
												
												
											
											<span class="bul_point1 userStatDesc" style="display: none;">병원직원,간호부의 경우 이메일주소는 사내메일주소로 입력 부탁드립니다.</span>
										</td>
									</tr>
								
										<tr>
										<th><em class="m_color2"></em>담당자 이메일</th>
										<td>
											<input type="text" id="email1" name="email1" class="input_text" placeholder="이메일 앞주소" style="max-width:200px"> <em>@</em>
											<input type="text" id="email2" name="email2" class="input_text" placeholder="이메일 뒷주소" style="max-width: 200px; display: inline-block;">
											<select id="email3" name="email3" class="input_text" onchange="javascript:fn_ChangeEmail($(this));" style="display: inline-block;">
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
										<th><em class="m_color2"></em>아이디 부여<br>(ex : CenterhspG001)</th>
										<td>
											<input type="text" class="input_text" placeholder="" id="userId" name="userId" style="ime-mode:disabled;" maxlength="16">
											<!-- <a href="javascript:void(0);" id="userIdBtn" onclick="javascript:fn_CheckDupl(this); return false;" class="btn1_sty1">중복확인</a> -->
											<!-- <span class="bul_point1">(아이디는 6~16자 사이 영문,숫자만 가능)</span> -->
										</td>
									</tr>
									<tr>
										<th><em class="m_color2"></em> 비밀번호 부여</th>
										<td>
											<input type="text" class="input_text" placeholder="자동부여 버튼을 눌러주세요." id="userPw" name="userPw" maxlength="20">
											<button type="button" class="btn1_sty1 eye" href="javascript:void(0);" onclick="javascript:generateRandomPassword()">자동부여</button>
										</td>
									</tr>
										
										
										
											<tr>
												<th><em class="m_color2"></em> 병원명<br>(ex : 중앙대학교병원 광명)</th>
												<td>
												
													
													<input type="text" class="input_text" id="userNm" name="userNm">
													
													

													<p>
														<!-- <input type="hidden" class="input_text" id="birthDt" name="birthDt"> <span class="bar"></span> -->
													</p>
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
										<th><em class="m_color2"></em> 담당자 휴대전화번호</th>
										<td>
											<select id="hpNo1" name="hpNo1" class="input_text">
												<option value="">선택</option>
												<option value="010">010</option>
												<option value="011">011</option>
												<option value="016">016</option>
												<option value="017">017</option>
												<option value="018">018</option>
												<option value="019">019</option>
											</select>
											<span class="bar"> - </span>
											<input type="text" id="hpNo2" name="hpNo2" maxlength="4" onkeyup="javascript:G_Util.inputNumber(this);" class="input_text">
											<span class="bar"> - </span>
											<input type="text" id="hpNo3" name="hpNo3" maxlength="4" onkeyup="javascript:G_Util.inputNumber(this);" class="input_text">
										</td>
									</tr>
									<tr>
										<th><em class="m_color2"></em>병원 전화번호</th>
										<td>
											<select id="telNo1" name="telNo1" class="input_text">
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
											<input type="text" id="telNo2" name="telNo2" maxlength="4" onkeyup="javascript:G_Util.inputNumber(this);" class="input_text">
											<span class="bar"> - </span>
											<input type="text" id="telNo3" name="telNo3" maxlength="4" onkeyup="javascript:G_Util.inputNumber(this);" class="input_text">
											<span><input type="checkbox" id="clone" name="clone"><label for="clone">휴대전화번호와 전화번호가 동일시 체크해 주세요.</label></span>
										</td>
									</tr>
									
									<tr>
										<th>주소</th>
										<td>
											<p>
												<input type="text" id="zipCd" name="zipCd" class="input_text" style="max-width:120px;" readonly="readonly">
												<a href="javascript:void(0)" class="btn1_sty1" title="새 창 열림" id="zipCdBtn" onclick="javascript:fn_DaumPostcode();" style="text-decoration-line: none;">우편번호 검색</a>
												<span class="bul_point1"></span>
											</p>
											<p class="mt10">
												<input type="text" id="addr" name="addr" class="input_text" maxlength="100" readonly="readonly">
												<input type="text" id="detlAddr" name="detlAddr" class="input_text" placeholder="상세주소를 입력해 주세요." maxlength="100">
											</p>
										</td>
									</tr>
									
								</tbody>
							</table>
						</div>
						<div class="btn_area">
							<a href="javascript:void(0);" onclick="javascript:fn_Regist();" class="btn_ty01_sty01"><span>가입하기</span></a>
							<a href="/adminPage.do" class="btn_ty01_sty0"><span>취소</span></a>
						</div>
					</div>

</body>
</html>