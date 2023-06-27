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
		alert('<%= request.getParameter("user_id")%>는 사용할 수 없는 ID입니다.');
		history.back();	
	</script>
	 
</body>
</html>