package JspBoard.dao;

import java.util.List;

import JspBoard.model.Post;

public interface BoardListDAO {
	
	/** 모든 게시글을 가져오는 메서드 */
	List<Post> getAllWrite();
	
	/** 해당 아이디의 게시글을 가져오는 메서드 */
	List<Post> getWrite(String user_is);
	
	/** 글을 게시글 목록에 새로 등록하는 메서드 */
	int newWrite(Post write);
	
	/** 해당 글을 삭제하는 메서드 */
	boolean deletePost(int post_id, String post_pw);
}
