package answer.common;

public class Pagination {
	
	private int boardCount;
	private int page;
	private int size;
	
	public Pagination(int page, int size, int boardCount) {
		this.page = page < 0 ? 1 : page;
		this.size = size;
		this.boardCount = boardCount;
	}
	
	public int getCurrPage() {
		return page;
	}
	
	public int getStart() {
		return getEnd() - (size - 1);
	}

	public int getEnd() {
		return page * size;
	}
	
	public int getLastPage() {
		return boardCount % size == 0 ? boardCount : boardCount / size + 1;
	}
}
