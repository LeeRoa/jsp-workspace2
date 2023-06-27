package chap06.servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap06.process.*;

// 모든 요청을 맡아서 포워드 처리하는 포워드 전문 서블릿 (프론트 컨트롤러 디자인 패턴)
public class DispatcherServlet extends HttpServlet {
	
	private Map<String, RequestProcess> processMapping = new HashMap<>(); 
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		
		// config에서 application scope를 꺼내 contextPath를 꺼냄
		String contextPath = config.getServletContext().getContextPath();
		
		// 어떤 주소 + 요청 방식으로 접속했을 때 어떤 처리를 할 것인지 등록
		processMapping.put(contextPath + "/hello::GET", new HelloProcess());
		processMapping.put(contextPath + "/gallery/index::GET" , new GalleryProcess());
	}
	
	@Override
	protected void service(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		// 1. 사용자의 요청을 받는다.
		System.out.println("사용자가 요청한 URL: " + request.getRequestURL());
		System.out.println("사용자가 요청한 URI: " + request.getRequestURI());
		System.out.println("요청 방식: " + request.getMethod());
		
		// 2. 요청 URI와 Method에 맞는 처리를 진행한다.
		// -> url와 method로 알맞은 RequestProcess를 골라 process()를 실행시킨다.
		try {
			String nextPage = processMapping.get(request.getRequestURI() + "::" + request.getMethod())
					.process(request, response);
			
			// 3. 처리 후 알맞은 view 페이지로 포워드하거나 redirect한다.
			if (nextPage.startsWith("redirect:")) {
				response.sendRedirect(nextPage.substring("redirect:".length()));
				
			} else {
				// 포워드로는 WEB-INF 밑에 있는 페이지에 접근할 수 있다.
				request.getRequestDispatcher("/WEB-INF/views" + nextPage + ".jsp")
				.forward(request, response);
			}
		} catch (NullPointerException e) {
			request.getRequestDispatcher("/WEB-INF/views/error/unkown_uri.jsp");
//			response.getWriter().append("<html><script>history.back();</script></html>");
		}
	}
}