package JspBoard.dao;

import java.util.List;

import JspBoard.model.Post;

public interface BoardListDAO {
	
	/** 모든 게시글을 가져오는 메서드 */
	List<Post> getAllWrite();
	
	/** 해당 post 아이디의 게시글을 가져오는 메서드 */
	Post getWrite(String post_id);
	
	/** 글을 게시글 목록에 새로 등록하는 메서드 */
	int newWrite(Post write);
	
	/** 해당 글을 삭제하는 메서드 */
	int deletePost(int post_id, String post_pw);
	
	/** 해당 글을 수정하는 메서드 */
	int remakePost(int post_id, String post_pw, String post_word);
}
