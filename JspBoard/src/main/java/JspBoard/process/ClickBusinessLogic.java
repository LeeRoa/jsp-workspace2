package JspBoard.process;

import java.io.IOException;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import JspBoard.dao.BoardListDAO;
import JspBoard.dao.BoardListDAO_Impl;

public class ClickBusinessLogic implements BusinessLogic {
	
	public static boolean contains(Cookie[] cookies, String target) {
		for (Cookie cook : cookies) {
			if (cook.getName() != null && cook.getName().equals(target)) {
				return true;
			}
		}
		return false;
	}
	
	BoardListDAO dao = new BoardListDAO_Impl();
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String post_id = request.getParameter("post_id");
		
		Cookie[] cookies = request.getCookies();
		
		if (!contains(cookies, "view" + post_id)) {
			dao.plusViews(post_id);
			Cookie cookie = new Cookie("view" + post_id , "조회수제한");
			cookie.setMaxAge(600);
			response.addCookie(cookie);
			return "redirect:" + request.getContextPath() + "/view?post_id=" + post_id;
		} else {
			return "redirect:" + request.getContextPath() + "/view?post_id=" + post_id;
		}
		
	}
	
}
