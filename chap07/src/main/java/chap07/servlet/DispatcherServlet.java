package chap07.servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap07.process.*;

// 모든 요청을 맡아서 포워드 처리하는 포워드 전문 서블릿 (프론트 컨트롤러 디자인 패턴)
public class DispatcherServlet extends HttpServlet {
	
	private Map<String, BusinessLogic> processMapping = new HashMap<>(); 
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		
		String contextPath = config.getServletContext().getContextPath();
		
		processMapping.put(contextPath + "/pizza/order::GET", new PizzaOrderFormBusinessLogic());
		processMapping.put(contextPath + "/pizza/order::POST", new PizzaOrderInsertBusinessLogic());
		processMapping.put(contextPath + "/pizza/order/result::GET", new PizzaOrderResultBusinessLogic());
	}
	
	@Override
	protected void service(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		System.out.println("사용자가 요청한 URL: " + request.getRequestURL());
		System.out.println("사용자가 요청한 URI: " + request.getRequestURI());
		System.out.println("요청 방식: " + request.getMethod());
		
		try {
			String nextPage = processMapping.get(request.getRequestURI() + "::" + request.getMethod())
					.process(request, response);
			
			System.out.println("응답 페이지: " + nextPage);
			
			if (nextPage.startsWith("redirect:")) {
				response.sendRedirect(nextPage.substring("redirect:".length()));
			} else {
				request.getRequestDispatcher("/WEB-INF/views" + nextPage + ".jsp")
				.forward(request, response);
			}
		} catch (NullPointerException e) {
			request.getRequestDispatcher("/WEB-INF/views/error/unknown_uri.jsp").forward(request, response);
		}
	}
}