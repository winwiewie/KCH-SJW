<%@page import="java.util.ArrayList"%>
<%@page import="test.Dto"%>
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
	Dto[] dtoArr = new Dto[3];

	dtoArr[0] = new Dto(1, "국어", 30);
	dtoArr[1] = new Dto(2, "영어", 40);
	dtoArr[2] = new Dto(3, "국어", 100);
	
	ArrayList<Dto> dtoList = new ArrayList<Dto>();
	
	Dto dto1 = new Dto(1, "국어", 30);
	Dto dto2 = new Dto(2, "영어", 40);
	Dto dto3 = new Dto(3, "국어", 100);
	
	dtoList.add(dto1);
	dtoList.add(dto2);
	dtoList.add(dto3);
	
	pageContext.setAttribute("numArr", dtoArr);
	pageContext.setAttribute("dtoList", dtoList);
	
	String t = "\t";
%>

<body>
		<table>
			<tr>
				<td>번호</td>
				<td>과목명</td>
				<td>점수</td>
			</tr>
			<c:forEach var="dto" items="${numArr}" begin="0" end="2" varStatus="i">
			<tr>
				<td>${dto.number}</td>
				<td>${dto.subject}</td>
				<td>${dto.score}</td>
			</tr>
			</c:forEach>
			<c:forEach var="dtoList" items="${dtoList}">
			<tr>
				<td>${dtoList.number}</td> 
				<td>${dtoList.subject}</td> 
				<td>${dtoList.score}</td>
			</tr>
			</c:forEach>
		</table>
	</ul>
</body>
</html>