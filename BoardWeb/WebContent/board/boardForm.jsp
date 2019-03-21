<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 등록</title>
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
	li{
		list-style: none;
	}
	
	h1{
		font-family: serif;
	}
</style>
</head>
<body>
	<jsp:include page="/Header.jsp"/>
	
	<form action="./add" method="post">
		<table  style="width:590px; height:180px;">
			<ul>
				<li>
					<tr>
						<td colspan="4" style="text-align:left; border:1px solid white;">
							<h1>게시판 등록</h1>
						</td>
					</tr>
				</li>
				<li>
					<tr>
						<td style="text-align:left; border: 1px solid white; width:110px;">제목</td>
						<td style="border: 1px solid white; width:490px;">
							<input type="text" name="title" placeholder="제목을 입력해주세요" style="width:490px;">
						</td>
					</tr>
				</li>
				<li>
					<tr>
						<td colspan="2" style="text-align:left; border: 1px solid white;">내용</td>
					</tr>
				</li>
				<li>	
					<tr>
						<td colspan="2" style="height: 10px; border-left: 1px solid white; 
						border-right: 1px solid white;"></td>
					</tr>
				</li>
				<li>
					<tr>
						<td colspan="2">
							<textarea name="body" rows="12" cols="90" style="resize: none;"
							placeholder="내용을 입력해주세요"></textarea>
						</td>
					</tr>
			
				</li>
				<li>
					<tr>
						<td colspan="2" style="text-align:right; padding-right:3px; padding-top:5px;
						border: 1px solid white">
							<input type="submit" value="추가">
							<input type="reset" value="취소">
							<input type="button" value="뒤로가기" onclick="location.href='./list'">
						</td>
					</tr>
				</li>
			</ul>
		</table>
		<br/>
	</form>
	<jsp:include page="/Tail.jsp"/>

</body>
</html>