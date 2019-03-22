<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 등록</title>
<style type="text/css">
	h1{
		font-family: serif;
	}
</style>
<script type="text/javascript">
	function successFnc() {
		alert("등록성공하엿습니다!!")
	}
</script>
</head>
<body>
	<jsp:include page="/Header.jsp"/>
	
	<h1>회원등록</h1>
	<form action="./add" method="post">
		<table>
			<tr>
				<td>
					이&nbsp;&nbsp;&nbsp;름
				</td>
				<td>
					<input type="text" name='name'>
				</td>
			</tr>
			<tr>
				<td>
					이메일
				</td>
				<td>
					<input type="text" name="email">
				</td>
			</tr>
			<tr>
				<td>
					암&nbsp;&nbsp;&nbsp;호
				</td>
				<td>
					<input type="password" name='password'>
				</td>
			</tr>
			<tr>
				<td colspan="2" style="text-align:right; padding-top:5px;">
					<input type="submit" value="추가" onclick="successFnc()">
					<input type="reset" value="취소">
				</td>
			</tr>
		</table>
	</form>

	<jsp:include page="/Tail.jsp"/>

</body>
</html>