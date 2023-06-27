<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Attribute Scope</title>
</head>
<body>

	<h3># Attribute</h3>
	
	<ul>
		<li>Parameter는 클라이언트에서 form으로 전달하는 데이터 였다면
			Attribute는 하나의 서블릿에서 다른 서블릿으로 전달하는 데이터다.</li>
		<li>각 Attribute는 종류별로 유효한 범위(Scope)가 존재하며 용도에 맞게 활용해야 한다.</li>
		<li>종류로는 application, session, request, page가 있다.</li>
	</ul>
	
	<h3># Attribute Scope별 특징</h3>
	
	<dl>
		<dt>Page Scope</dt>
		<dd>해당 JSP 페이지 내부에서만 사용할 수 있는 어트리뷰트.
			page scope에 등록한 attribute는 다른 곳으로 forward만 해도 사라지게 된다.</dd>
		<dt>Request Scope</dt>
		<dd>하나의 요청이 응답되기 전까지는 유지되는 attribute.
			forward, include까지는 유지되고 응답이 발생하면 사라지게 된다.</dd>
		<dt>Session Scope</dt>
		<dd>하나의 세션이 만료될 때까지 수명이 유지되는 attribute.
			사용자가 해당 서버에 처음 요청을 보내면 서버로부터 세션 ID를 발급받는다.
			해당 세션 ID는 유일한 갑싱며 클라이언트 본인임을 증명할 수 있는 유일한 수단이 된다.
			세션 ID는 시간이 모두 지나거나 웹 브라우저를 종료하면 만료된다. (ex: 은행)</dd>
		<dt>Application Scope</dt>
		<dd>WAS(웹 어플리케이션 서버)에 저장해놓는 attribute.
			서버가 꺼지기 전까지 계속 유지된다.
			세션 객체는 접속자 수만큼 존재하지만, 서버는 1대이므로 전역 변수라고 볼 수 있다.</dd>
	</dl>
	
	<button id="test-btn">어트리뷰트 추가 후 포워드해보기...</button>
	
	<script src="/chap04/javascript/index.js"></script>
	
</body>
</html>