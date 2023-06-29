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
<c:forEach items="${boards}" var="board">
	<div>${board.board_id}</div>
	<div>${board.board_title}</div>
	<div>${board.writer}</div>
	<div><button class="modify-btn" data-num="${board.board_id}" data-birth-day="0629">수정/삭제</button></div>
</c:forEach>
</div>

<script src="${js}"></script>

</body>
</html>