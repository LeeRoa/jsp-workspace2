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
<title>���� �ֹ� ������</title>
</head>
<body>
	
	<h1>���ڸ� �ֹ��ϼ���</h1>
	
	<form action="./order" method="POST">
		��ID : <input type="text" name="customer_id" value="CUS123" readonly /> <br>
		<select name="pizza_id">
			<% for (Pizza pizza : (List<Pizza>)request.getAttribute("pizzas")) { %>
			<option value="<%=pizza.getPizza_id() %>"><%=pizza.getPizza_name() %></option>
			 <% } %>
		</select> <br>
		�ּ� : <input type="text" id="address" name="address" /> <br>
		�߰� �ɼ� : 
		<input id="extra_cheese" type="radio" name="pizza_option" value="111" checked/> 
		<label for="extra_cheese">ġ�� �߰�</label>
		<input id="extra_pine" type="radio" name="pizza_option" value="112"/>
		<label for="extra_pine">���ξ��� �߰�</label>
		<input id="extra_hub" type="radio" name="pizza_option" value="113"/>
		<label for="extra_hub">��Ʈ �߰�</label> <br>
		<button id="submit" disabled = 'disabled' type="submit" >�ֹ��ϱ�</button>
	</form>
	
	<script src="<%=contextPath %>/assets/order.js"></script>
	
</body>
</html>