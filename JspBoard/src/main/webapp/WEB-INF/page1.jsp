<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="JspBoard.model.Post, JspBoard.dao.BoardListDAO, JspBoard.dao.BoardListDAO_Impl,java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	BoardListDAO dao = new BoardListDAO_Impl();
	List<Post> post_list = dao.getAllWrite();
	
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