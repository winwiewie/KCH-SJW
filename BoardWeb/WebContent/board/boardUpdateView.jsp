<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 보기</title>
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
	
	<h1 style="font-family: serif; ">...수정</h1>
	
	<!-- <input type="button" value="다음글(수정중)" onclick="location.href='./list'"> -->
	
	<form action="./update" method="post">
		<table  style="width:590px; height:180px;">
			<ul>
				<li>
					<tr>
						<td style="border: 1px solid white; width:460px;">제목: <input style=" width:410px;" 
							name="title1" type="text" value="${boardDto.title}"></td>
						<td style="border: 1px solid white; width:130px; text-align:right; padding-right:5px;">
							${boardDto.creDate}
						</td>
					</tr>
				</li>
				<li>
					<tr>
						<td colspan="2" style="border: 1px solid white;">${boardDto.mName}</td>
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
							<textarea name="body1" rows="12" cols="90" 
								style="resize: none;">${boardDto.body}</textarea>
						</td>
					</tr>
				</li>
			</ul>
		</table>
		<br/>
<!-- 		
		<input type="submit" value="추가">
		<input type="reset" value="취소"> 
		 -->
		<input type="submit" value="수정">
		<input type="button" value="뒤로가기" onclick="location.href='./detailView?boardNo=${boardDto.boardNo}'">
		
		
		<input type="hidden" name="boardNo" value="${boardDto.boardNo}">
	</form>
	<jsp:include page="/Tail.jsp"/>

</body>
</html>