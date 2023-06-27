package chap01.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// JSP는 1차로 서블릿 형태로 변환된다

// @WebServlet("url") : 이 서블릿으로 접속할 때 사용할 URI를 설정한다 
@WebServlet("/hello")
public class HelloServelt extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// HttpServletRequest : 클라이언트의 요청 정보가 담겨있는 객체 
		// HttpServeltResponse : 모든 처리가 끝난 후 응답해야하는 객체
		
		// JSP에서의 <%  %> 부분
		PrintWriter out = resp.getWriter();
		
		out.print("<html><head>"
				+ "<title>Hello Servlet</title>"
				+ "</head><body>");
		
		out.print("<h3>Hello!</h3>");
		out.print("<p>Hello, Servlet</p>");
		
		out.print("</body></html>");
	}
}
