package JspBoard.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import JspBoard.model.Comment;

public class CommentsDAO {
	
	// 해당 post_id의 댓글들을 가져오는 메서드
	public List<Comment> getCommnet(int post_id) {
		
		List<Comment> com_list = new ArrayList<>();
		
		String sql = "select * from comments where post_id=?";
		try (
			Connection conn = DBConnection.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
		) {
			pstmt.setInt(1, post_id);
			
			try (
				ResultSet rs = pstmt.executeQuery();
			) {
				while(rs.next()) {
					Comment comment = new Comment();
					
					comment.setCom_num(rs.getInt("com_num"));
					comment.setCom_id(rs.getString("com_id"));
					comment.setCom_pw(rs.getString("com_pw"));
					comment.setCom_word(rs.getString("com_word"));
					comment.setPost_id(rs.getInt("post_id"));
					
					com_list.add(comment);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return com_list;
	}
	
	// 작성한 댓글을 테이블에 등록하기
	public int setComment(Comment com) {
		
		String sql = "insert into comments values (com_num_seq.nextval, ?, ?, ?, ?)";
		try (
			Connection conn = DBConnection.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
		) {
			pstmt.setString(1, com.getCom_id());
			pstmt.setString(2, com.getCom_pw());
			pstmt.setString(3, com.getCom_word());
			pstmt.setInt(4, com.getPost_id());
			
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return 0;
	}
	
	// 해당 com_num 삭제하는 기능
	public int deleteComment(int com_num, String user_pw) {
		String sql = "delete from comments where com_num=? and com_pw=?";

		try (
				Connection conn = DBConnection.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql);
				) {

			pstmt.setInt(1, com_num);
			pstmt.setString(2, user_pw);

			return pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return 0;
	}
	
	public int remakeComment(int com_num, String com_pw, String com_word) {
		String sql = "update comments set com_word=? where com_num=? and com_pw=?";

		try (
				Connection conn = DBConnection.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql);
				) {

			pstmt.setString(1, com_word);
			pstmt.setInt(2, com_num);
			pstmt.setString(3, com_pw);

			return pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}
}
