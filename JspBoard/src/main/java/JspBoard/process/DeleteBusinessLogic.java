package JspBoard.process;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import JspBoard.dao.BoardListDAO;
import JspBoard.dao.BoardListDAO_Impl;
import JspBoard.process.BusinessLogic;

public class DeleteBusinessLogic implements BusinessLogic {
	
	BoardListDAO dao = new BoardListDAO_Impl();
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String post_id = request.getParameter("post_id");
		
		request.setAttribute("post_id", post_id);
		
		return "delete";
	}

}