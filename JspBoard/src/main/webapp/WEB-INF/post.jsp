<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>글쓰기</title>
</head>
<body>
	
	<h1>글쓰기</h1>
	
	<form action="./list">
		ID: <input type="text" name="id" />
		PW: <input type="password" name="pw" /> <br><br>
		제목 : <input type="text" name="title" />
		<input type="submit" value="업로드" />
		<h4>내용 작성</h4>
		<textarea name="content" placeholder="Input some text." style="width: 80%; height: 100px;"></textarea>
	</form>
</body>
</html>