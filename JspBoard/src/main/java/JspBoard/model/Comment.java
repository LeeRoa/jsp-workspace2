package JspBoard.model;

public class Comment {
	
	Integer com_num;
	String com_id;
	String com_pw;
	String com_word;
	Integer post_id;
	
	public Integer getCom_num() {
		return com_num;
	}
	public void setCom_num(Integer com_num) {
		this.com_num = com_num;
	}
	public String getCom_id() {
		return com_id;
	}
	public void setCom_id(String com_id) {
		this.com_id = com_id;
	}
	public String getCom_pw() {
		return com_pw;
	}
	public void setCom_pw(String com_pw) {
		this.com_pw = com_pw;
	}
	public String getCom_word() {
		return com_word;
	}
	public void setCom_word(String com_word) {
		this.com_word = com_word;
	}
	public Integer getPost_id() {
		return post_id;
	}
	public void setPost_id(Integer post_id) {
		this.post_id = post_id;
	}
}
