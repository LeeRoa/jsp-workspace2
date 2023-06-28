<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Fragments Include</title>
<style>
	#grid-container {
		display: grid;
		grid-template-columns: repeat(5, 1fr);
		column-gap: 5px;
		row-gap: 5px;
	}
	
	#grid-container > div {
		border: solid 1px black;
	}
	
	.footer {
		grid-column: 1 / 6;
	}
</style>
</head>
<body>
	
	<c:set var="message" value="I am a message from index.jsp" scope="page"/>
	
	<div id="grid-container">
		<%@ include file="./frags/thead.jsp" --%>
		<%@ include file="./frags/tbody.jsp" --%>
	</div>
	
</body>
</html>