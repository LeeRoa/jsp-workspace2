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

	<h1>�ֹ� Ȯ��</h1>

	<p>
		���� : <%=crust %> <br>
		���� : 
		<%
			if (toppings != null) {
				for (String topping : toppings) {
					out.print(topping + " "); 
				}
			} else {
				out.print("������ ���� ����");
			}
		%> <br>
		ġ�� : <%=cheese %>
	</p>

</body>
</html>