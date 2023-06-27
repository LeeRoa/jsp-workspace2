<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%	
	// html 부분 다 지우고 사용하면 jsp를 서블릿처럼 활용할 수도 있다. (불편함)	
	
	// page scope : 현재 페이지를 넘어가면 만료, 현재 페이지 지역 변수 
	pageContext.setAttribute("flavor", "strawberry");
	
	// request scope : 응답을 하고나면 만료, 하나의 요청이 처리되기 전까지 유지
	request.setAttribute("flavor", "kiwi");
	
	// session scope : 세션이 만료되면 함께 사라진다. 현재 접속자만큼 존재
	session.setAttribute("flavor", "orange");
	
	// application scope : 서버가 켜져 있는 동안은 계속 유지된다.
	application.setAttribute("flavor", "banana");
	
	// RequestDispatcher 생성 시 필요한 경로는 webapp 밑의 경로
	request.getRequestDispatcher("/attribute_scope/view.jsp").forward(request, response);	
%>