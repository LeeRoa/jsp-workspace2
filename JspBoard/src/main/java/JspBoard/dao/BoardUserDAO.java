package JspBoard.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import JspBoard.model.BoardUser;

public class BoardUserDAO {

	// 유저 테이블에 새로운 유저 추가하기
	public int newUser(BoardUser user) {

		String sql = "insert into board_user values (?, ?)";

		try (
				Connection conn = DBConnection.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql);
				) {
			pstmt.setString(1, user.getUser_id());
			pstmt.setString(2, user.getUser_pw());

			return pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return 0;
	}

	// 입력한 값의 유저가 있는지 알아내는 메서드
	public boolean isUser(BoardUser user) {
		
		String sql = "SELECT * FROM board_user where user_id=? and user_pw=?";

		try (
				Connection conn = DBConnection.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql);
				) {
			pstmt.setString(1, user.getUser_id());
			pstmt.setString(2, user.getUser_pw());
			
			try (
				ResultSet rs = pstmt.executeQuery();
			) {
				
				if (rs.next()) {
					return true;
				} else {
					return false;
				}
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}

		return false;
	}
}
