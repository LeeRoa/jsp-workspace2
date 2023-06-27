<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>인코딩 설정하기</title>
</head>
<body>
	
	<h3># JSP의 charset 설정</h3>
	
	<dl>
		<dt>1. meta 태그의 charset</dt>
		<dd>이 페이지를 읽는 클라이언트의 웹 브라우저가 해당 페이지를 해석할 때 사용할 html charset</dd>
		<dt>2. contentType의 charset</dt>
		<dd>이 서블릿에서 응답하는 결과물의 타입 및 charset</dd>
		<dt>3. pageEncoding의 charset</dt>
		<dd>.jsp를 .java로 변환할 때의 charset</dd>
		<dt>4. 현재 이 페이지에서 Eclipse가 사용하고 있는 charset</dt>
		<dd>우리가 하드 디스크에 저장할 때 사용할 charset
			현재 파일 우클릭 후 properties에서 확인 할 수 있다.</dd>
	</dl>
	
	<h3># GET 방식으로 한글 보내기</h3>
	
	<ol>
		<li>GET 방식 파라미터 값은 URL에 포함되어 전달되기 때문에 서버에서 해석한다. 서버의 설정을 바꿔줘야 된다.</li>
		<li>server.xml의 Connector에 URIEncoding="EUC-KR"을 추가</li>
		<li><a href="./encoding_test/servlet?taste=오렌지">서블릿으로 보내기</a></li>
		<li><a href="./encoding_test/get.jsp?taste=콜라">.jsp로 보내기</a></li>
	</ol>
	
	<h3># POST 방식으로 한글 보내기</h3>
	
	<ol>
			<li>POST 방식 파라미터 값은 요청 객체 내부에 실려서 서버에 도착하므로 URIEncoding으로 해결되지 않는다.</li>
			<li>request.setCharacterEncoding("EUC-KR")로 요청 객체의 인코딩 방식을 설정하여 해결할 수 있다.</li>
			<li><button type="submit" form="form1">서블릿으로 보내기</button></li>
			<li><button type="submit" form="form2">.jsp로 보내기</button></li>
	</ol>
	
	<form id="form1" action="./encoding_test/servlet" method="POST">
		<input type="hidden" name="price" value="천오백원" />
	</form>
	<form id="form2" action="./encoding_test/post.jsp" method="POST">
		<input type="hidden" name="price" value="이만오천원" />
	</form>
		
</body>
</html>