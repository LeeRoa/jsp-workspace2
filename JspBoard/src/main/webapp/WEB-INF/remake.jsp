<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>게시판 수정 폼</title>
<link rel="stylesheet" href="./assets/post_remake.css" />
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap')
	;
</style>
</head>
<body>
	<h1>게시판 수정</h1>

	<form id="remake-form" method="post"
		action="./remake2?post_id=<%=request.getParameter("post_id")%>">
		<div id="writer">
			<div>작성자</div>
			<div>${post.user_id}</div>
		</div>
		<div id="title">
			<div>제목</div>
			<div>
				<input id="title-form" type="text" name="title"
					value="${post.title}" />
			</div>
		</div>
		<div id="content">
			<div>내용</div>
			<textarea id="textarea" name="content">${post.post_word}</textarea>
		</div>
		<div id="pw">
			<div>비밀번호</div>
			<div id="btn">
				<input type="password" name="password" />
				<div id="btns">
					<input type="submit" value="수정"> <input type="button"
						value="취소" onclick="history.back()">
				</div>
			</div>
		</div>
	</form>
</body>
</html>