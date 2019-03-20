<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>

<style type="text/css">
	table {
		width: auto;
		margin: auto;
		text-align: center;
		border-collapse: collapse;
	}
	
	table, tr, td {
		border: 1px solid black;
	}
	
</style>

<script type="text/javascript">

	function regsterFnc(){
		location.href = './add';
	}
	
</script>

</head>
<body>
	<jsp:include page="/Header.jsp" />

	<h1 style="font-family: serif; ">게시판</h1>

	<table>

			<tr>
				<td style="width: 50px">번호</td>
				<td style="width: 500px">제목</td>
				<td style="width: 100px">작성자</td>
				<td style="width: 150px">등록시간</td>
			</tr>

		<c:forEach var="boardDto" items="${boardList}">
			<tr>
				<td>${boardDto.boardNo}</td>
				<td><a href='./detailView?boardNo=${boardDto.boardNo}'>${boardDto.title}</td>
				<td>${boardDto.mName}</td>
				<td>${boardDto.creDate}</td>
			</tr>
		</c:forEach>
	</table>
	<input type="button" value="글쓰기" onclick="regsterFnc()">


	<jsp:include page="/Tail.jsp" />
</body>
</html>