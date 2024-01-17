/***************************************************
 * 파일명 : CommonUtil.c3r-custom.js
 * DESC : 공통 유틸 정리
 * 생성자 : MOOK
 * 생성일 : 2021.08.20.
 * 작업설명
 **************************************************/
var G_Util = {
	//글자수 Byte 제한 (textAreaId,textLenId,글자수제한수)
	getTextCnt : function(oTextArea,oTextLen,textLimit){
		var str     = $(oTextArea).val();
		var str_len = str.length;
		var iByte = 0;
		var rlen  = 0;
		var one_char = "";
		var str2 = "";
		for( var i=0; i<str_len; i++ ){
			one_char = str.charAt(i);
			if(escape(one_char).length > 4) {
				iByte += 2;//한글2Byte
			}else{
				iByte++;//영문 등 나머지 1Byte
			}
			if(iByte <= textLimit){
				rlen = i+1;//return할 문자열 갯수
			}
		}
		if( iByte > textLimit ){
			alert("최대 " + textLimit + "byte를 초과할 수 없습니다.");
			str2 = str.substr(0,rlen);
			$(oTextArea).val(str2);
			G_Util.getTextCnt(oTextArea,oTextLen,textLimit);
		}else{
			$(oTextLen).text(iByte);
		}
	},
	//이메일 유효성 체크
    isEmail(email){
        var regEmail = /([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
        if( !regEmail.test(email) ){
            return false;
        }
        return true;
    },
	//생년월일 유효성
    isBirth(birthday){
    	var result = true;
    	var regExp = /[\{\}\[\]\/?.,;:|\)*~`!^\-_+<>@\#$%&\\\=\(\'\"]/gi;
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
    },
	//Context Path
	getContextPath : function(){
		var hostIndex = location.href.indexOf( location.host ) + location.host.length;
		return location.href.substring( hostIndex, location.href.indexOf('/', hostIndex + 1) );
	},
	//금액[단독사용금지] : 천단위 콤마 생성
	setComma : function(arg){
		var result = String(arg);
		if( result != "" ){
			result = result.replace(/(\d)(?=(?:\d{3})+(?!\d))/g,"$1,");
		}
		return result;
	},
	//금액[단독사용금지] : 천단위 콤마 제거
	setUnComma : function(arg){
		var result = String(arg);
		if( result != "" ){
			result = result.replace(/[^\d]+/g,"");
		}
		return result;
	},
	//금액 : 입력시 콤마 생성
	inputComma : function(obj){
		var inputValue = $(obj).val();
		$(obj).val(G_Util.setComma(G_Util.setUnComma(inputValue)));
	},
	//숫자만 허용
	inputNumber : function(obj){
		var result = $(obj).val().replace(/[^0-9-]/g,"");
		$(obj).val(result);
	},
	//비율 : 소수점을 포함한 표현
	inputRate : function(obj){
		var tmps = $(obj).val().replace(/[^\.|^0(0)+|^0-9\.]/g,"");
		var arr = tmps.split(".");
		if( arr.length > 2 ){
			tmps = arr[0] + '.' + arr[1];
		}
        $(obj).val(tmps);
	},
	/** []Null체크 **/
	isEmpty : function( pObject, pPostObject ){
		var rValue;
		if( typeof pObject != "undefined" ){
			if( typeof pPostObject != "undefined" ){
				rValue = pObject;
			}else{
				if( pObject != "" && pObject != "null" && pObject != null )	rValue = false;
				else														rValue = true;
			}
		}else{
			if( typeof pPostObject != "undefined" ){
				rValue = pPostObject;
			}else{
				rValue = true;
			}
		}
		return rValue;
	},
	//Post Popup
	postPopup : function(popupName, url, width, height, valueObjects) {
	    if (popupName == "") {
	        popupName = 'NewWindow';
	    }
	    var m_left =  (window.screen.width - width) / 2;
	    var m_top = (window.screen.height - height) / 2;
	    var stat = "menubar=0 location=0 directories=0 resizable=1 scrollbars=1 status=0 titlebar=1 toolbar=0 left="+m_left+" top="+m_top;
	    var form = document.createElement("form");
	    form.method = "POST";
	    form.target = popupName;
	    form.action = url;
	    for (keyName in valueObjects) {
	    	var param = CreateHiddenElement(keyName, valueObjects[keyName]);
	    	form.appendChild(param);
	    }
	    document.body.appendChild(form);
	    var openWindow = window.open("",popupName,"width="+width+"px height="+height+"px "+stat)
	    form.submit();
	    openWindow.focus();
	    document.body.removeChild(form);
	},
	//[공통]파일다운로드
	fileDownload : function(fileNo,fileSeq,actionUrl){
		if( fileNo != undefined && fileNo != "" && fileSeq != undefined && fileSeq != "" && actionUrl != undefined && actionUrl != "" ){
			var oForm    = $("<form/>");
			var oHidden1 = $("<input/>");
			var oHidden2 = $("<input/>");
			oForm.attr({"id":"fileFrm","name":"fileFrm","method":"post"});
			oHidden1.attr({"id":"fileNo","name":"fileNo","value":fileNo});
			oHidden2.attr({"id":"fileSeq","name":"fileSeq","value":fileSeq});
			oForm.append(oHidden1);
			oForm.append(oHidden2);
			$("body").append(oForm);
			oForm.attr({"action":actionUrl,"target":"_self"}).submit();
		}
	},
	//한글 초성변환
	getKoreanFirst : function(str){
		var cho    = ["ㄱ","ㄲ","ㄴ","ㄷ","ㄸ","ㄹ","ㅁ","ㅂ","ㅃ","ㅅ","ㅆ","ㅇ","ㅈ","ㅉ","ㅊ","ㅋ","ㅌ","ㅍ","ㅎ"];
		var result = "";
		for( var i=0; i<str.length; i++ ){
			code = str.charCodeAt(i)-44032;
			if(code>-1 && code<11172) result += cho[Math.floor(code/588)];
		}
		return result;
	},
	//별도의 Form을 만들어 전송
	newFormSubmit : function(json){
		if( json != undefined ){
			$("form#tmpForm").remove();
			var oForm = $("<form/>",{
				id     : "tmpForm",
				name   : "tmpForm",
				method : "POST",
				action : json.action
			});
			$.each(json.param,function(key,value){
				var oHidden = $("<input/>",{
					type  : "hidden",
					id    : key,
					name  : key,
					value : value
				});
				oForm.append(oHidden);
			});
			$("body").append(oForm);
			oForm.submit();
		}
	},
	//만나이 계산 ( KDW생성 2022.03.09, LSH 수정 2022.03.29 )
	ageCheck : function(str1,str2){
		var divisionCode = str2.substring(0, 1);
		var dateOfBirth="";
		var age = "";
		if(str1 != null && str1 !="" && str1 != undefined && str1.length < 7){
			if(divisionCode == 1 || divisionCode == 2 || divisionCode == 5 || divisionCode == 6){
				// 한국인 1900~, 외국인 1900~
				dateOfBirth = "19"+str1;
			}else if(divisionCode == 3 || divisionCode == 4 || divisionCode == 7 || divisionCode == 8){
				// 한국인 2000~, 외국인 2000~
				dateOfBirth = "20"+str1;
			}else if(divisionCode == 9 || divisionCode == 0){
				// 한국인 1800~
				dateOfBirth = "18"+str1;
			}
		}else if( str1.length < 9){
			dateOfBirth = str1;
		}else{
			dateOfBirth = "";
		}
		if(dateOfBirth != ""){
			dateOfBirth = dateOfBirth.substr(0,4)+","+dateOfBirth.substr(4,2)+","+dateOfBirth.substr(6,2);
			var date = new Date();
			var birthDate = new Date(dateOfBirth);
			if( str1 != null && str1 != '' ){
				age = date.getFullYear() - birthDate.getFullYear() ;
				birthDate.setFullYear(date.getFullYear()); // 생년월일 객체의 연도를 오늘 날짜 객체의 연도로 변경
				if( date > birthDate) { // 같은 연도가 된 객체를 비교하여 월일이 지났는지 여부 판단
					age; // 생일이 안지났으면 나이
				} else {
					age--; //
				}
			}
		}else{
			age =0;
		}
		return age;
	},
	//성별 출력( KDW생성 2022.03.09 )
	genderCheck : function(str2){
		var genderCode = str2.substring(0, 1);
		let gender = "";
		if(genderCode % 2 > 0){
			gender = "M";
		}else if(genderCode % 2 == 0){
			gender = "F";
		}
		return gender;
	},
	//날짜의 요일조회
	getWeekInfo : function(strDate,div){
		var week      = ["일","월","화","수","목","금","토"];
		var dayOfWeek = week[new Date(strDate).getDay()];
		return dayOfWeek;
	},
	//쿠키등록
	setCookie : function(cookieName,value,exdays){
	    var exdate = new Date();
	    exdate.setDate(exdate.getDate() + exdays);
	    var cookieValue = escape(value) + ((exdays==null) ? "" : "; expires=" + exdate.toGMTString());
	    document.cookie = cookieName + "=" + cookieValue;
	},
	//쿠키삭제
	deleteCookie : function(cookieName){
	    var expireDate = new Date();
	    expireDate.setDate(expireDate.getDate() - 1);
	    document.cookie = cookieName + "= " + "; expires=" + expireDate.toGMTString();
	},
	//쿠키조회
	getCookie : function(cookieName){
	    cookieName = cookieName + '=';
	    var cookieData = document.cookie;
	    var start = cookieData.indexOf(cookieName);
	    var cookieValue = '';
	    if(start != -1){
	        start += cookieName.length;
	        var end = cookieData.indexOf(';', start);
	        if(end == -1)end = cookieData.length;
	        cookieValue = cookieData.substring(start, end);
	    }
	    return unescape(cookieValue);
	}
}