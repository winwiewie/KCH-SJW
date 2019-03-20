<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 등록</title>
<style type="text/css">
	table {
		border-collapse: collapse;
	}
	
	table, tr, td {
		border: 1px solid black;
	}
	li{
		list-style: none;
	}
</style>
</head>
<body>
	<jsp:include page="/Header.jsp"/>
	
	<h1>게시판 등록</h1>
	<form action="./add" method="post">
		<ul>
			<%-- ${boardDto.mNo} --%>
			
			<li>
				제목: <input type="text" name="title">
			</li>
			<li>
				내용:
			</li>
			<li>
				<textarea rows="12" cols="130" name="body"></textarea>
			</li>

		</ul>
		<input type="submit" value="추가">
		<input type="button" value="뒤로가기" onclick="location.href='./list'">
	</form>
	<jsp:include page="/Tail.jsp"/>

</body>
</html>