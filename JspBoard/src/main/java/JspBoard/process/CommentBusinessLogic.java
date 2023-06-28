package JspBoard.process;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import JspBoard.dao.CommentsDAO;
import JspBoard.model.Comment;

public class CommentBusinessLogic implements BusinessLogic {
	
	CommentsDAO dao = new CommentsDAO();
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws IOException {

		String post_id = request.getParameter("post_id");
		String com_id = request.getParameter("id");
		String com_pw = request.getParameter("pw");
		String com_word = request.getParameter("com_word");
		
		Comment com = new Comment();
		
		com.setCom_id(com_id);
		com.setCom_pw(com_pw);
		com.setPost_id(Integer.parseInt(post_id));
		com.setCom_word(com_word);
		
		int row = dao.setComment(com);
		
		if (row > 0) {
			return "redirect:" + request.getContextPath() + "/view?post_id=" + post_id;
		} else {
			return "exits";
		}
		
	}
}
