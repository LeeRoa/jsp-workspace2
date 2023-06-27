<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<% request.setCharacterEncoding("EUC-KR"); %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>POST data</title>
</head>
<body>
	
	한글 데이터 : <%=	request.getParameter("price") %>
	
</body>
</html>