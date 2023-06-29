<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page
	import="JspBoard.model.Post, JspBoard.dao.BoardListDAO, JspBoard.dao.BoardListDAO_Impl,java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>게시판</title>
<style>
  @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap');
</style>
<link rel="stylesheet" href="./assets/post.css" />
</head>
<body>

	<h1 id="title1">익명 게시판</h1>


	<div id="post-grid">
		<div id="num">순번</div>
		<div id="title">제목</div>
		<div id="user">등록자명</div>
		<div id="view">조회수</div>
		<div id="remake">수정</div>
		<div id="delete">삭제</div>
		<%
		BoardListDAO dao = new BoardListDAO_Impl();
		List<Post> post_list = dao.get10Write(2);
		List<Post> all_list = dao.getAllWrite();
		int size = all_list.size();
		System.out.println(size);
		request.setAttribute("post_list", post_list);
		%>

		<c:forEach items="${post_list}" var="post">
			<div class="post">${post.post_id}</div>
			<button class="title" name="title" value="${post.title}"
				onclick="location.href='./click?post_id=${post.post_id}'; ">
				${post.title}</button>
			<div class="post">${post.user_id}</div>
			<div>${post.views}</div>
			<button type="button" id="remake-btn"
				onclick="window.location='remake?post_id=${post.post_id}'">수정하기</button>
			<button type="button" id="delete-btn"
				onclick="window.location='delete?post_id=${post.post_id}'">삭제하기</button>
		</c:forEach>
	</div>
	
	<button id="post-btn" onclick="location.href='./post'">글쓰기</button>

	<% if (size > 10) { %>
	<div id="page">
		<% for (int i = 1; i <= (size / 10 + 1); ++i) { %>
		<button id="btn<%=i%>" onclick="window.location='board_list<%=i%>'"><%=i%></button>
		<% } %>
	</div>
	<% } %>


	<script src="./assets/post.js"></script>

</body>
</html>