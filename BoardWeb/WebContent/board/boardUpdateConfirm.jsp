<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
window.onload = function(){ // 익명함수
		alert("게시판 수정 성공");
		
		var obj = document.getElementById("boardNo");
		var path = './detailView?boardNo=' + obj.value;
		
// 		alert(path);
		
		location.href = path;	
}
	
</script>

</head>

<body>
	<input type="hidden" id='boardNo' name='boardNo' value='${boardNo}'>

</body>

</html>