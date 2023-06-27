<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Form tag</title>
</head>
<body>

	<h3># Form tag</h3>
	
	<ul>
		<li>데이터를 실어서 서버로 요청을 보낼 수 있는 태그</li>
		<li>form 내부의 input 태그들에 들어있는 값들을 서버로 보내게 된다.</li>
		<li>실어보낸 데이터는 서버측의 request 객체에서 확인할 수 있다.</li>
		<li>데이터는 Key-Value 방식으로 전송된다.</li>
		<li>input 태그의 name 속성 값이 Key 역할을 한다.</li>
		<li>input 태그의 value 속성 값이 Value 역할을 한다.</li>
	</ul>
	
	<hr>
	
	<h3># 다른 JSP 파일로 데이터와 함께 요청 보내보기</h3>
		
	<!-- action 속성: 요청을 보낼 URL을 적는 속성. 
		해당 form태그 내부에서 submit이 발생했을 때 요청을 보낸다. -->
	<form action="http://localhost:8090/chap02/form/order.jsp">
		<select name="drink">
			<option value="Americano">아메리카노</option>
			<option value="GreenTea">녹차</option>
			<option value="RedTea">홍차</option>
			<option value="Water">물</option>
		</select>
		<!-- 하나의 name에 여러 value를 보내는 경우도 존재한다. (ex: checkbox) -->
		<div>
			<input type="checkbox" id="op1" name="drink-option" value="ice"/>
			<label for="op1">얼음 많이</label> <br>
			<input type="checkbox" id="op2" name="drink-option" value="syrup"/>
			<label for="op2">시럽 추가</label> <br>
			<input type="checkbox" id="op3" name="drink-option" value="shot"/>
			<label for="op3">샷 추가</label> <br>
		</div>
		<input type="number" name="qty" value="3"/>
		<input type="submit" /> <!-- 전송 버튼 -->
	</form>
	
	<hr>
	
	<h3># Servlet으로 데이터와 함께 요청 보내보기</h3>
	
	<form action="http://localhost:8090/chap02/form/order">
		<select name="drink">
			<option value="Americano">아메리카노</option>
			<option value="GreenTea">녹차</option>
			<option value="RedTea">홍차</option>
			<option value="Water">물</option>
		</select>
		<!-- 하나의 name에 여러 value를 보내는 경우도 존재한다. (ex: checkbox) -->
		<div>
			<input type="checkbox" id="op1" name="drink-option" value="ice"/>
			<label for="op1">얼음 많이</label> <br>
			<input type="checkbox" id="op2" name="drink-option" value="syrup"/>
			<label for="op2">시럽 추가</label> <br>
			<input type="checkbox" id="op3" name="drink-option" value="shot"/>
			<label for="op3">샷 추가</label> <br>
		</div>
		<input type="number" name="qty" value="3"/>
		<input type="submit" /> <!-- 전송 버튼 -->
	</form>
	
	<h3># GET method와 POST method</h3>
	
	<ul>
		<li>form의 method 속성을 설정하지 않을 시 기본 동작은 GET이다.</li>
		<li>GET 방식으로 form 요청을 보내면 데이터가 다음과 같이 주소창에 보이면서 전송된다.
			(uri?key=value&key-value&...)</li>
		<li>GET 방식은 주소창에 보이기 대문에 비밀번확 타은 민감한 정보가 포함된 데이터를 보내기에는 적합하지 않다.</li>
		<li>POST 방식은 주소창에 데이터가 노출되지 않고 전송된다.</li>
		<li>POST 방식 전송 시 데이터는 request의 body라는 부분에 포함되어 전송된다.</li>
	</ul>
	
	<h3># POST 방식으로 데이터 보내기</h3>
	
	<!-- 현재 (index.jsp) /cha02/form/index.jsp이기 때문에 ./order 상대경로를 사용하면 /chap02/form/order로 가게된다. -->
	<form action="./order" method="POST">
		<!-- input type hidden : 눈에 보이지는 않지만 데이터는 전송된다.  -->
		<input type="hidden" name="qty" value="123"/>
		<input type="submit" value="POST 요청 보내기" />
	</form>
	
	<h3># GET 방식으로 데이터 보내기</h3>
	
	<!-- GET 방식 요청은 URL 뒤에 직접 파라미터를 입력하는 것도 가능하다. -->
	<a href="./order?qty=999">GET 방식 요청 보내기</a>
	
</body>
</html>