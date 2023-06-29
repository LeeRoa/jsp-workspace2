package answer.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import answer.common.Pagination;
import answer.model.BoardDTO;

public class BoardDAO_impl implements BoardDAO {
	
	@Override
	public List<BoardDTO> getPage(Pagination page) {
		
		String sql = "select * from (select rownum rn, A.* from (select * from board order by board_id DESC) A)\r\n"
				+ "    where rn between ? and ?";
		List<BoardDTO> boards = new ArrayList<>();
		try (
			Connection conn = DBConnection.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			
		) {
			
			pstmt.setInt(1, page.getStart());
			pstmt.setInt(2, page.getEnd());
			
			try (
					ResultSet rs = pstmt.executeQuery();
			) {
				
				while (rs.next()) {
					
					BoardDTO board = new BoardDTO(rs);
					boards.add(board);
				}
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return boards;
	}

}
