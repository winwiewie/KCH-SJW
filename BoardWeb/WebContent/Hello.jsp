<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일단 주소 쉽게 보는 화면</title>
</head>

<%
	String[] names = new String[]{
			"홍길동", "임꺽정", "일지매", "용비"
	};
	pageContext.setAttribute("nameArr", names);
%>

<body>
	<ul>
		<c:forEach var="nameStr" items="${nameArr}">
			<c:if test="${nameStr eq '임꺽정'}"></c:if>
				<li>${nameStr}</li>
		</c:forEach>
	</ul>
	
	<c:if test="${10 > 20}" var="resurt1">
		1. 10은 20보다 크다<br>
	</c:if>
	2. ${resurt1}<br>
	
	<c:if test="${10 < 20}" var="resurt2">
		3. 10은 20보다 크다<br>
	</c:if>
	4. ${resurt2}<br>
	
	
	
	
</body>
</html>