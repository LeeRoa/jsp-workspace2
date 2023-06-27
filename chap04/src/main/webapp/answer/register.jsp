<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원가입</title>
</head>
<body>
	
	<h3># 회원가입</h3>
	
	<form action="./register" method="POST">
		<input type="text" name="user_id"/>
		<input type="password" name="user_pwd"/>
		<input type="submit" value="가입하기"/>
	</form>
</body>
</html>