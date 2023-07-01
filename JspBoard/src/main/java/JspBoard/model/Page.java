package JspBoard.model;

public class Page {

	Integer page;
	Integer currPage;

	public Integer getPage() {
		return page;
	}

	public void setPage(Integer page) {
		this.page = page;
	}

	public void setCurrPage(Integer currPage) {
		this.currPage = currPage;
	}

	public Integer getCurrPage() {
		return currPage;
	}

	public Integer getStartPage() {
		int startPage = 0;

		if (currPage % 10 != 0) {
			startPage = currPage / 10 * 10 + 1;
		} else {
			if (currPage == 10) {
				startPage = 1;
			} else {
				startPage = currPage - 9;
			}
		}

		return startPage;
	}

	public Integer getEndPage() {
		int endPage = 0;
		if (currPage % 10 != 0) {
			endPage = (currPage / 10 + 1) * 10 > page ? page : (currPage / 10 + 1) * 10;
		} else {
			endPage = currPage;
		}
		return endPage;
	}

	public Integer getNext() {
		int nextPage = 0;

		if (currPage % 10 != 0) {
			nextPage = (currPage + 10) - (currPage % 10) + 1;
		} else {
			nextPage = currPage + 1;
		}

		return nextPage;
	}

	public Integer getPrev() {
		int prevPage = 0;

		if (currPage % 10 != 0) {
			prevPage = (currPage - 10) - (currPage % 10) + 1;
		} else {
			prevPage = currPage - 19;
		}

		return prevPage;
	}

	public boolean getIsNext() {
		if (currPage % 10 != 0) {
			if (currPage / 10 < page / 10) {
				return true;
			}
		} else {
			if (currPage / 10 <= page / 10) {
				return true;
			}
		}

		return false;
	}
}
