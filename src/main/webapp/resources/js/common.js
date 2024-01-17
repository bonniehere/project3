String.prototype.replaceAll = function (regex, replacement) {
	return this.split(regex).join(replacement);
}

String.prototype.trim = function () {
	return this.replace(/(^\s*)|(\s*$)/g, "");
}

Array.prototype.indexOf = function (item, from) {
	var len = this.length;
	for (var i = (from < 0) ? Math.max(0, len + from) : from || 0; i < len; i++) {
		if (this[i] === item) return i;
	}
	return -1;
}

function $id(id) {

	return document.getElementById(id);

}

function submit_msg( id ) {

	if (!id) id = regi_area;

	if ($("#" + id).length > 0) {

		$("#" + id).children().css("visibility", "hidden");
		$("#" + id).append("<span>등록중입니다. 잠시만 기다려주세요...</span>");

	}

}

function submit_wait_msg( id, msg ) {

	if ($("#" + id).length > 0) {

		$("#" + id).html("<span>" + msg + "</span>");

	}

}

//페이지 이동
function make_new_url(new_page_name, q_json) {

    var url = location.href;
    var page_url_arr = url.split(".do");
    var url_arr = page_url_arr[0].split("/");
    var page_name = url_arr[url_arr.length - 1]

    param.get();
    for (var key in q_json) {
	param.add(key, q_json[key]);
    }
/*
    for (var key in q_json) {

	param.change(key, q_json[key]);

    }*/
    return param.join().replace(page_name + ".do", new_page_name + ".do");

}

//페이지 이동
function page_move(new_page_name, q_json, blank_chk) {

    var url = make_new_url(new_page_name, q_json);
    if (!blank_chk) {

	location.href = url;

    } else {

	window.open(url, "page_move", "");

    }

}

function onlyNumber() {
	if (!((event.keyCode >= 48 && event.keyCode <= 57) || (event.keyCode >= 96 && event.keyCode <= 105) || (event.keyCode == 8) || (event.keyCode == 9) || (event.keyCode == 110) || (event.keyCode == 190))) {
		if (event.preventDefault) {
			event.preventDefault();
		} else {
			event.returnValue = false;
		}
	}
}

function onlyNum(obj, event){

	//우측 키패드와 중단 키패드 체크
	if ((event.keyCode < 48 || event.keyCode > 57) && (event.keyCode < 96 || event.keyCode > 105 )){
	  // 백스페이스 키, 앤터키, 탭키, ESC키 체크
	  if((event.keyCode != 8) && (event.keyCode != 9) && (event.keyCode != 13) && (event.keyCode != 27)){
	         if( typeof event.preventDefault != 'undefined' && event.preventDefault ) event.preventDefault();
	     if( typeof event.stopPropagation != 'undefined' && event.stopPropagation ) event.preventDefault();
	     event.cancelBubble = true;
	     event.returnValue = false;
	     alert("숫자만 입력하실수 있습니다.");
	     obj.value = '';
	         return false;
	  }else{
	      event.returnValue = true;
	  }
	}

}
//체크 박스 체크
function comm_all_check(oThis, chk_name) {

    $(":checkbox[name='" + chk_name + "']").prop("checked", oThis.checked);

}

function all_check(oThis) {

    $("input[name='chk_no']").prop("checked", oThis.checked);

}

//체크박스에 체크된 값을 가져오기
function comm_all_check_val(chk_name) {

	return $(":checkbox[name='" + chk_name + "']:checked").map(function () {
		return this.value;
	}).get().join();

}

function next_focus( len, oThis, nextId) {

	var tLen = $( oThis ).val().length;
	if( tLen == len ){

		$( "#" + nextId ).focus();

	}

}

