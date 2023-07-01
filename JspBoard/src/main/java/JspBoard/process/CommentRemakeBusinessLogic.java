package JspBoard.process;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import JspBoard.dao.CommentsDAO;
import JspBoard.model.Comment;

public class CommentRemakeBusinessLogic implements BusinessLogic {

	CommentsDAO dao = new CommentsDAO();

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws IOException {

		String com_num = request.getParameter("com_num");

		Comment com = dao.getComment(Integer.parseInt(com_num));

		request.setAttribute("com", com);
		
		return "com_remake";
	}

}
