<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
   // 변수 선언 다하고 .. DB 접근해서 처리 다하고 (servlet, .java) 
   
   // 비즈니스로직 처리 (Service, BusinessLogic)
   // - 주문도 모든 피자의 목록을 조회해야한다
   // - 메뉴 목록을 볼때도 모든 피자의 목록을 조회해야 한다
   // - 이벤트 페이지를 만들 때도 ...
   
   // DB관련 처리 (DAO) 
   // - DB에 접속하여 모든 피자의 목록을 조회하는 기능 
   
%>





<!--        forward를 통해 다음 view(.jsp)를 선택              -->




<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
   밑에서는 위쪽에서 선언한 변수를 갖다 쓰기만 한다
   <% // for, if, out.print()정도만 밑에서 사용 %>
   <%= %>
</body>
</html>

