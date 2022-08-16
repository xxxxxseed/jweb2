<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>jstl - sql태그 예제</title>
</head>
<body>
	<%@ include file="./dataSrc.jsp" %>
	<!-- DataSource 설정: DB 연결 환경 -->
	<%-- <sql:setDataSource var="dataSource"
		driver = "com.mysql.cj.jdbc.Driver"
		url = "jdbc:mysql://localhost:3306/jspdb?useUnicode=true&serverTimezone=Asia/Seoul"
		user = "root"
		password = "12345"
	/> --%>
	
	<!-- sql 조회문 사용 sql:query-->
	<sql:query var="resultSet" dataSource="${dataSource}">
		SELECT * FROM engineer
	</sql:query>
	
	<!-- 데이터 목록을 표로 출력하기 -->
	<table border="1">
		<tr>
			<c:forEach items="${resultSet.columnNames }" var="columnName">
				<th width="100"><c:out value="${columnName }" /></th>
			</c:forEach>
		</tr>
		
		<c:forEach items="${resultSet.rowsByIndex }" var="row">
		<tr><!-- 이중 forEach(행과 열 출력) -->
			<c:forEach items="${row }" var="column">
				<td>
					<c:if test="${column != null }">
						<c:out value="${column }" />
					</c:if>
					<c:if test="${column == null }">
						&nbsp;
					</c:if>
				</td>
			</c:forEach>
		</tr>
		</c:forEach>
	</table>
</body>
</html>