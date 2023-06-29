<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page
	import="JspBoard.model.Post, JspBoard.dao.BoardListDAO, JspBoard.dao.BoardListDAO_Impl,java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�Խ���</title>
<style>
  @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap');
</style>
<link rel="stylesheet" href="./assets/post.css" />
</head>
<body>

	<h1 id="title1">�͸� �Խ���</h1>


	<div id="post-grid">
		<div id="num">����</div>
		<div id="title">����</div>
		<div id="user">����ڸ�</div>
		<div id="view">��ȸ��</div>
		<div id="remake">����</div>
		<div id="delete">����</div>
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
				onclick="window.location='remake?post_id=${post.post_id}'">�����ϱ�</button>
			<button type="button" id="delete-btn"
				onclick="window.location='delete?post_id=${post.post_id}'">�����ϱ�</button>
		</c:forEach>
	</div>
	
	<button id="post-btn" onclick="location.href='./post'">�۾���</button>

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