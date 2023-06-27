<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>JSP 기본</title>
</head>
<body>
	<h3># JSP</h3>
	
	<ul>
		<li>Java Server Pages (JSP)</li>
		<li>동적 웹 페이지를 생성하기 위한 Java API</li>
		<li>HTML 안에 Java 코드를 활용할 수 있다</li>
	</ul>
	
	<h3># Web Server</h3>
	
	<ul>
		<li>요청이 오면 해당 URI의 자원을 응답한다</li>
		<li>그림 주세요 -> 그림을 응답</li>
		<li>html 페이지 주세요 -> 페이지 응답</li>
		<li>Apache-Tomcat에서 Apache를 웹 서버라고 한다</li>
		<li>정적 컨텐츠 처리</li>
	</ul>
	
	<h3># Web Application Server</h3>
	
	<ul>
		<li>JSP 페이지 주세요 -> Java 해석 및 실행 -> .html 파일 생성 -> 응답</li>
		<li>단순 응답이 아닌, 상황에 따라 변하는 동적 페이지 처리를 담당한다</li>
		<li>Apache-Tomcat에서 Tamcat이 JSP의 해석을 담당한다</li>
	</ul>
	
	<%-- JSP 주석 --%>
	
	<%-- JSP Script --%>
	
	<%--
		<%  %> : 해당 영역 내부에서 자바 코드를 사용할 수 있다 (메서드 내부 취급)
		<%= %> : 자바에서 값을 HTML로 출력한다 (out.print() 메서드로도 가능)
		<%! %> : 메서드를 선언할 수 있다 (인스턴스 영역 취급)
		<%@ %> : JSP 옵션 설정
	--%>
	
	<%
		String str = "Hello JSP!";
		System.out.println("JSP 페이지 실행중입니다.");
		
		out.print("<div style=\"color: skyblue;\">Hello!!!</div>");
	%>
	
	<%!
		String rabbit() {
			return " /)/)\n"
				+  "(  ..)\n"
				+  "(  >$)";
		}
	%>
	
	<div style="color: coral;"><%=str %></div>
	<pre style="font-size: 25px;"><%=rabbit()%></pre>
	
	<h3># .jsp 파일의 처리 순서</h3>
	
	<ol>
		<li>.jsp 파일은 우선 .java 파일로 변환한다 (1차 컴파일)</li>
		<li>변환된 .java 파일을 컴파일한다 (2차 컴파일)</li>
		<li>컴파일된 결과물이 웹 컨테이너(Tomcat)에 등록되어 사용자의 요청을 기다린다</li>
		<li>클라이언트가 해당 페이지를 요청하면 웹 컨테이너에 등록되어 있는
			컴파일 결과물을 실행하여 요청에 응답한다</li>
	</ol>
	
</body>
</html>