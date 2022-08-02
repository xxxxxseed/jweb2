<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>점수 관리</title>
</head>
<body>
	<h2>점수를 입력해 주세요</h2>
	<form action="./scoreTest.jsp" method="get" 
			name="scoreForm">
		<p>점수: <input type="text" name="score">
				<input type="button" value="학점출력" onclick="checkScore()">
	</form>
	
	<script type="text/javascript">
		let form = document.scoreForm;
	
		//점수를 입력해주세요. 메시지 띄우기
		function checkScore(){
			if(form.score.value == ""){
				alert('점수를 입력해주세요');
				form.score.focus();
				return false;	//페이지 바뀌지 않게 막아줌
			}else if(form.score.value > 100){
				alert('100점을 초과할 수 없습니다');
				form.score.select();
				return false;
			}
			form.submit();		//폼을 전송함
		}
	
	</script>
</body>
</html>