<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�Խñ� ����</title>
</head>
<body>
	
	<h1>�Խñ��Դϴ�.</h1>
	
	<h3>����: ${title}</h3>
	
	<p>${content}</p>
	
	<button onclick="history.back()">�ڷΰ���</button>
	
	<hr>
	
	<form action="">
		ID: <input type="text" name="id"/>
		PW: <input type="password" name="pw" />
		<br>
		<br>
		���: <input type="text" name="comment"/>
		<input type="submit" value="��۴ޱ�"/>
	</form>
	
	<hr>
	
	
	
</body>
</html>