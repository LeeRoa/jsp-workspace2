<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�������� ������</title>
</head>
<body>

	����Ͻ� ���� ó���� ��� ���� �� �������� ������
	(����� ���� �������� ��, view)
	
	<hr> 
	
	<h3># ���� �������κ��� �Ѱܹ��� �����͵�</h3>
	
	Ǯ ����: <%= request.getAttribute("full_name") %>
	�� ���� : <%= request.getAttribute("total_price") %>

</body>
</html>