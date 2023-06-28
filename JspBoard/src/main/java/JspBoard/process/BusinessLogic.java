package JspBoard.process;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// 비즈니스 로직 - 요청을 받으면 해줘야하는 처리는 사업에 따라 달라지므로 비즈니스 로직이라고 할 수 있다.
// 				서비스(service)라고 부르기도 한다.
public interface BusinessLogic {
	
	String process(HttpServletRequest request, HttpServletResponse response) throws IOException;
	
}
