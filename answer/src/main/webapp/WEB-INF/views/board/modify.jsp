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
	
	<h1>�� ��ȣ${param.id}�� ���� ������</h1>
	
	<ul>
		<li>�Ȱ��� ./modify�� �������� GET���� ������ ���� form�� �� �� �ִ�.</li>
		<li>���� �ּ��� POST�� ��û ������ DB�� �����͸� ������Ʈ �Ѵ�.</li>
		<li>form���δ� GET�� POST�ۿ� �� ���� ������ ���⼱ POST�� ��ü�Ѵ�.
			(���� ������Ʈ �뵵�� ���Ǵ� �޼���� PUT�̴�.)</li>
	</ul>
	
	<input type="hidden" name="board_id" value="${board.board_id}" form="modify-form"/>
	�۾���: <input type="text" name="writer" value="${board.writer}" form="modify-form" readonly /> <br>
	�� ����: <input type="text" name="board_title" value="${board.board_title}" form="modify-form"/> <br>
	�� ����: <input type="text" name="board_content" value="${board.board_content}" form="modify-form"/> <br>
	��й�ȣ: <input id="pw-field" type="password" name="board_pw" form="modify-form"/> <br>
		
	<button id="modify-btn" type="submit" form="modify-form">����</button>
	<button id="delete-btn">����</button>
	
	<form id="modify-form" action="./modify" method="POST"></form>
	
	<script src="${modify_js}"></script>
	
</body>
</html>