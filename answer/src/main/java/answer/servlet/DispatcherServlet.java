package answer.servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import answer.service.*;

public class DispatcherServlet extends HttpServlet {

	/*
		# 게시판을 만들어보세요

	 	[요구사항]

	 	- 별도의 인증과정 없이도 글쓴이와 비밀번호를 설정하고 글을 쓸 수 있다. (OK)
	 	- 해당 글을 수정하거나 삭제하려면 비밀번호를 맞춰야 한다. (OK)
	 	- 글 목록을 볼 때 글 제목이 한 페이지에 10개씩 나와야 한다. (row..?) 
	 	- 최근에 적은 글이 가장 위에 보여야 한다.  (OK)
	 	- 글 번호는 반드시 시퀀스를 통해 부여할 것 (OK)
	 	- 글 목록에서 제목을 클릭하면 해당 글의 상세 내용을 보는 페이지로 넘어간다. (OK)
	 	- 글의 내용을 볼 때마다 조회수가 올라가야 한다. (OK)
	 	  (단, 조회수는 한 브라우저당 10분에 1회씩만 올릴 수 있다.)
	 	- 글 쓰기 기능이 있다. (OK)
	 	- 글 수정 및 삭제 기능이 있다. (OK)
	 	- 존재하는 글에는 댓글을 달 수 있으며 댓글을 달 때에도 글쓴이와 비밀번호를 설정할 수 있다. (OK)
	 	- 댓글도 비밀번호를 맞추면 수정 및 삭제가 가능하다. (OK)
	 */

	private Map<String, Service> serviceMapping = new HashMap<>(); 

	@Override
	public void init(ServletConfig config) throws ServletException {

		String contextPath = config.getServletContext().getContextPath();
		
		serviceMapping.put(contextPath + "/board/list::GET", new BoardListService());
		serviceMapping.put(contextPath + "/board/detail::GET", new BoardDetailService());
		serviceMapping.put(contextPath + "/board/modify::GET", new BoardModifyService());
		serviceMapping.put(contextPath + "/board/modify::POST", new BoardUpadateService());
	}

	@Override
	protected void service(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("EUC-KR");
		
		System.out.println("사용자가 요청한 URL: " + request.getRequestURL());
		System.out.println("사용자가 요청한 URI: " + request.getRequestURI());
		System.out.println("요청 방식: " + request.getMethod());

		try {
			String nextPage = serviceMapping.get(request.getRequestURI() + "::" + request.getMethod())
					.service(request, response);

			System.out.println("응답 페이지: " + nextPage);

			if (nextPage.startsWith("redirect:")) {
				response.sendRedirect(nextPage.substring("redirect:".length()));
			} else {
				request.getRequestDispatcher("/WEB-INF/views" + nextPage + ".jsp")
				.forward(request, response);
			}
		} catch (NullPointerException e) {
			request.getRequestDispatcher("/WEB-INF/board_list.jsp").forward(request, response);
		}
	}
}
