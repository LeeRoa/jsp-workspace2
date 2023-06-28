<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원가입</title>
</head>
<body>
	
	<h1>아이디와 비밀번호를 입력해주세요.</h1>
		
	<form action="./login" method="POST">
		ID: <input type="text" name="id" />
		PW: <input type="password" name="pw" />
		<input type="submit" value="가입하기"/>
	</form>
		
	
</body>
</html>