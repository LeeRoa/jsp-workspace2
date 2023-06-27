<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>file include</title>
</head>
<body>
	
	<h3># include 기능을 이용해 파일 분할하기</h3>
	
	<ol>
		<li>
			JSP include : 포워드처럼 request와 response를 다른 jsp로 보냈다가 다시 돌아오는 기능
			다른 페이지로 잠깐 갔다가 돌아오는 기능이기 때문에 page scope의 값을 사용할 수는 없다.
		</li>
		<li>
			File include : 해당 파일 내용을 읽어서 현재 jsp 내부에 포함시키는 기능.
			컴파일 이전에 파일 내용을 포함시킨 후 컴파일을 진행하게 된다.
			page scope의 값을 사용할 수 있다.
		</li>
	</ol>
	
	<a href="./main.jsp">include 결과 보러가기</a>
		
</body>
</html>