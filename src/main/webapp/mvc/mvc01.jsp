<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>MVC</title>
</head>
<jsp:useBean id="mvcServlet" class="com.mvc.MvcServlet"/>
<body>
	<p>${names[0] }<br>
	<p>${names[1] }<br>
	<hr>
	
	<!-- jstl(jsp tag library) 반복 -->
	<c:forEach var="name" items="${names }">
		<span>${name }</span>
	</c:forEach>
	<hr>
	
	<p>${lottoList[3] }<br>
	<p>${lottoList[4] }<br>
	<p>${lottoList[5] }<br>
	<hr>
	
	<c:forEach var="lotto" items="${lottoList }">
		<span>${lotto }</span>
	</c:forEach>
	
	<%
		for(int i = 0; i < 6; i++){
			
		}
	%>
	
	
</body>
</html>