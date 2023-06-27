<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>각 영역 어트리뷰트 꺼내서 확인해보기</title>
</head>
<body>
	
	<h3># 확인용</h3>
	
	<ul>
		<li>page : <%= pageContext.getAttribute("flavor") %></li>
		<li>request : <%= request.getAttribute("flavor") %></li>
		<li>session : <%= session.getAttribute("flavor") %></li>
		<li>application : <%= application.getAttribute("flavor") %></li>
	</ul>

</body>
</html>