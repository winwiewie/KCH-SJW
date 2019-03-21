<%@page import="com.tg.member.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div style="background-color: #B7F0B1; color: #000000; 
	height: 32px;">
	
	<a href='./list'>
		<img src="../img/images.png" width="80" height="30" alt="KCH-SJW" />
	</a>
	
	
	
	<span style="float: right; padding:5px">
		<c:if test="${sessionScope.member != null}">
			${sessionScope.member.name}
			<a href="<%=request.getContextPath()%>/auth/logout" style="color:black;">
				로그아웃
			</a>
		</c:if>
		
		<c:if test="${sessionScope.member eq null}">
			게스트
			<a href="<%=request.getContextPath()%>/auth/login" style="color:black;">
				로그인
			</a>
		</c:if>
	</span>

</div>