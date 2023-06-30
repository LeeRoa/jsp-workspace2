package answer.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class CharacterEncodingFilter implements Filter {

	String charset;
	
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		this.charset = filterConfig.getInitParameter("encodingType");
	}
	
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		request.setCharacterEncoding(charset);
		response.setCharacterEncoding(charset);
		
		chain.doFilter(request, response);
	}
	
}
