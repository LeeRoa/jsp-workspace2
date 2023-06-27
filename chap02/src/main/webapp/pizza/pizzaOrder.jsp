<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
  	String crust = request.getParameter("crust");
  	String[] toppings = request.getParameterValues("topping");
  	String cheese = request.getParameter("cheese");
  %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<h1>주문 확인</h1>

	<p>
		도우 : <%=crust %> <br>
		토핑 : 
		<%
			if (toppings != null) {
				for (String topping : toppings) {
					out.print(topping + " "); 
				}
			} else {
				out.print("선택한 토핑 없음");
			}
		%> <br>
		치즈 : <%=cheese %>
	</p>

</body>
</html>