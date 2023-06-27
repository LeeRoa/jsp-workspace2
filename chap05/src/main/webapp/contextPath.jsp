<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<h3># Context Path</h3>
	
	<ul>
		<li>현재 프로젝트의 Context로 접근할 수 있는 경로를 의미한디.
			(컨텍스트 등록시 server.xml에 설정해놓는 값)</li>
		<li>Eclipse에서 Add and Remove로 프로젝트를 추가하면 
			실제로는 server.xml의 context가 수정된다.</li>
		<li>context의 path 속성을 수정하면 접속 경로를 변경할 수 있다.</li>
		<li>request.getContextPath()를 활용하면 server.xml의 컨텍스트 설정이 변하더라도 
			유효한 링크 주소를 만들 수 있다.</li>
	</ul>
	
	<a href="/chap05/encoding.jsp">encoding test하러 가기 (설정이 바뀌면 유효하지 않을 수도 있는 링크)</a> <br>
	<a href="<%=request.getContextPath() %>/encoding.jsp">encoding test하러 가기 (설정이 바뀌더라도 항상 유효한 링크)</a> <br>
	
	<script>
		// 자바 스크립트에서는 let을 쓰지 않으면 중괄호가 제대로 작동하지 않는 경우가 있다.
		var num = 0;
			
		if (true) {
			var num = 10;
			console.log("if문 내부(블록):", num);
		}
		
		console.log("바깥쪽(글로벌) 영역:", num);
	</script>
	
</body>
</html>