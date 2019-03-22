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
			var formObj = document.getElementById('addForm');
			
			var nameObj = document.getElementById('name');
	

			if (nameObj.value == '') {
				alert("이름을 입력하지 않았습니다.")
				return false;
			}
			
			var emailObj = document.getElementById('email');
			
			if (emailObj.value == '') {
				alert("이메일을 입력하지 않았습니다.")
				return false;
			}

			var pwdObj = document.getElementById('password');
			
			if (pwdObj.value == '') {
				alert("비밀번호를 입력해주세요!")
				return false;
			}
		
		
		alert("등록성공하엿습니다!!")
		formObj.submit();
		}
		
	
</script>
</head>
<body>
	<jsp:include page="/Header.jsp"/>
	
	<h1>회원등록</h1>
	<form action="./add" method="post" id="addForm">
		<table>
			<tr>
				<td>
					이&nbsp;&nbsp;&nbsp;름
				</td>
				<td>
					<input type="text" id="name" name='name'>
				</td>
			</tr>
			<tr>
				<td>
					이메일
				</td>
				<td>
					<input type="text" id="email" name="email">
				</td>
			</tr>
			<tr>
				<td>
					암&nbsp;&nbsp;&nbsp;호
				</td>
				<td>
					<input type="password"id="password" name='password'>
				</td>
			</tr>
			<tr>
				<td colspan="2" style="text-align:right; padding-top:5px;">
					<input type="button" value="추가" onclick="successFnc()">
					<input type="reset" value="취소">
				</td>
			</tr>
		</table>
	</form>

	<jsp:include page="/Tail.jsp"/>

</body>
</html>