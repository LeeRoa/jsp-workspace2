<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/resources/board/css/list.css" var="css" />
<c:url value="/resources/board/js/list.js" var="js" />
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>게시판(${page.start} ~ ${page.end})</title>
<link rel="stylesheet" href="${css}" />
</head>
<body>

<div id="board-container">
	<div><b>글번호</b></div>
	<div><b>제목</b></div>
	<div><b>글쓴이</b></div>
	<div><b>조회수</b></div>
	<div></div>
<c:forEach items="${boards}" var="board">
	<div>${board.board_id}</div>
	<div>
		<span class="board-title" data-id="${board.board_id}">${board.board_title}</span>
	</div>
	<div>${board.writer}</div>
	<div>${board.board_view}</div>	
	<div><button class="modify-btn" data-num="${board.board_id}" data-birth-day="0629">수정/삭제</button></div>
</c:forEach>
</div>

<div id="pagination">
	<c:forEach begin="1" end="${page.lastPage}" var="i">
	<c:choose>
		<c:when test="${page.currPage eq i}">
			<button class="page-btn curr-page" data-page="${i}">${i}</button>
		</c:when>
		<c:otherwise>
			<button class="page-btn" data-page="${i}">${i}</button>
		</c:otherwise>
	</c:choose>
	</c:forEach>
</div>

<script src="${js}"></script>

</body>
</html>