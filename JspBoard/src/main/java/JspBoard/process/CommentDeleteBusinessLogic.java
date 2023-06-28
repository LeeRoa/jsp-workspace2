package JspBoard.process;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import JspBoard.dao.CommentsDAO;

public class CommentDeleteBusinessLogic implements BusinessLogic {
	
	CommentsDAO dao = new CommentsDAO();
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		return "com_delete";
	}
}
