<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<link rel="stylesheet" href="../../resources/css/release/ReleaseMain.css">
<link rel="stylesheet" href="../../resources/css/release/table.css">

</head>
<body>
<form action="qna_write?m_userId=${sessionScope.login.m_userId}" method="post" accept-charset="UTF-8">
	<table class="rwd-table" border="1" style="width:100%;">
			<tbody>
			<tr>
			<th>
			QnA 작성
			</th>
			</tr>
				<tr>
					<td>
					
					<input type="text" name="qa_subject" placeholder="제목" style="width:99%;"></td>
				</tr>
				<tr>
					<td><textarea name="qa_content" rows="20" cols="150"></textarea></td>
				</tr>

			</tbody>
		</table>
		<input type="submit" class="qna_button" value="작성">
		</form>
		
</body>
<script>

</html>