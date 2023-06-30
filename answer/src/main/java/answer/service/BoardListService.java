package answer.service;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import answer.common.Pagination;
import answer.dao.BoardDAO;
import answer.dao.BoardDAO_impl;

public class BoardListService implements Service {

	BoardDAO boardDAO = new BoardDAO_impl();
	
	@Override
	public String service(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		// DB에서 글 목록을 조회해야 한다. (현재 페이지의 10개만)
		int page;
		
		try {
			page = Integer.parseInt(request.getParameter("page"));

		} catch (Exception e) {
			page = 1;
		}
		Pagination pagination = new Pagination(page, 10, boardDAO.getBoardCount());

		// page -> select * from board where board_id between a and b;
		request.setAttribute("boards", boardDAO.getPage(pagination));
		request.setAttribute("page", pagination);
		request.setAttribute("", pagination);
		// /WEB-INF/views/board/list.jsp
		return "/board/list";
	}

}
