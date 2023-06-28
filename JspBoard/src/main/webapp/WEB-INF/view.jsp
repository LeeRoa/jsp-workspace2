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
<link rel="stylesheet" href="./assets/comment.css" />
</head>
<body>
	
	<h1>�Խñ��Դϴ�.</h1>
	
	<h3>����: ${title}</h3>
	
	<p>${content}</p>
	
	<button onclick="history.back()">�ڷΰ���</button>
	
	<hr>
	
	<form action="./comment?post_id=<%=request.getParameter("post_id") %>" method="POST">
		ID: <input type="text" name="id"/>
		PW: <input type="password" name="pw" />
		<br>
		<h3>����� �ۼ����ּ���.</h3>
		<textarea name="com_word" rows="10" cols="30"></textarea>
		<br>
		<input type="submit" value="��۴ޱ�"/>
	</form>
	
	<hr>
	
	<h2>���</h2>
	
	<div id="comment-grid">
		<c:forEach items="${com_list}" var="com">
			<div class="comment_id">${com.com_id}</div>
			<div class="comment">${com.com_word}</div>
			<button type="button" id="remake-btn" onclick="window.location='com_remake?com_num=${com.com_num}'">�����ϱ�</button>
			<button type="button" id="delete-btn" onclick="window.location='com_delete?com_num=${com.com_num}'">�����ϱ�</button>
		</c:forEach>
	</div>
	
</body>
</html>