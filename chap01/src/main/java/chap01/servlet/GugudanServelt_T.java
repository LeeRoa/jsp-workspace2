package chap01.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/gugudanA")
public class GugudanServelt_T extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// 응답 객체에서 사용할 charset을 설정한다
		resp.setCharacterEncoding("UTF-8");
		
		PrintWriter out = resp.getWriter();
		
		out.print("<!DOCTYPE html>"
				+ "<html lang=\"ko\"><head><title>구구단</title>"
				+ "<meta charset=\"UTF-8\">"
				+ "<link rel=\"stylesheet\" href=\"./assets/gugudan.css\">"
				+ "</head><body>"
				+ "<div id=\"gugudan\"></div>"
				+ "<script src=\"./assets/gugudan.js\"></script>"
				+ "</body></html>");
		
	}
}
