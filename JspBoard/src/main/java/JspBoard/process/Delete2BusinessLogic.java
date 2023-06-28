package JspBoard.process;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import JspBoard.dao.BoardListDAO;
import JspBoard.dao.BoardListDAO_Impl;
import JspBoard.process.BusinessLogic;

public class Delete2BusinessLogic implements BusinessLogic {
	
	BoardListDAO dao = new BoardListDAO_Impl();
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String post_id = request.getParameter("post_id");
		String password = request.getParameter("password");
		System.out.println("포스트 아이디입니다." + post_id);
		System.out.println("니가 입력한 비번임." + password);
		
		if (dao.deletePost(Integer.parseInt(post_id), password) > 0) {
			return "redirect:" + request.getContextPath() + "/board_list";
		} else {
			return "./notJoin";
		}
	}

}
