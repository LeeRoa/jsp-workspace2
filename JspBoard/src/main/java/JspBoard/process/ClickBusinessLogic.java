package JspBoard.process;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import JspBoard.dao.BoardListDAO;
import JspBoard.dao.BoardListDAO_Impl;

public class ClickBusinessLogic implements BusinessLogic {
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String post_id = request.getParameter("post_id");
		
		return "redirect:" + request.getContextPath() + "/view?post_id=" + post_id;
	}
}
