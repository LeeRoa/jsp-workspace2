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
<title>���� �ֹ� ����Ʈ</title>
<link rel="stylesheet" href="../../assets/pizza_order.css" />
</head>
<body>
	
	<!-- /contextPath/pizza/order/all�� ���� -->
	
	<h3>��� �ֹ� ���� ������</h3>
	
	<!-- ���⿡ ��� �ֹ��� ������ ���ּ��� (�ݺ��� �ݵ�� JSTL ���) -->
	<div id="order-list">
		<div>�ֹ���ȣ</div>
		<div>ȸ��ID</div>
		<div>����</div>
		<div>�ּ�</div>
		<div>�߰��ɼ�</div>
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