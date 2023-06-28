package JspBoard.process;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import JspBoard.dao.CommentsDAO;

public class CommentDelete2BusinessLogic implements BusinessLogic {
	
	CommentsDAO dao = new CommentsDAO();
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String com_num = request.getParameter("com_num");
		String password = request.getParameter("password");
		int row = dao.deleteComment(Integer.parseInt(com_num), password);
		
		if (row > 0) {
			return "redirect:" + request.getContextPath() + "/board_list";
		} else {
			return "notJoin";
		}
	}
}
