package JspBoard.process;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import JspBoard.process.BusinessLogic;

public class ViewBusinessLogic implements BusinessLogic {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		request.setAttribute("title", title);
		request.setAttribute("content", content);
		
		return "view";
	}
}
