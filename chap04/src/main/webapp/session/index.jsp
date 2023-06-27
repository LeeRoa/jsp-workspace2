<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.Enumeration, java.util.Date" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Session</title>
</head>
<body>

	<h3># Http Session</h3>
	
	<ol>
		<li>클라이언트가 최초로 웹 서버에 접속하면 서버는 해당 클라이언트에게 세션 ID를 발급한다.</li>
		<li>세션 ID는 클라이언트가 접속하는 데 사용한 웹 브라우저의 특정 부분(쿠키)에 보관된다. 
			(다른 웹 브라우저로 서버에 접속하면 새로운 세션 ID를 발급받는다.)</li>
		<li>웹 브라우저의 쿠키에 저장되어있는 세션 ID는
			이후 클라이언트가 요청을 보낼 때마다 항상 함께 전송되어
			세션 객체의 열쇠 역할을 한다.</li>
		<li>세션 ID는 기본적으로 사용자의 웹 브라우저가 종료될 때 사라지도록 설정되어 있다.</li>
		<li>세션 객체에 데이터를 추가하는 것은 서버의 자원을 동시 접속사 수 만큼 사용한다는 것이기 때문에 
			너무 많은 양의 데이터를 세션 영역에 저장하는 것을 지양해야 한다.</li>
	</ol>
	
	<hr>
	
	<%
		// 세션의 미활동 만료 시간을 설정
		session.setMaxInactiveInterval(5);
	%>
	
	<h3># 현제 세션 정보</h3>
	
	<ul>
		<li>SESSION ID: <%=session.getId() %></li>
		<li>최초 접속 시간: <%=new Date(session.getCreationTime()) %></li>
		<li>마지막으로 활동한 시간: <%=new Date(session.getLastAccessedTime()) %></li>
		<li>미활동 시 세션 만료 시간: <%=session.getMaxInactiveInterval() %>초</li>
	</ul>	
	
	<div><a href="./invalidate">세션 삭제하기</a></div>
	
	<h3># 현재 세션 영역의 데이터 목록 보기</h3>
	
	<div>
	<% 	
		// Enumeration : 반복문을 돌릴 수 있는 인터페이스
		Enumeration<String> names = session.getAttributeNames();
	
		// session.Attribute의 모든 name과 value를 출력
		while (names.hasMoreElements()) {
			String name = names.nextElement();
			out.print(String.format("%s=%s<br>", name, session.getAttribute(name)));
		}
	%>
	</div>
	
	<h3># 세션 영역에 데이터 추가해보기</h3>
	
	<div>
		<form action="/chap04/session/add">
			Key: 
			<select name="key">
				<option value="appetite">에피타이저 선택</option>
				<option value="main">메인 선택</option>
				<option value="fruit">과일 선택</option>
				<option value="dessert">디저트 선택</option>
			</select>
			Value: <input type="text" name="value" />
			<button type="submit">추가</button>
		</form>
	</div>
	
</body>
</html>