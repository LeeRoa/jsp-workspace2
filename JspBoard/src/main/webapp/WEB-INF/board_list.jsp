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
<title>�Խ���</title>
<link rel="stylesheet" href="./assets/post.css" />
</head>
<body>

	<h1>�Խ����Դϴ�.</h1>

	<button id="login-btn" onclick="location.href='./login'">�α���
		�Ϸ�����</button>
	<button id="post-btn" onclick="location.href='./post'">�Խñ� �ۼ�</button>

	<h3>�� ���</h3>

	<div id="post-grid">
		<div id="num">��ȣ</div>
		<div id="title">����</div>
		<div id="user">�۾���</div>
		<div id="view">��ȸ��</div>
		<div id="remake">����</div>
		<div id="delete">����</div>
		<c:forEach items="${post_list}" var="post">
			<div class="post">${post.post_id}</div>
			<button name="title" value="${post.title}"
				onclick="location.href='./click?title=${post.title}&content=${post.post_word}'">
				${post.title}</button>
			<div class="post">${post.user_id}</div>
			<div>${post.views}</div>
			<button type="button" id="remake-btn" onclick="window.location='remake?post_id=${post.post_id}'">�����ϱ�</button>
			<button type="button" id="delete-btn" onclick="window.location='delete?post_id=${post.post_id}'">�����ϱ�</button>
		</c:forEach>
	</div>

	<script src="./assets/post.js"></script>

</body>
</html>