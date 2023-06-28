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
<title>게시글 보기</title>
<link rel="stylesheet" href="./assets/comment.css" />
</head>
<body>
	
	<h1>게시글입니다.</h1>
	
	<h3>제목: ${title}</h3>
	
	<p>${content}</p>
	
	<button onclick="history.back()">뒤로가기</button>
	
	<hr>
	
	<form action="./comment?post_id=<%=request.getParameter("post_id") %>" method="POST">
		ID: <input type="text" name="id"/>
		PW: <input type="password" name="pw" />
		<br>
		<h3>댓글을 작성해주세요.</h3>
		<textarea name="com_word" rows="10" cols="30"></textarea>
		<br>
		<input type="submit" value="댓글달기"/>
	</form>
	
	<hr>
	
	<h2>댓글</h2>
	
	<div id="comment-grid">
		<c:forEach items="${com_list}" var="com">
			<div class="comment_id">${com.com_id}</div>
			<div class="comment">${com.com_word}</div>
			<button type="button" id="remake-btn" onclick="window.location='com_remake?com_num=${com.com_num}'">수정하기</button>
			<button type="button" id="delete-btn" onclick="window.location='com_delete?com_num=${com.com_num}'">삭제하기</button>
		</c:forEach>
	</div>
	
</body>
</html>