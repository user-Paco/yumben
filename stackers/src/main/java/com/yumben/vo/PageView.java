package com.yumben.vo;

import java.util.List;

public class PageView<T> {
	
	private int currentPage = 1;
	public int pageRow = 15;
	public long totalCount=0;
	public long pageCount=0;
	public int firstResult=0;
	public String orderBy;
	public List<T> pageDate;

	public int getCurrentPage() {
		return this.currentPage;
	}

	public int getPageRow() {
		return this.pageRow;
	}

	public long getTotalCount() {
		return this.totalCount;
	}

	public long getPageCount() {
		return this.pageCount;
	}

	public List<T> getPageDate() {
		return this.pageDate;
	}

	public void setCurrentPage(int currentPage) {
		this.firstResult=(currentPage-1)*this.pageRow;
		this.currentPage = currentPage;
	}

	public void setPageRow(int pageRow) {
		this.pageRow = pageRow;
	}

	public void setTotalCount(long totalCount) {
		this.totalCount = totalCount;
		setPageCount(this.totalCount % this.pageRow == 0L ? this.totalCount
				/ this.pageRow : this.totalCount / this.pageRow + 1L);
	}

	public void setPageCount(long pageCount) {
		this.pageCount = pageCount;
	}

	public int getFirstResult() {
		return firstResult;
	}

	public void setPageDate(List<T> pageDate) {
		this.pageDate = pageDate;
	}

	public String getOrderBy() {
		return orderBy;
	}

	public void setOrderBy(String orderBy) {
		this.orderBy = orderBy;
	}
}
