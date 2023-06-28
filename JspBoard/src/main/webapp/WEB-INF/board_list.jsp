<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page
	import="JspBoard.model.Post, JspBoard.dao.BoardListDAO, JspBoard.dao.BoardListDAO_Impl,java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	BoardListDAO dao = new BoardListDAO_Impl();
	List<Post> post_list = dao.getAllWrite();
	
	request.setAttribute("post_list", post_list);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>게시판</title>
<link rel="stylesheet" href="./assets/post.css" />
</head>
<body>

	<h1>게시판입니다.</h1>

	<button id="login-btn" onclick="location.href='./login'">로그인
		하러가기</button>
	<button id="post-btn" onclick="location.href='./post'">게시글 작성</button>

	<h3>글 목록</h3>

	<div id="post-grid">
		<div id="num">번호</div>
		<div id="title">제목</div>
		<div id="user">글쓴이</div>
		<div id="view">조회수</div>
		<div id="remake">수정</div>
		<div id="delete">삭제</div>
		<c:forEach items="${post_list}" var="post">
			<div class="post">${post.post_id}</div>
			<button name="title" value="${post.title}"
				onclick="location.href='./click?title=${post.title}&content=${post.post_word}'">
				${post.title}</button>
			<div class="post">${post.user_id}</div>
			<div>${post.views}</div>
			<button type="button" id="remake-btn" onclick="window.location='remake?post_id=${post.post_id}'">수정하기</button>
			<button type="button" id="delete-btn" onclick="window.location='delete?post_id=${post.post_id}'">삭제하기</button>
		</c:forEach>
	</div>

	<script src="./assets/post.js"></script>

</body>
</html>