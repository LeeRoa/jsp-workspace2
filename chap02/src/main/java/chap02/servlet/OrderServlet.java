package chap02.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/form/order")
public class OrderServlet extends HttpServlet {
	
	// doGet() : 이 서블릿에 도착한 GET 방식 요청만 처리한다. (select)
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("여기는 doGet입니다. 수량: " + req.getParameter("qty"));
	}
	
	// doPost() : 이 서블릿에 도착한 POST 방식 요청만 처리한다. (insert)
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("여기는 doPost입니다. 수량: " + req.getParameter("qty"));
	}
	
	// service() : 요청이 도착하면 방식과 관계없이 일단 먼저 처리하는 곳
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// 서블릿에서는 파라미터를 HttpServletRequest 인스턴스에서 꺼낼 수 있다.
		// (※ .jsp 파일에서는 해당 인스턴스명이 request로 만들어져 있음)
		
		String qty = req.getParameter("qty");
		
		System.out.println("주문 수량은 " + qty + "개 입니다.");
		
		// 부모 클래스의 service()의 기본 동작을 통해
		// 알맞은 doMethod()로 보낼 수 있다.
		super.service(req, resp);
	}
}
