package chap04.answer;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/answer/login")
public class LoginServlet extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String user_id = request.getParameter("user_id");
		String user_pwd = request.getParameter("user_pwd");
		
		if (user_id != null && user_pwd != null 
				&& !user_id.trim().equals("") 
				&& !user_pwd.trim().equals("")) {
		
			// id, pw로 탐색
			for (MemoUser user : RegisterServlet.memo_users) {
				// 아이디와 비밀번호가 같은지 체크한다.
				if (user.getUser_id().equals(user_id)
						&& user.getUser_pwd().equals(user_pwd)) {
					request.getSession().setAttribute("user", user);
					response.sendRedirect("./index.jsp");
					return;
				}
			}
		}
		
		// 로그인 실패
		response.getWriter().append("<html><head></head><body>"
				+ "<script>"
				+ "alert('로그인에 실패하셨습니다!');"
				+ "history.back();"
				+ "</script>"
				+ "</body><html>");
		
//		request.getRequestDispatcher("./login_failed.jsp").forward(request, response);
	}
}
