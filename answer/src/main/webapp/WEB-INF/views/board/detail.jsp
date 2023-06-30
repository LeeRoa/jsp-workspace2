<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/resources/board/js/detail.js" var="detail_js"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>${param.id}번 글 내용</title>
</head>
<body>
	
	<h1>글 번호${param.id} 상세 내용</h1>
	
	제목 : ${board.board_title} <br>
	내용 : ${board.board_content} <br>
	글쓴이 : ${board.writer} <br>
	조회수 : ${board.board_view} <br>
	글 비밀번호 : ${board.board_pw} <br>
	
	<button id="modify-btn" data-id="${board.board_id}">수정/삭제</button>
	<button id="list-btn">목록</button>
	<script src="${detail_js}"></script>
	
</body>
</html>