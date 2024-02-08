<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:set var="path" value="${pageContext.request.contextPath }"></c:set>
<script type="text/javascript" src="${path }/resources/js/jquery.js"></script>
<script type="text/javascript" src="${path }/resources/js/scripts.js"></script>
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
    color: red;
}

#err2 {
    color: gray;
}

#over {
    border: 1px solid gray;
    border-radius: 10px 10px;
    resize: none;
    overflow: auto;
}
#a {
  display: inline-block;
  padding: 10px 15px;
  margin: 5px;
  color: #9EBEC4;
  border: 1px solid #9EBEC4;
  text-decoration: none;
  border-radius: 100px;
}
#a:hover {
  background-color: #9EBEC4;
  color: #fff;
}
</style>
<script type="text/javascript">
function validateForm() {
    var couponType = document.getElementsByName("coupon_type")[0].value;
    var couponUse = document.getElementsByName("coupon_use")[0].value;
    var couponMaxDate = document.getElementsByName("coupon_max_date")[0].value;
    var usePrice = document.getElementsByName("use_price")[0].value;
    var mUserId = document.getElementsByName("m_userId")[0].value;

    // 각 필드에 대한 유효성 검사
    if (couponType.trim() === "") {
        alert("coupon_type을 입력하세요.");
        return false;
    }

    if (couponUse.trim() === "") {
        alert("coupon_use를 입력하세요.");
        return false;
    }

    if (couponMaxDate.trim() === "") {
        alert("coupon_max_date를 입력하세요.");
        return false;
    }

    if (usePrice.trim() === "" || isNaN(usePrice)) {
        alert("유효한 use_price를 입력하세요.");
        return false;
    }

    if (mUserId.trim() === "") {
        alert("m_userId를 입력하세요.");
        return false;
    }

    return true; // 모든 필드가 유효할 때만 제출
}
</script>
</head>
<body>

<jsp:include page="adminHeader.jsp"></jsp:include>

<div class="container-md mt-5 mb-5">
    <p></p><p></p><p></p><p></p><p></p><p></p>
    <br/><br/><br/><br/><br/>
    <div class="row">

        <div class="col-md-4"></div>

        <div class="col-md-4">
            <form action="couponInsert.do" method="post" onsubmit="return validateForm()">
                <h2 class="mt-5 text-start" id="join">쿠폰 발급하기</h2>
                <hr>
                <table class="table">
                    <tr><th>coupon_type : </th><td><input type="text" name="coupon_type"></td></tr>
                    <tr><th>coupon_use : </th><td><input type="text" name="coupon_use"></td></tr>
                    <tr><th>coupon_max_date : </th><td><input type="date" name="coupon_max_date"></td></tr>
                    <tr><th>use_price : </th><td><input type="number" name="use_price"></td></tr>
                    <tr><th>m_userId : </th><td><input type="text" name="m_userId"></td></tr>

                    <tr><th colspan="2"><button type="submit">쿠폰 발행하기</button></th></tr>
                </table>
            </form>
        </div>

        <div class="col col-md-4"></div>

    </div>
</div>
<div style="display: flex; justify-content: center;">
    <a id="a"  href="adminPage.do" id="a" style="text-decoration: none;">홈으로</a>
</div>
<jsp:include page="adminFooter.jsp"></jsp:include>

</body>
</html>
