<%@page import="chap08.model.PizzaOrder, chap08.dao.PizzaOrderDAO, java.util.List, chap08.dao.PizzaOrderDAO_Impl"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	// chap08.dao.PizzaOrderDAO dao = new chap08.dao.PizzaOrderDAO_Impl();
	
	// java.util.List<chap08.model.PizzaOrder> all_order = dao.getAllOrder();
	
	// request.setAttribute("order_list", all_order);
%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>피자 주문 리스트</title>
<link rel="stylesheet" href="../../assets/pizza_order.css" />
</head>
<body>
	
	<!-- /contextPath/pizza/order/all로 접속 -->
	
	<h3>모든 주문 보기 페이지</h3>
	
	<!-- 여기에 모든 주문이 나오게 해주세요 (반복은 반드시 JSTL 사용) -->
	<div id="order-list">
		<div>주문번호</div>
		<div>회원ID</div>
		<div>피자</div>
		<div>주소</div>
		<div>추가옵션</div>
	<c:forEach var="order" items="${orders}">
		<div>${order.order_id }</div>
		<div>${order.customer_id }</div>
		<div>${order.pizza_id }</div>
		<div>${order.address }</div>
		<div>${order.pizza_option }</div>
	</c:forEach>
	</div>
	
</body>
</html>