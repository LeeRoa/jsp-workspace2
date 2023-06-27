<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import= "chap07.model.Pizza, java.util.List, chap07.model.PizzaOrder" %>
<%
	String contextPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>피자 주문 페이지</title>
</head>
<body>
	
	<h1>피자를 주문하세요</h1>
	
	<form action="./order" method="POST">
		고객ID : <input type="text" name="customer_id" value="CUS123" readonly /> <br>
		<select name="pizza_id">
			<% for (Pizza pizza : (List<Pizza>)request.getAttribute("pizzas")) { %>
			<option value="<%=pizza.getPizza_id() %>"><%=pizza.getPizza_name() %></option>
			 <% } %>
		</select> <br>
		주소 : <input type="text" id="address" name="address" /> <br>
		추가 옵션 : 
		<input id="extra_cheese" type="radio" name="pizza_option" value="111" checked/> 
		<label for="extra_cheese">치즈 추가</label>
		<input id="extra_pine" type="radio" name="pizza_option" value="112"/>
		<label for="extra_pine">파인애플 추가</label>
		<input id="extra_hub" type="radio" name="pizza_option" value="113"/>
		<label for="extra_hub">민트 추가</label> <br>
		<button id="submit" disabled = 'disabled' type="submit" >주문하기</button>
	</form>
	
	<script src="<%=contextPath %>/assets/order.js"></script>
	
</body>
</html>