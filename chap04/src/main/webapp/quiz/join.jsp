<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page
	import="java.util.Enumeration, java.util.List, java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ȸ������</title>
</head>
<body>
	
	<h3>ȸ�� ����</h3>
	
	<form action="./add" method="POST">
		ID : <input type="text" name="user_id"/> 
		PW : <input type="password" name="user_pw"/>
		<input id="join-btn" type="submit" value="ȸ������ �ϱ�" />
	</form>
	
	
</body>
</html>