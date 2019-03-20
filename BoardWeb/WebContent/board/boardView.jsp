<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
</head>
<body>
	<jsp:include page="/Header.jsp" />

	<h1>게시판</h1>

	<table>
			<tr>
				<td>번호</td>
				<td>회원이름</td>
				<td>메일</td>
				<td>가입일</td>
				<td></td>
			</tr>
		<c:forEach var="boardDto" items="${boardList}">
			<tr>
				<td>${boardDto.boardNo}</td>
				<td>${boardDto.title}</td>
				<td>${boardDto.mName}</td>
				<td>${boardDto.creDate}</td>
			</tr>
		</c:forEach>
	</table>

	<jsp:include page="/Tail.jsp" />
</body>
</html>