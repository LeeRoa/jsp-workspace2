package answer.common;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

public class Cookies {
	
	public static Cookie getCookie(HttpServletRequest request, String cookieName) {
		
		Cookie[] cookies = request.getCookies();
		
		for (Cookie cookie : cookies) {
			if (cookie.getName().equals(cookieName)) {
				return cookie;
			}
		}
		
		return null;
	}
	
}
