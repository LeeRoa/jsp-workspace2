<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page
	import="java.util.Enumeration, java.util.List, java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Quiz</title>
</head>
<body>
	
	<h3># Quiz�� �䱸����</h3>
	
	<ul>
		<li>���̵�� ��й�ȣ�� �Է��ϸ� �α����� �� �� �ִ�.</li>
		<li>ȸ�������� ���̵�� ��й�ȣ�� �Է��ϸ� �Ϸ�ȴ�. (���̵� �ߺ��� üũ�ؾ� ��)</li>
		<li>�α��ο� �����ϰ� ���� ������ �����Ǵ� ���� �α����� �����Ǿ�� �Ѵ�.</li>
		<li>�α��� �� ����� ���ο� �޸� ����� �� �ְ�, ������ ����ߴ� �޸�鵵 �� �� �ִ�.</li>
		<li>������ �������� �� ��� ȸ���� ������� ��� ����.</li>
		<li>������ ������ ������ ���� ��� ������ ���� ���� �ؿ� ����� �� �� (������ quiz ��Ű���� �� ��)</li>
	</ul>
	
	<hr>
	
	<% if (request.getParameter("user") == null) { %>
	<h3>�α���</h3>
	
	<form action="./login" method="POST">
		ID : <input type="text" name="user_id"/>
		PW : <input type="password" name="user_pw"/>
		<button type="submit">�α���</button>
	</form>
	
	<button style="margin: 10px;" onclick="location.href='./join.jsp'">ȸ������ �ϱ�</button>
		
	<% } else { %>
	
	<h3>�޸���</h3>
	
	<ul>
		<li>�ۼ��� �޸� �����ϴ�.</li>
	</ul>
	
	<% } %>
	
</body>
</html>