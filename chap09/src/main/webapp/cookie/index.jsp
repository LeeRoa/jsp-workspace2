<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>쿠키</title>
</head>
<body>
	
	<h3># Http Cookie</h3>
	
	<ul>
		<li>name와 value로 된 값</li>
		<li>서버에서 생성한 쿠키를 응답에 실어보내면 클라이언트의 웹 브라우저에 보관한다.</li>
		<li>웹 브라우저는 해당 서버로 요청을 보낼 때 마다 보관하고 있던 쿠키를 요청에 함께 실어 전달한다.</li>
		<li>쿠키에 저장되는 값은 클라이언트 측에서 언제든지 위/변조가 가능하다는 것을 감안하고 사용해야 한다. (보안이 없음)</li>
		<li>쿠키는 서버에서 클라이언트의 웹 브라우저에 name/value를 추가하는 것이고
			로컬/세션 스토리지는 클라이언트 측의 자바스크립트에서 추가된다는 것이 차이점이다.</li>
	</ul>
	
	<h3># 쿠키의 설정값들</h3>
	
	<ul>
		<li>maxAge : 쿠키의 수명을 설정할 수 있다. 0은 삭제 -1은 세션을 의미한다. (초 단위)</li>
		<li>path : 쿠키가 어떤 URL 범위에서 사용될지를 설정할 수 있다.</li>
		<li>어떤 쿠키의 값 또는 수명을 수정하려고 할 때 name뿐만 아니라 path까지 정확하게 일치해야 한다.</li>
	</ul>
	
	<!-- /chap09/cookie/add -->
	<a href="./add">새 쿠키 추가하러 가기</a>
	<a href="./list.jsp">쿠키 목록 보러 가기</a>
	
</body>
</html>