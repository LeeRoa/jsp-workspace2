<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�α���</title>
</head>
<body>
	
	<h1>�α����� ���ּ���.</h1>
		
	<form action="./list" method="POST">
		ID: <input type="text" name="id" />
		PW: <input type="password" name="pw" />
		<input type="submit" value="�α����ϱ�"/>
	</form>
	
	<button onclick="location.href='./join'">ȸ������ �ϱ�</button>
	
</body>
</html>