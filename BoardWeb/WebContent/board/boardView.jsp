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
	h1{
		font-family: serif;
	}
</style>

<script type="text/javascript">

	function regsterFnc(){
		location.href = './add';
	}
	
	function regFailFnc(){
		alert("로그인을 하셔야 합니다!");
		
		location.href = '../auth/login';
	}
	
</script>

</head>
<body>
	<jsp:include page="/Header.jsp" />



	<table>
			<tr>
				<td colspan="4" style="text-align:left; border:1px solid white; border-bottom:1px solid black;">
					<h1>게시판</h1>
				</td>
			</tr>
			<tr style="background-color: #F2CB61;">
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
			<tr>
				<td colspan="4" style="height:10px; border: 1px solid white; border-top:1px solid black;">
				</td>
			<tr>
			<tr>
				<td colspan="4" style="border: 1px solid white; text-align: right">
					<c:if test="${sessionScope.member != null}">
						&nbsp;<input type="button" value="글쓰기" onclick="regsterFnc();">
					</c:if>
					
					<c:if test="${sessionScope.member == null}">
						<input type="button" value="글쓰기" onclick="regFailFnc()">
					</c:if>
				</td>
			</tr>
	</table>
	


	<jsp:include page="/Tail.jsp" />
</body>
</html>