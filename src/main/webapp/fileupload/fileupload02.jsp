<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>다중 파일 업로드</title>
</head>
<body>
	<form action="fileupload02_process.jsp" method="post" enctype="multipart/form-data">
		<p>이 름1: <input type="text" name="name1">
		   제 목1: <input type="text" name="title1">
		   파 일1: <input type="file" name="filename1">
		<p>이 름2: <input type="text" name="name2">
		   제 목2: <input type="text" name="title2">
		   파 일2: <input type="file" name="filename2">
		<p>이 름3: <input type="text" name="name3">
		   제 목3: <input type="text" name="title3">
		   파 일3: <input type="file" name="filename3">
	    <p><input type="submit" value="파일올리기">
	</form>
</body>
</html>