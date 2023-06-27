package chap04.quiz;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap04.answer.MemoUser;

@WebServlet("/quiz/add")
public class JoinServlet extends HttpServlet {
	
	public static List<MemoUser> users = new ArrayList<>();
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_id");
		
		MemoUser newUser = new MemoUser(user_id, user_pw);
		
		if (!users.contains(newUser)) {
			users.add(newUser);
			response.sendRedirect("./index.jsp");
		} else {
			request.getRequestDispatcher("./exist.jsp").forward(request, response);
		}
		
	}
}
