<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	/* 상단 메뉴 스타일 */
		.header {
		    background-color: #9EBEC4;
		    color: white;
		    padding: 10px;
		    text-align: center;
		}
		
		.header nav #hu {
		    list-style-type: none;
		    margin: 0;
		    padding: 0;
		}
		
		.header nav ul #hl {
		    display: inline;
		    margin-right: 10px;
		}
		
		.header nav ul #hl #ha {
		    color: white;
		    text-decoration: none;
		}
</style>
</head>
<body>
<div class="header">
        <!-- 여기에 메뉴 내용 추가 -->
        <nav id="hn">
            <ul id="hu">
                <li id="hl"><a href="adminPage.do" id="ha">Home</a></li>
                <!-- <li id="hl"><a href="#" id="ha">About Us</a></li> -->
                <li id="hl"><a href="logout" id="ha">logout</a></li>
            </ul>
        </nav>
    </div>
</body>
</html>