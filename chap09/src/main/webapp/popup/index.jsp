<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/resources/js/popup/index.js" var="js1" />
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>팝업창 열기</title>
</head>
<body>
	
	<input id="addr" type="text" />
	<button id="btn1">팝업 열기</button>
	
	<script src="${js1}"></script>
	
</body>
</html>