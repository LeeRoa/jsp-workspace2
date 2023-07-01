<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page
	import="JspBoard.model.Comment, JspBoard.dao.CommentsDAO,java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	CommentsDAO dao = new CommentsDAO();
	List<Comment> com_list = dao.getCommnet(Integer.parseInt(request.getParameter("post_id")));
	
	request.setAttribute("com_list", com_list);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�Խñ� ����</title>
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap')
	;
</style>
<link rel="stylesheet" href="./assets/comment.css" />
</head>
<body>

	<h1>�Խñ�</h1>

	<div id="view-grid">
		<div id="title">${title}</div>
		<div id="user_id">
			<div>����ڸ�</div>
			<div>${user_id}</div>
		</div>
		<div id="views">
			<div>��ȸ��</div>
			<div>${views}</div>
		</div>
		<div id="content">${content}</div>
	</div>

	<button id="back" onclick="location.href='./board_list?page=1'">���</button>

	<form id="login"
		action="./comment?post_id=<%=request.getParameter("post_id") %>"
		method="POST">

		<div id="login-form">
			<input id="id" type="text" name="id" placeholder="���̵� �Է�" /> <br>
			<input id="pw" type="password" name="pw" placeholder="��й�ȣ �Է�" />
		</div>
		<textarea id="com_word" name="com_word" rows="10" cols="30"
			placeholder="Ÿ���� �Ǹ��� ħ���ϰų� ���� �Ѽ��ϴ� ����� ���Ģ �� ���� ������ ���縦 ���� �� �ֽ��ϴ�."></textarea>
		<input id="submit" type="submit" value="��۴ޱ�" />

	</form>

	<div id="com-grid">
		<h2>��ü ���</h2>

		<div id="comment-grid">
			<c:forEach items="${com_list}" var="com">
				<div class="comment_id">${com.com_id}</div>
				<div class="comment">${com.com_word}</div>
				<button type="button" id="remake-btn"
					onclick="window.location='com_remake?com_num=${com.com_num}'">����</button>
				<button type="button" id="delete-btn"
					onclick="window.location='com_delete?com_num=${com.com_num}'">����</button>
			</c:forEach>
		</div>
	</div>

</body>
</html>