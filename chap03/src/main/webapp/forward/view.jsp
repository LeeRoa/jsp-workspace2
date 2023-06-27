<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>보여지는 페이지</title>
</head>
<body>

	비즈니스 로직 처리가 모두 끝난 후 보여지는 페이지
	(사용자 눈에 보여지는 곳, view)
	
	<hr> 
	
	<h3># 이전 서블릿으로부터 넘겨받은 데이터들</h3>
	
	풀 네임: <%= request.getAttribute("full_name") %>
	총 가격 : <%= request.getAttribute("total_price") %>

</body>
</html>