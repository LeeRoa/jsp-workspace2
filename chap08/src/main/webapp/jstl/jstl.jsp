<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	// ※ 비즈니스 로직을 거쳐 데이터 베이스에서 조회한 데이터라고 가정
	request.setAttribute("animals", 
			new String[] {"강아지", "고양이", "원숭이", "호랑이", "돼지", "당나귀", "사자"});
	
	java.util.List<chap08.model.Food> food_list = new java.util.ArrayList<>();

	request.setAttribute("food_list", food_list);
	
	java.util.Collections.addAll(
			food_list, 
			new chap08.model.Food("kb", "분식", "김밥"), 
			new chap08.model.Food("dbk", "분식", "떡볶이"), 
			new chap08.model.Food("sd", "분식", "순대"));
	
	request.setAttribute("colors", "red/orange/green/purple/skyblue/tomato");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>JSP Standard Tag Library</title>
</head>
<body>

	<h3># JSTL (JSP Standard Tag Library)</h3>

	<ul>
		<li>JSP에서 자바 데이터를 사용하기에 코드가 너무 지저분해져서 등장한 커스텀 태그 라이브러리</li>
		<li>주로 뷰 쪽에서 자주 쓰이는 기능들을 html태그와 유사한 형식으로 사용할 수 있게 만들어 두었다.</li>
		<li>자바의 모든 기능을 사용할 수 있는 것은 아니지만 뷰 페이지를 만들기에는 충분한 기능들이 태그로 구현되어 있다.</li>
		<li>JSTL은 태그 라이브러리이므로 태그 라이브러리를 import하는 문법을 해당 페이지 맨 위에 추가해야 사용할 수 있다.</li>
		<li>다양한 라이브러리 다운받는 곳 : 구글에 maven repository 검색</li>
	</ul>
	
	<h3># JSTL core</h3>
	
	<dl>
		<dt>&lt;c:set&gt;</dt>
		<dd>setAttribute를 편리하게 사용할 수 있는 태그</dd>
		<dt>&lt;c:if&gt;</dt>
		<dd>태그 형식으로 if문을 수행할 수 있다. else if와 else는 없다.</dd>
		<dt>&lt;c:choose&gt;, &lt;c:when&gt;, &lt;c:otherwise&gt;</dt>
		<dd>if, else if, else처럼 사용할 수 있는 태그</dd>
		<dt>&lt;c:forEach&gt;</dt>
		<dd>숫자를 이용한 반복문과 순차적으로 꺼내는 반복문(iterable) 골라서 사용할 수 있다.</dd>
		<dt>&lt;c:forTockens&gt;</dt>
		<dd>전달한 문자열을 split한 결과로 반복문을 수행하는 문법</dd>
		<dt>&lt;c:url&gt;</dt>
		<dd>알아서 url에 contextPath를 추가해주는 태그
			복잡한 url을 어트리뷰트에 추가하여 사용할 수도 있고, 바로사용할 수도 있다.</dd>
	</dl>
	
	<h3># varStatus : JSTL 반복문의 정보를 담고있는 객체</h3>
	
	<ul>
		<li>varStatus.index : 현재 인덱스를 볼 수 있다. (0부터 시작하는 값)</li>
		<li>varStatus.count : 현재의 개수를 셀 수 있다. (1부터 시작하는 값)</li>
		<li>varStatus.first : 현재 첫 번째 반복이라면 true</li>
		<li>varStatus.last : 지금이 마지막 반복이라면 true</li>
		<li>varStatus.begin : 시작 값</li>
		<li>varStatus.end : 마지막 값</li>
		<li>varStatus.step : 증가값</li>
		<li>varStatus.current : 현재값</li>
	</ul>
	
	<hr>
		
	<%	
		// 각 영역에 같은 이름의 attribute들의 이름이 존재할 때 
		// 가장 가까운 영역의 값을 가져다 사용한다.
		application.setAttribute("fruit", "망고");	
		session.setAttribute("fruit", "사과");	
		request.setAttribute("fruit", "오렌지");
		pageContext.setAttribute("fruit", "포도");
	%>
	
	<p>fruit 어트리뷰트 : ${fruit}</p>
	
	<c:set var="fruit" value="참외" scope="application"/>
	<c:set var="fruit" value="복숭아" scope="session"/>
	<c:set var="fruit" value="키위" scope="request"/>
	<c:set var="fruit" value="딸기" scope="page"/>
	
	<p>fruit 어트리뷰트2 : ${fruit}</p>
	
	<c:if test="${sessionScope.fruit == '복숭아' }">
		<h3>session fruit은 복숭아입니다!</h3>
	</c:if>
	<c:if test="${requestScope.fruit == '복숭아' }">
		<h3>request의 fruit은 복숭아입니다!</h3>
	</c:if>
	
	<c:set var="score" value="99" />
	
	<c:choose>
		<c:when test="${score > 100 or score < 0 }">
			<c:set var="grade" value="F" />
		</c:when>
		<c:when test="${score >= 90 }">
			<c:set var="grade" value="A" />
		</c:when>
		<c:when test="${score >= 80 }">
			<c:set var="grade" value="B" />
		</c:when>
		<c:when test="${score >= 70 }">
			<c:set var="grade" value="C" />
		</c:when>
		<c:when test="${score >= 60 }">
			<c:set var="grade" value="D" />
		</c:when>
		<c:otherwise>
			<c:set var="grade" value="F" />
		</c:otherwise>
	</c:choose>
	
	<h3>점수는 ${score } 등급은 ${grade }</h3>
	
	<h3>1. 숫자로 반복문 돌리기</h3>
	
	<ul>
	<li>자바와 다르게 begin과 end값 모두 포함하여 반복하므로 주의해야 한다. (begin을 0으로 end를 10으로 설정하면 11번 반복한다.)</li>
	<c:forEach begin="1" end="10" var="i">
		<li class="item${i}">list-item${i}</li>
	</c:forEach>
	</ul>
	
	<h3>2. Iterable이 구현된 객체의 반복문 돌리기(배열, List 등)</h3>
	
	<h5>(1) 배열 반복하기</h5>
	<c:forEach items="${animals }" var="animal">
		<div id="${animal}">${animal}</div>
	</c:forEach>
	
	<h5>(2) 리스트 반복하기</h5>
	<c:forEach items="${food_list}" var="food">
		<div id="${food.food_id}" class="${food.food_type }">${food.display_name }</div>
	</c:forEach>
	
	<h3>3. varStatus 확인해보기</h3>
	
	<c:forEach step="2" begin="50" end="80" var="i" varStatus="status">
		<c:choose>
			<c:when test="${status.first }">
			<div style="border: solid 3px red; margin-bottom: 10px;">
			</c:when>
			<c:when test="${status.last }">
			<div style="border: solid 3px gold; margin-bottom: 10px;">
			</c:when>
			<c:otherwise>
			<div style="border: solid 3px black; margin-bottom: 10px;">
			</c:otherwise>
		</c:choose>	
			<div>current : ${status.current }</div>
			<div>index : ${status.index }</div>
			<div>count : ${status.count }</div>
			<div>first : ${status.first }</div>
			<div>last : ${status.last }</div>
		</div>
	</c:forEach>	
	
	<h3># fotTokens</h3>
	
	<c:forTokens items="${colors }" delims="/" var="color">
		<div style="border: solid 3px ${color};">${color }</div>
	</c:forTokens>
	
	<h3># c:url</h3>
	
	<c:url value="/pizza/order/result" var="url1" />
	<c:url value="/pizza/order/result" var="url2" >
		<c:param name="customer_id" value="123" />
		<c:param name="pizza_id" value="8" />
	</c:url>
	
	<c:url value="../detail" var="url3">
		<c:param name="event_id" value="13" />
	</c:url>
	
	<ul>
		<li><c:url value="/pizza/order/result" /></li>
		<li><a href="${url1 }">링크~</a></li>
		<li>파라미터 설정한 URL: ${url2 }</li>
		<li>상대경로에는 contextPath를 추가하지 않는다: ${url3 }</li>
	</ul>
	
</body>
</html>