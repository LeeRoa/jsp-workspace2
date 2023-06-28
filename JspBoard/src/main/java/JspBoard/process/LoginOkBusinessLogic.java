package JspBoard.process;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import JspBoard.dao.BoardListDAO;
import JspBoard.dao.BoardListDAO_Impl;
import JspBoard.dao.BoardUserDAO;
import JspBoard.model.BoardUser;

public class LoginOkBusinessLogic implements BusinessLogic {
	
	BoardUserDAO dao = new BoardUserDAO();
	BoardListDAO dao2 = new BoardListDAO_Impl();
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		System.out.println("도착");
		
		String user_id = request.getParameter("id");
		String user_pw = request.getParameter("pw");
		
		BoardUser user = new BoardUser();
		
		user.setUser_id(user_id);
		user.setUser_pw(user_pw);
		
		if (dao.isUser(user)) {
			request.setAttribute("user", user);
			
			request.setAttribute("post", dao2.getAllWrite());
			
			return "board_list";
			
		} else {
			return "redirect:" + request.getContextPath() + "/exits";
		}
		
	}

}
