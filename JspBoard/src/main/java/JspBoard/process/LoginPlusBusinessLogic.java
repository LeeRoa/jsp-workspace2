package JspBoard.process;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import JspBoard.dao.BoardUserDAO;
import JspBoard.model.BoardUser;

public class LoginPlusBusinessLogic implements BusinessLogic {

	BoardUserDAO dao = new BoardUserDAO();
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String user_id = request.getParameter("id");
		String user_pw = request.getParameter("pw");
		
		BoardUser user = new BoardUser();
		
		user.setUser_id(user_id);
		user.setUser_pw(user_pw);
		
		int row = dao.newUser(user);
		
		if (row > 0) {
			return "redirect:" + request.getContextPath() +"/login";
		} else {
			return "redirect:" + request.getContextPath() + "/notJoin";
		}
	}
}
