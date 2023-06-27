package chap06.process;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HelloProcess implements RequestProcess {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		// 원하는 처리를 진행
		System.out.println(request.getParameter("user") + "님이 접속하셨습니다.");
		
//		필요한 데이터가 있다면 여기에 실어서 view까지 보낼 수 있다.
//		request.setAttribute("date", new Apple());
		
		// 이 처리가 끝나고 다음으로 포워드 또는 리다이렉트 하고 싶은 곳
		return "/hello";
	}
}
