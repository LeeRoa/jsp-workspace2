package JspBoard.process;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import JspBoard.dao.BoardListDAO;
import JspBoard.dao.BoardListDAO_Impl;
import JspBoard.model.Page;
import JspBoard.model.Post;

public class PageBusinessLogic implements BusinessLogic {

	BoardListDAO dao = new BoardListDAO_Impl();
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// db에 총얼마있는지 등등 다 가지고 ㄱ
		
		int page = 1;
		
		try {
			
			page = Integer.parseInt(request.getParameter("page"));
			
		} catch (Exception e) {
			page = 1;
		}
		
		List<Post> post_list = dao.get10Write(page);
		List<Post> all_list = dao.getAllWrite();
		
		Page pages = new Page();
		
		int pageCnt = all_list.size();
		
		if (pageCnt % 10 != 0) {
			pageCnt = pageCnt / 10 + 1;
		} else {
			pageCnt = pageCnt / 10;
		}
		
		pages.setPage(pageCnt);
		pages.setCurrPage(page);
		
		System.out.println("시작" + pages.getStartPage());
		System.out.println("끝" + pages.getEndPage());
		
		request.setAttribute("post_list", post_list);
		request.setAttribute("pageCnt", pages);
		
		return "board_list";
	}
}
