<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Forwarding</title>
</head>
<body>

	<h3># Forward</h3>

	<ul>
		<li>사용자가 보낸 요청을 해당 서블릿에서 처리하다가 요청 정보를 다른 서블릿으로 넘겨 이어받아 처리하게 하는 것</li>
		<li>사용자가 보낸 요청 객체를 그대로 다음 서블릿으로 전달하기 때문에 요청에 실려있던 파라미터들도 그대로 함께 전달된다.</li>
		<li>이 포워들를 이용하여 자바 코드가 많이 사용되는 처리(controller, service)는 서블릿에서 진행하고, 
			html 코드가 많이 사용되는 처리(view)는 JSP에서 이어서 진행할 수 있다.</li>
	</ul>

	<h3># Redirect</h3>
	
	<ul>
		<li>요청 보낸 클라이언트가 다른 주소로 다시 요청하라고 응답하는 것</li>
		<li>리다이렉트 응답을 받은 클라이언트(웹 브라우저)에서는 새로운 요청을 만들어 보내기
			때문에 이전 요청에 보냈던 파라미터는 기본적으로는 남아있을 수 없다.</li>
	</ul>
	
	<h3># forward의 용도</h3>
	
	<ul>
		<li>서블릿은 자바 코드를 작성하기에 편리하고 JSP는 html 코드를 작성하기에 편리하다.</li>
		<li>하나의 요청에 대해서 1차로 서블릿에서 자바로 처리를 모두 마친 후 포워드를 통해 2차로 html 코드를 생성하여 응답하는 방식을 많이 사용한다.</li>
		<li>이것을 view와 controller의 분리라고 한다.</li>
		<li>실제 view 페이지의 경로가 노출되는 것이 아니라 forward를 보낸 서블릿의 주소가 그대로 유지된다. (확장자를 감출 수 있다.)</li>
	</ul>
	
	<h3># redirect의 용도</h3>
	
	<ul>
		<li>사용자가 정상적이지 않은 방법으로 접속한 경우를 막기 위해 사용</li>
		<li>사용자가 요총에 함께 실어보냈던 데이터들을 새로고침으로 재사용하지 못하도록 막는 용도</li>
		<li>ex> 사용자가 글을 쓴 후에 새로고침으로 같은 글이 계속 등록되는 것은 막아야한다.</li>
	</ul>
	
	<h3># request의 attribute</h3>
	
	<ul>
		<li>첫 번째 서블릿에서 얻어낸 처리 결과물을 view 페이지에서 사용하고 싶을 때 요청 객체의 attribute에 실어 보낼 수 있다.</li>
		<li>파라미터와 마찬가지로 Key-Value 방식을 사용한다.</li>
		<li>실어놓을 때 : setAttribute("key", value)
			꺼낼 때 : getAttribute("key")</li>
		<li>어트리뷰트에 실어 놓은 값은 꺼낼 때 해당 타입이 Object로 나온다.
			(필요하다면 다운 캐스팅하여 원래대로 사용할 수 있다.)</li>
	</ul>
	
	<h3># forward</h3>

	<form id="form1" action="/chap03/forwardtest" method="POST"></form>
		<input type="text" name="type" value="drink" form="form1"/>
		<input type="text" name="name" value="Americano" form="form1"/>
		<input type="text" name="price" value="7000" form="form1"/>
		<input type="text" name="qty" value="5" form="form1"/>
		<input type="submit" value="보내기" form="form1"/>
	
	<h3># redirect</h3>
	
	<form id="form2" action="/chap03/redirect_test" method="POST"></form>
		<input type="text" name="type" value="drink" form="form2"/>
		<input type="text" name="name" value="Americano" form="form2"/>
		<input type="text" name="price" value="7000" form="form2"/>
		<input type="text" name="qty" value="5" form="form2"/>
		<input type="submit" value="보내기" form="form2"/>	
</body>
</html>