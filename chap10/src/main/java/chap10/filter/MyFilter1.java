package chap10.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class MyFilter1 implements Filter {
	
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		System.out.println("MyFilter1이 초기화되었음.");
	}
	
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		/*
		   # JSP Filter
		   
		   - 특정 주소로 접속할 때 필터를 거쳐서 지나가도록 만들 수 있다.
		   - web.xml에서 필터 등록을 한 후 특정 URL에 대한 필터 매핑을 해놓을 수 있다.
		   - chain으로 다음 필터를 호출하면 이 필터를 마무리 짓는 것이 된다.
		*/
		System.out.println("MyFilter1에서 뭔가를 처리함...");
		
		System.out.println("다음 필터 호출함");
		chain.doFilter(request, response);
	}
	
}
