package chap10.listener;

import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;

public class MyServletRequestProcess implements ServletRequestListener {
	
	@Override
	public void requestInitialized(ServletRequestEvent sre) {
		System.out.println("요청 처음 부분에 이벤트 처리하고 싶은 내용");
		
		// sre객체에 ServletRequest와 ServletContext가 모두 들어있다.
		System.out.println("parameter: "
				+ sre.getServletRequest().getParameter("flavor"));
	}
	
	@Override
	public void requestDestroyed(ServletRequestEvent sre) {
		System.out.println("요청이 마무리되는 무렵에 처리하고 싶은 내용");
	}
}
