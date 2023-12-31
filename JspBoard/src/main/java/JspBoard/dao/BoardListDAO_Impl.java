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
		String sql = "SELECT * FROM post order by post_id DESC";
		
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
	public Post getWrite(String post_id) {
		Post post = new Post();

		String sql = "select * from post where post_id=?";

		try (
				Connection conn = DBConnection.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql);
				) {

			pstmt.setInt(1, Integer.parseInt(post_id));

			try (
					ResultSet rs = pstmt.executeQuery();
					) {
				rs.next();

				post.setPost_id(rs.getInt("post_id"));
				post.setPost_word(rs.getString("post_word"));
				post.setTitle(rs.getString("title"));
				post.setUser_id(rs.getString("user_id"));
				post.setUser_pw(rs.getString("user_pw"));
				post.setViews(rs.getInt("views"));
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return post;
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
	public int deletePost(int post_id, String user_pw) {

		String sql = "delete from post where post_id=? and user_pw=?";

		try (
				Connection conn = DBConnection.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql);
				) {

			pstmt.setInt(1, post_id);
			pstmt.setString(2, user_pw);

			return pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return 0;
	}

	@Override
	public int remakePost(int post_id, String post_pw, String post_word, String title) {
		String sql = "update post set post_word=?, title=? where post_id=? and user_pw=?";

		try (
				Connection conn = DBConnection.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql);
				) {

			pstmt.setString(1, post_word);
			pstmt.setString(2, title);
			pstmt.setInt(3, post_id);
			pstmt.setString(4, post_pw);

			return pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return 0;
	}

	@Override
	public void plusViews(String post_id) {
		String sql = "select * from post where post_id=?";
		String sql2 = "update post set views=? where post_id=?";
		try (
				Connection conn = DBConnection.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql);
				) {
			
			pstmt.setInt(1, Integer.parseInt(post_id));
			pstmt.executeUpdate();
			
			try (
				ResultSet rs = pstmt.executeQuery();
				PreparedStatement pstmt2 = conn.prepareStatement(sql2);
			) {
				rs.next();
				int views = rs.getInt("views");
				views++;
				System.out.println(views);
				
				pstmt2.setInt(1, views);
				pstmt2.setInt(2, Integer.parseInt(post_id));
				pstmt2.executeUpdate();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public List<Post> get10Write(int num) {
		List<Post> boardList = new ArrayList<>();		
		String sql = "SELECT * FROM (SELECT ROWNUM AS NUM, post.* FROM post order by post_id DESC)\r\n"
				+ "WHERE NUM BETWEEN ? AND ?";
		
		int fin = num * 10;
		int sta = fin - 9;
		
		try (
				Connection conn = DBConnection.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql);
				) {
				pstmt.setInt(1, sta);
				pstmt.setInt(2, fin);
				pstmt.executeUpdate();
				
			try (
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
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return boardList;
	}
}
