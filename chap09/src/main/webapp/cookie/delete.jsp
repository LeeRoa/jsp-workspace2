<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String cookie_name = request.getParameter("name");
	
	// 쿠키의 수명을 0으로 변경하면 쿠키가 삭제된다.
	// 쿠키는 하나만 꺼내는 메서드가 존재하지 않아서 번거롭다.
	
	Cookie[] cookies = request.getCookies();
	
	if (cookies != null) {
		for (Cookie cookie : cookies) {
			if (cookie.getName().equals(cookie_name)) {
				cookie.setMaxAge(0); // 쿠키 수명을 0으로 변경하여 삭제
				response.addCookie(cookie);
			}
		}
	}
	
	response.sendRedirect("./list.jsp");
%>