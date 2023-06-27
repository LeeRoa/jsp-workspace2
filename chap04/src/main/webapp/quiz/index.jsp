<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page
	import="java.util.Enumeration, java.util.List, java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Quiz</title>
</head>
<body>
	
	<h3># Quiz의 요구사항</h3>
	
	<ul>
		<li>아이디와 비밀번호를 입력하면 로그인을 할 수 있다.</li>
		<li>회원가입은 아이디와 비밀번호만 입력하면 완료된다. (아이디 중복은 체크해야 함)</li>
		<li>로그인에 성공하고 나면 세션이 유지되는 동안 로그인이 유지되어야 한다.</li>
		<li>로그인 한 사람은 새로운 메모를 등록할 수 있고, 예전에 등록했던 메모들도 볼 수 있다.</li>
		<li>서버를 종료했을 때 모든 회원이 사라져도 상관 없다.</li>
		<li>페이지 개수에 제한은 없고 모든 내용은 퀴즈 폴더 밑에 만들어 둘 것 (서블릿은 quiz 패키지에 둘 것)</li>
	</ul>
	
	<hr>
	
	<% if (request.getParameter("user") == null) { %>
	<h3>로그인</h3>
	
	<form action="./login" method="POST">
		ID : <input type="text" name="user_id"/>
		PW : <input type="password" name="user_pw"/>
		<button type="submit">로그인</button>
	</form>
	
	<button style="margin: 10px;" onclick="location.href='./join.jsp'">회원가입 하기</button>
		
	<% } else { %>
	
	<h3>메모장</h3>
	
	<ul>
		<li>작성된 메모가 없습니다.</li>
	</ul>
	
	<% } %>
	
</body>
</html>