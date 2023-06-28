package JspBoard.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import JspBoard.model.Post;

public class BoardListDAO_Impl implements BoardListDAO {

	@Override
	public List<Post> getAllWrite() {
		List<Post> boardList = new ArrayList<>();		
		String sql = "SELECT * FROM post";

		try (
				Connection conn = DBConnection.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql);
				ResultSet rs = pstmt.executeQuery();
				) {

			while (rs.next()) {
				Post post = new Post();
				post.setPost_id(rs.getInt("post_id"));
				post.setTitle(rs.getString("title"));
				post.setUser_id(rs.getString("user_id"));
				post.setPost_word(rs.getString("post_word"));
				post.setViews(rs.getInt("views"));

				boardList.add(post);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return boardList;
	}

	@Override
	public List<Post> getWrite(String user_is) {
		return null;
	}

	// 계정도 추가해야함
	@Override
	public int newWrite(Post write) {

		String sql = "insert into post values (post_id_seq.nextval, ?, ?, ?, ?, 0)";

		try (
				Connection conn = DBConnection.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql);
				) {

			pstmt.setString(1, write.getTitle());
			pstmt.setString(2, write.getUser_id());
			pstmt.setString(3, write.getUser_pw());
			pstmt.setString(4, write.getPost_word());

			return pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return 0;
	}

	@Override
	public boolean deletePost(int post_id, String user_pw) {

		String sql = "delete from post where post_id=? and user_pw=?";
		
		try (
				Connection conn = DBConnection.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql);
				) {
				
				pstmt.setInt(1, post_id);
				pstmt.setString(2, user_pw);
				
				pstmt.executeUpdate();
				
				return true;
		} catch (Exception e) {
			e.printStackTrace();
		}

		return false;
	}
}
