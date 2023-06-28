package JspBoard.process;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import JspBoard.dao.BoardListDAO;
import JspBoard.dao.BoardListDAO_Impl;
import JspBoard.model.Post;

public class BoardUploadBusinessLogic implements BusinessLogic {
	
	BoardListDAO dao = new BoardListDAO_Impl();
	
	@Override
	public String process(HttpServletRequest request, 
			HttpServletResponse response) throws IOException {
		// 글을 작성하면 업로드하는 비즈니스 로직 -> 업로드 후 게시판목록 창으로 이동
		String user_id = request.getParameter("id");
		String user_pw = request.getParameter("pw");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		Post post = new Post();
		
		post.setUser_id(user_id);
		post.setTitle(title);
		post.setPost_word(content);
		post.setUser_pw(user_pw);
		
		int row = dao.newWrite(post);
		
		if (row > 0) {
			request.setAttribute("post", dao.getAllWrite());
			return "redirect:" + request.getContextPath() + "/board_list";
		} else {
			return "/exits";
		}
		
	}

}
