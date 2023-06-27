<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.util.List, java.util.Collections"%>
<%
	List<String> paths = (List)request.getAttribute("img_paths");
	String contextPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>갤러리</title>
<link rel="stylesheet"
	href="<%=contextPath %>/resources/css/gallery.css" />
</head>
<body>

	<h5>/chap06/gallery/index로 이곳에 접속하게 만들어보기</h5>

	<div class="header" id="header">
		<h1>Image Grid</h1>
		<p>Click on the buttons to change the grid view.</p>
		<button class="btn active" onclick="one()">1</button>
		<button class="btn" onclick="two()">2</button>
		<button class="btn" onclick="four()">4</button>
	</div>
	
	<div class="row">
		<div class="column">
			<% 	Collections.shuffle(paths);
				for (String path : paths) { %>
			<img src="<%=path %>" alt="" />
			<% } %>
		</div>
		<div class="column">
			<% 	Collections.shuffle(paths);
				for (String path : paths) { %>
			<img src="<%=path %>" alt="" />
			<% } %>
		</div>
		<div class="column">
			<% Collections.shuffle(paths); 
			for (String path : paths) { %>
			<img src="<%=path %>" alt="" />
			<% } %>
		</div>
		<div class="column">
			<% for (String path : paths) { %>
			<img src="<%=path %>" alt="" />
			<% } %>
		</div>
	</div>
	
	<script src="<%=contextPath %>/resources/js/gallery.js"></script>
</body>
</html>