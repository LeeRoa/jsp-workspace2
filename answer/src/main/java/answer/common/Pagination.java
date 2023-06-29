package answer.common;

public class Pagination {
	
	private int page;
	private int size;
	
	public Pagination(int page, int size) {
		this.page = page < 0 ? 1 : page;
		this.size = size;
	}
	
	public int getStart() {
		return getEnd() - (size - 1);
	}

	public int getEnd() {
		return page * size;
	}
}
