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
		border-collapse: collapse;
	}
	
	table, tr, td {
		border: 1px solid black;
	}
	
</style>

<script type="text/javascript">

	
	
</script>

</head>
<body>
	<jsp:include page="/Header.jsp" />

	<h1 style="font-family: serif; ">게시판</h1>

	<table>
		<tr>
				<td>${boardDto.mName}</td>
				<td>${boardDto.creDate}</td>
		</tr>
		<tr>
			<td colspan="2">${boardDto.title}</td>
		</tr>
		<tr>
			<td colspan="2">${boardDto.body}</td>
		</tr>
	</table>

	<jsp:include page="/Tail.jsp" />
</body>
</html>