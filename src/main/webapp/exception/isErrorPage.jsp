<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="isErrorPage_error.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Exception</title>
</head>
<body>
	<p>
		name 파라미터 : <%=request.getParameter("name").toUpperCase() %>
	</p>
</body>
</html>