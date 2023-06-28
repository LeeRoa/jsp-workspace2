<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>게시글 보기</title>
</head>
<body>
	
	<h1>게시글입니다.</h1>
	
	<h3>제목: ${title}</h3>
	
	<p>${content}</p>
	
	<button onclick="history.back()">뒤로가기</button>
	
	<hr>
	
	<form action="">
		ID: <input type="text" name="id"/>
		PW: <input type="password" name="pw" />
		<br>
		<br>
		댓글: <input type="text" name="comment"/>
		<input type="submit" value="댓글달기"/>
	</form>
	
	<hr>
	
	
	
</body>
</html>