package answer.service;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BoardModifyService implements Service {

	@Override
	public String service(HttpServletRequest request, HttpServletResponse response) throws IOException {

		return "/board/modify";
	}

}
