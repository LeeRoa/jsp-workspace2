<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�۾���</title>
</head>
<body>
	
	<h1>�۾���</h1>
	
	<form action="./list">
		ID: <input type="text" name="id" />
		PW: <input type="password" name="pw" /> <br><br>
		���� : <input type="text" name="title" />
		<input type="submit" value="���ε�" />
		<h4>���� �ۼ�</h4>
		<textarea name="content" placeholder="Input some text." style="width: 80%; height: 100px;"></textarea>
	</form>
</body>
</html>