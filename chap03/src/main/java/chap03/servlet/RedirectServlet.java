package chap03.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/redirect_test")
public class RedirectServlet extends HttpServlet{
   
   @Override
   protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      
      // 클라이언트에게 다른 주소로 다시 요청하라고 응답
      // 사용자의 웹 브라우저에서 필요한 경로를 전달해야 한다
      
      // 요청 객체를 그대로 전달하는 것이 아니라
      // 새 요청을 보내도록 하는 것이기 때문에 데이터가 유지되지 않는다
      resp.sendRedirect("/chap03/forward/view.jsp");
   }
}