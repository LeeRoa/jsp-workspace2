package answer.service;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import answer.dao.BoardDAO;
import answer.dao.BoardDAO_impl;

public class BoardModifyService implements Service {
	
	BoardDAO boardDAO = new BoardDAO_impl();
	
	@Override
	public String service(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String id = request.getParameter("id");
		
		int iid = Integer.parseInt(id);
		
		request.setAttribute("board", boardDAO.get(iid));
		
		return "/board/modify";
	}

}