function G_PostPopupOpen(popupName, url, width, height, valueObjects) {
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
}
function CreateHiddenElement(name,value) {
    var param = document.createElement("input");
    param.setAttribute("type", "hidden");
    param.setAttribute("name", name);
    param.setAttribute("value", value);
    return param;
}
//페이징 POST
function G_MovePage(pageNo){
	var moveUrl = $(location).attr("pathname");
	var objForm = $("<form/>").attr({
		"id"     : "GLOVAL_PAGE_FORM",
		"name"   : "GLOVAL_PAGE_FORM",
		"action" : moveUrl,
		"target" : "_self",
		"method" : "POST"
	});
	$("#focusTabYn").val("Y");
	$("<input/>").attr({"type":"hidden","id":"sortOrder","name":"sortOrder","value":$("#sortOrder").val()}).appendTo(objForm);
	$("<input/>").attr({"type":"hidden","id":"profInitKorNm","name":"profInitKorNm","value":$("#profInitKorNm").val()}).appendTo(objForm);
	$("<input/>").attr({"type":"hidden","id":"searchfield","name":"searchfield","value":$("#searchfield").val()}).appendTo(objForm);
	$("<input/>").attr({"type":"hidden","id":"searchword","name":"searchword","value":$("#searchword").val()}).appendTo(objForm);
	$("<input/>").attr({"type":"hidden","id":"list_show_cnt","name":"list_show_cnt","value":$("#list_show_cnt").val()}).appendTo(objForm);
	$("<input/>").attr({"type":"hidden","id":"cate1","name":"cate1","value":$("#cate1").val()}).appendTo(objForm);
	$("<input/>").attr({"type":"hidden","id":"page","name":"page","value":pageNo}).appendTo(objForm);
	$("<input/>").attr({"type":"hidden","id":"tabCd","name":"tabCd","value":$("#tabCd").val()}).appendTo(objForm);
	$("<input/>").attr({"type":"hidden","id":"publicYear","name":"publicYear","value":$("#publicYear").val()}).appendTo(objForm);
	$("<input/>").attr({"type":"hidden","id":"prevYearYn","name":"prevYearYn","value":$("#prevYearYn").val()}).appendTo(objForm);
	$("<input/>").attr({"type":"hidden","id":"workType","name":"workType","value":$("#workType").val()}).appendTo(objForm);
	$("<input/>").attr({"type":"hidden","id":"deptNo","name":"deptNo","value":$("#deptNo").val()}).appendTo(objForm);
	$("<input/>").attr({"type":"hidden","id":"deptNm","name":"deptNm","value":$("#deptNm").val()}).appendTo(objForm);
	$("<input/>").attr({"type":"hidden","id":"diseaseNo","name":"diseaseNo","value":$("#diseaseNo").val()}).appendTo(objForm);
	$("<input/>").attr({"type":"hidden","id":"diseaseNm","name":"diseaseNm","value":$("#diseaseNm").val()}).appendTo(objForm);
	$("<input/>").attr({"type":"hidden","id":"partNo","name":"partNo","value":$("#partNo").val()}).appendTo(objForm);
	$("<input/>").attr({"type":"hidden","id":"partNm","name":"partNm","value":$("#partNm").val()}).appendTo(objForm);
	$("<input/>").attr({"type":"hidden","id":"searchDay","name":"searchDay","value":$("#searchDay").val()}).appendTo(objForm);
	$("<input/>").attr({"type":"hidden","id":"regYear","name":"regYear","value":$("#regYear").val()}).appendTo(objForm);
	$("<input/>").attr({"type":"hidden","id":"headHspCd","name":"headHspCd","value":$("#headHspCd").val()}).appendTo(objForm);

	$("<input/>").attr({"type":"hidden","id":"statusCd","name":"statusCd","value":$("#statusCd").val()}).appendTo(objForm);

	$("<input/>").attr({"type":"hidden","id":"searchDeptGb","name":"searchDeptGb","value":$("#searchDeptGb").val()}).appendTo(objForm);
	$("<input/>").attr({"type":"hidden","id":"searchDept","name":"searchDept","value":$("#searchDept").val()}).appendTo(objForm);

	$("<input/>").attr({"type":"hidden","id":"totalWord","name":"totalWord","value":$("#totalWord").val()}).appendTo(objForm);

	$("<input/>").attr({"type":"hidden","id":"patNo","name":"patNo","value":$("#patNo").val()}).appendTo(objForm);
	$("<input/>").attr({"type":"hidden","id":"req","name":"req","value":$("#req").val()}).appendTo(objForm);
	$("<input/>").attr({"type":"hidden","id":"depCd","name":"depCd","value":$("#depCd").val()}).appendTo(objForm);

	$("<input/>").attr({"type":"hidden","id":"locaSearch","name":"locaSearch","value":$("#locaSearch").val()}).appendTo(objForm);
	$("<input/>").attr({"type":"hidden","id":"locaType","name":"locaType","value":$("#locaType").val()}).appendTo(objForm);

	$("<input/>").attr({"type":"hidden","id":"mapNm","name":"mapNm","value":$("#mapNm").val()}).appendTo(objForm);
	$("<input/>").attr({"type":"hidden","id":"addrdetl","name":"addrdetl","value":$("#addrdetl").val()}).appendTo(objForm);
	$("<input/>").attr({"type":"hidden","id":"addrdetl2","name":"addrdetl2","value":$("#addrdetl2").val()}).appendTo(objForm);
	
	$("input[name=actionTxt]").each(function(){
		if($(this).is(":checked")){
			$("<input/>").attr({"type":"hidden","id":"regYear","name":"actionTxt","value":$(this).val()}).appendTo(objForm);
		}
	});
	$(document.body).append(objForm);
	objForm.submit();
}
//이메일 유효성 체크
function G_VerificationEmail(email){
	var regEmail = /([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
	if( !regEmail.test(email) ){
        return false;
    }
	return true;
}
//날짜 포멧팅 : yyyymmdd -> yyyy-mm-dd
function G_formatDate(date){
	var result = "";
	var year  = "";
	var month = "";
	var day   = "";
	if( date.length == 8 ){
		year  = date.substring(0,4);
		month = date.substring(4,6);
		day   = date.substring(6,8);
		result = [year, month, day].join('-');
	}
	return result;
}
//날짜 포멧팅 : yyyymmddhhMMss -> yyyy-mm-dd hh:MM:ss
function G_formatDateFull(date){
	var result = "";
	var year  = "";
	var month = "";
	var day   = "";
	var hour  = "";
	var min   = "";
	var sec   = "";
	if( date.length == 14 ){
		year  = date.substring(0,4);
		month = date.substring(4,6);
		day   = date.substring(6,8);
		hour  = date.substring(8,10);
		min   = date.substring(10,12);
		sec   = date.substring(12,14);
		result  = [year,month,day].join('-');
		result += " ";
		result += [hour,min,sec].join(':');
	}
	return result;
}
//숫자 콤마
function G_NumberFormat(inputNumber) {
   return inputNumber.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}

function staticFileDown( path, filename ){

	var downSrc = "/com/ATagFileDownload.do?filePath=/_upload" + path + encodeURIComponent(filename);
	location.href = downSrc;

}