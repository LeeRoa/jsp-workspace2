package answer.dao;

import java.util.List;

import answer.common.Pagination;
import answer.model.BoardDTO;

public interface BoardDAO {

	List<BoardDTO> getPage(Pagination page);
}
