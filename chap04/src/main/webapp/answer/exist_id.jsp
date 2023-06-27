<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	<script>
		alert('<%= request.getParameter("user_id")%>는 중복된 아이디입니다!');
		history.back();
	</script>
	
</body>
</html>