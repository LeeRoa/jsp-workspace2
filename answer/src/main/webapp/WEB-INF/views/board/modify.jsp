<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/resources/board/js/modify.js" var="modify_js"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	<h1>글 번호${param.id}의 수정 페이지</h1>
	
	<ul>
		<li>똑같은 ./modify로 들어오더라도 GET으로 들어오면 현재 form을 볼 수 있다.</li>
		<li>같은 주소의 POST로 요청 보내면 DB의 데이터를 업데이트 한다.</li>
		<li>form으로는 GET과 POST밖에 못 쓰기 때문에 여기선 POST로 대체한다.
			(원래 업데이트 용도로 사용되는 메서드는 PUT이다.)</li>
	</ul>
	
	<input type="hidden" name="board_id" value="${board.board_id}" form="modify-form"/>
	글쓴이: <input type="text" name="writer" value="${board.writer}" form="modify-form" readonly /> <br>
	글 제목: <input type="text" name="board_title" value="${board.board_title}" form="modify-form"/> <br>
	글 내용: <input type="text" name="board_content" value="${board.board_content}" form="modify-form"/> <br>
	비밀번호: <input id="pw-field" type="password" name="board_pw" form="modify-form"/> <br>
		
	<button id="modify-btn" type="submit" form="modify-form">수정</button>
	<button id="delete-btn">삭제</button>
	
	<form id="modify-form" action="./modify" method="POST"></form>
	
	<script src="${modify_js}"></script>
	
</body>
</html>