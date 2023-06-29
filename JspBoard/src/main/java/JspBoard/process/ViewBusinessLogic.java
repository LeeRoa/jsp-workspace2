package JspBoard.process;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import JspBoard.dao.BoardListDAO;
import JspBoard.dao.BoardListDAO_Impl;
import JspBoard.model.Post;

public class ViewBusinessLogic implements BusinessLogic {
	
	BoardListDAO dao = new BoardListDAO_Impl();
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String post_id = request.getParameter("post_id");
		
		Post post = dao.getWrite(post_id);
		
		request.setAttribute("title", post.getTitle());
		request.setAttribute("content", post.getPost_word());
		request.setAttribute("user_id", post.getUser_id());
		request.setAttribute("views", post.getViews());
		
		return "view";
	}
}
