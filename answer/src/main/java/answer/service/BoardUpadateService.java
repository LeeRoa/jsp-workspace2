package answer.service;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import answer.dao.BoardDAO;
import answer.dao.BoardDAO_impl;
import answer.model.BoardDTO;

public class BoardUpadateService implements Service {

	BoardDAO boardDAO = new BoardDAO_impl();
	
	@Override
	public String service(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		// 입력값 검증 및 안전한 타입 변환이 필요하다.
		int board_id = Integer.parseInt(request.getParameter("board_id"));
		String board_pw = request.getParameter("board_pw");
		String board_content = request.getParameter("board_content");
		String board_title = request.getParameter("board_title");
		String writer = request.getParameter("writer");
		
		// DB에서 비밀번호를 꺼내 대조해봐야 한다.
		String dbpw = boardDAO.getBoardPw(board_id);
		
		// 암호화 되어 저장된 비밀번호 VS 사용자가 입력한 비밀번호를 암호화한 결과
		if (dbpw.equals(board_pw)) {
			BoardDTO dto = new BoardDTO();
			
			dto.setBoard_id(board_id);
			dto.setBoard_title(board_title);
			dto.setBoard_content(board_content);
			
			int row = boardDAO.update(dto);
			
			
			System.out.println(row + "행이 업데이트 되었습니다.");
			
			return "redirect:detail?id=" + board_id;
			
		} else {
			return "redirect:list";
		}
	}
}
