<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="chap07.model.*, java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>주문내역</title>
<link rel="stylesheet" href="../../assets/css/order_result.css" />
</head>
<body>
	
	<h1><%=request.getAttribute("customer_id").toString() %>님의 주문 내역</h1>
	
	<button onclick="location.href='http://localhost:8090/chap07/pizza/order'">주문 화면으로 가기</button>
	
	<div id="order-list">
		<div>NO.</div>
		<div class="column">회원ID</div>
		<div class="column">피자</div>
		<div class="column">주소</div>
		<div class="column">추가옵션</div>
	<%
		for (PizzaOrder pizza_order : (List<PizzaOrder>)request.getAttribute("pizza_orders")) {
	%>
		<div class="order-id"><%=pizza_order.getOrder_id() %></div>			
		<div class="customer-id"><%=pizza_order.getCustomer_id() %></div>			
		<div class="pizza-id"><%=pizza_order.getPizza_id() %></div>			
		<div class="address"><%=pizza_order.getAddress() %></div>			
		<div class="pizza-option"><%=pizza_order.getPizza_option() %></div>			
	<% } %>	
	</div>
	
</body>
</html>