<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>로그인</title>
</head>
<body>
	
	<h1>로그인을 해주세요.</h1>
		
	<form action="./list" method="POST">
		ID: <input type="text" name="id" />
		PW: <input type="password" name="pw" />
		<input type="submit" value="로그인하기"/>
	</form>
	
	<button onclick="location.href='./join'">회원가입 하기</button>
	
</body>
</html>