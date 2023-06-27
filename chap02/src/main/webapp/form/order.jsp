<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	// form 태그로 전송받은 데이터를 request 객체에서 꺼낼 수 있다.
	// 파라미터는 무조건 문자열 타입으로 꺼내지므로 주의해야 한다.
	String drink = request.getParameter("drink");
	String qty = request.getParameter("qty");
	
	// checkbox처럼 하나의 name에 값이 여러개인 경우
	// getParameter() 대신 getParameteValues()를 사용해 받을 수 있다.
	String[] drinkOptions = request.getParameterValues("drink-option");
%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>주문 확인 페이지</title>
</head>
<body>
	
	<h1>주문 확인</h1>
	
	<p>
		<%=drink %>: x <%=qty %> <br>
		선택한 옵션 : 
		<%	
			// 선택을 안하는 경우 null값이 들어오므로
			// null 체크를 하지 않고 사용하면 에러가 날 수도 있다.
			if (drinkOptions != null) {
				for (String drinkOption : drinkOptions) {
					out.print(drinkOption + ", ");
				}
			}
		%>
	</p>
	
</body>
</html>