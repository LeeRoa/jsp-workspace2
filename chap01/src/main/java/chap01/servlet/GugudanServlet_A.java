package chap01.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*
  	/chap01/gugudan으로 접속하는 사용자들에게
  	멋있는 구구단 페이지를 응답하는 서블릿을 만들어보세요
*/

@WebServlet("/gugudan")
public class GugudanServlet_A extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		PrintWriter out = resp.getWriter();
		
		out.print("<html lang=\"ko\"><head>"
				+ "<meta charset=\"UTF-8\">"
				+ "<title>Gugudan Servlet</title>"
				+ "<style>"
				+ "#main {"
				+ "display: grid;"
				+ "grid-template-columns: repeat(10, 1fr);"
				+ "}"
				+ "#main > div {"
				+ "border: 1px black solid;"
				+ "margin: 3px;"
				+ "font-size: 20px;"
				+ "text-align: center;"
				+ "}"
				+ ".header {"
				+ "background-color: crimson;"
				+ "font-weight:bold;"
				+ "}"
				+ ".gugu { background-color: cornflowerblue; }"
				+ "#main > div:first-child { border: none; }</style>"
				+ "</head><body>");
		
		out.print("<h2>Gugudan</h2>");
		out.print("<div id='main'>");
		
		for(int dan = 1; dan <= 9; ++dan) {
			out.print(dan == 1 ? "<div></div>" : "<div class='header'>" + String.format("%ddan", dan) + "</div>");
			for(int gop = 1; gop <= 9; ++gop) {
				out.print(dan == 1 ? "<div class='header'>" + String.format("%dgop", gop) + "</div>"
						: "<div class='gugu'>" + (dan * gop) + "</div>");
			}
		}
		
		out.print("</div>");
		out.print("</body></html>");
		
	}

}
