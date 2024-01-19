<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문 메인 페이지</title>

<link rel="stylesheet" href="../../resources/css/release/ReleaseMain.css">
<script type="text/javascript" src="../../../../resources/js/release/ReleaseMain.js"></script>


</head>
<body>
<div id="wholewrap">
<div id="topwrap">
<%@ include file="top.jsp" %>
</div>
<div id="leftwrap">
<%@ include file="left.jsp" %>
</div>

	   <div id="tabViewer" class="tabViewer">
	<div id="tabViewer-tabMenu" class="tabViewer-tabMenu">
		<a href="javascript:void(0);" data-index="0" class="tabViewer-tab active">All</a>
		<a href="javascript:void(0);" data-index="1" class="tabViewer-tab">분류1</a>
		<a href="javascript:void(0);" data-index="2" class="tabViewer-tab">분류2</a>
		<a href="javascript:void(0);" data-index="3" class="tabViewer-tab">분류3</a>
		<a href="javascript:void(0);" data-index="4" class="tabViewer-tab">분류4</a>
	</div>
	<div id="TabViewer-tabContent" class="tabViewer-tabContent">
		<div class="tabViewer-content">
			<%@ include file="table.jsp" %>
		</div>
		<div class="tabViewer-content">
2번
		</div>
		<div class="tabViewer-content">
3번
		</div>
		<div class="tabViewer-content">
4번
		</div>
		<div class="tabViewer-content">
5번
		</div>
	</div>
</div>

</div>
</body>
</html>