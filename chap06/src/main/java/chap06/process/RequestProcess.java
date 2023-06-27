package chap06.process;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// http 요청에 대한 처리 인터페이스 
public interface RequestProcess {
	
	// 1. http 요청 처리는 request와 response를 받아 진행한다.
	// 2. 모든 처리의 결과는 다음으로 가야할 forward 또는 redirect를 알 수 있다. 
	String process(HttpServletRequest request, HttpServletResponse response);
	
}
