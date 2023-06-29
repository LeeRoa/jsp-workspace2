package answer.model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

public class BoardDTO {
	
	private Integer board_id;
	private String writer;
	private String board_pw;
	private String board_title;
	private String board_content;
	private Integer board_view;
	private Date write_date;
	
	public BoardDTO() {

	}
	
	public BoardDTO(ResultSet rs) throws SQLException {
		setBoard_id(rs.getInt("board_id"));
		setBoard_pw(rs.getString("board_pw"));
		setWriter(rs.getString("writer"));
		setBoard_content(rs.getString("board_content"));
		setBoard_title(rs.getString("board_title"));
		setBoard_view(rs.getInt("board_view"));
		setWrite_date(rs.getDate("writer_date"));
	}
	
	public Integer getBoard_id() {
		return board_id;
	}
	public void setBoard_id(Integer board_id) {
		this.board_id = board_id;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getBoard_pw() {
		return board_pw;
	}
	public void setBoard_pw(String board_pw) {
		this.board_pw = board_pw;
	}
	public String getBoard_title() {
		return board_title;
	}
	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}
	public String getBoard_content() {
		return board_content;
	}
	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}
	public Integer getBoard_view() {
		return board_view;
	}
	public void setBoard_view(Integer board_view) {
		this.board_view = board_view;
	}
	public Date getWrite_date() {
		return write_date;
	}
	public void setWrite_date(Date write_date) {
		this.write_date = write_date;
	}
}
