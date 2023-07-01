<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>글쓰기</title>
<link rel="stylesheet" href="./assets/upload.css" />
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap')
	;
</style>
</head>
<body>
	
	<h1>익명 게시판</h1>
	
	<form id="post-form" action="./list">
		<div id="writer">
			<div>작성자</div>
			<div>
			<input type="text" name="id" />
			</div>
		</div>
		<div id="pw">
			<div>비밀번호</div>
			<div>
				<input type="password" name="pw" />
			</div>
		</div>
		<div id="title">
			<div>제목</div>
			<div>
				<input id="title-form" type="text" name="title" />
			</div>
		</div>
		<div id="content">
			<div>내용</div>
			<textarea id="textarea" name="content"></textarea>
		</div>
		<div id="ok">
			<input id="submit" type="submit" value="확인" />
			<button type="button" onclick="location.href='./board_list?page=1'">취소</button>
		</div>
	</form>
</body>
</html>