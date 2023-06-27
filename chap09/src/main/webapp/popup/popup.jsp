<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>버튼을 누르면 새 창에서 열리는 페이지</title>
</head>
<body>
		
	새 창에서 열릴 내용입니다... <br>
	<br>
	이 팝업창을 연 부모창은 opener라는 객체로 접근할 수 있습니다.
	
	<script src="<%= request.getContextPath() %>/resources/js/popup/popup.js"></script>
	
</body>
</html>