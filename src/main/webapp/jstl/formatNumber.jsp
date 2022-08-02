<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>formatNumber 태그</title>
</head>
<body>
	<h2>숫자를 다양한 형식으로 표시</h2>
	<p>숫자 : <fmt:formatNumber value="3200100" />				<!-- 천단위 구분기호 표시 -->
	<p><fmt:formatNumber value="3200100" type="number" />
	<p><fmt:formatNumber value="3200100" groupingUsed="false" />
	<p><fmt:formatNumber value="3200100" groupingUsed="true" />
	<p><fmt:formatNumber value="3200100.25" pattern="#,##0.00" />
	<p>통화 : <fmt:formatNumber value="3200100" type="currency" />
	<p><fmt:formatNumber value="3200100" type="currency" currencySymbol="\\"/>	<!-- escape -->
	<p>퍼센트 : <fmt:formatNumber value="0.25" type="percent" />
	
</body>
</html>