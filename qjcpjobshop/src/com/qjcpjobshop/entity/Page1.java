package com.qjcpjobshop.entity;

import java.util.List;

public class Page1<T> {
	private int currentPageNum;
	private int pageSize;
	private int totalPageNum;
	private int totalCount;
	private int prePageNum;
	private int nePageNum;
	private List<T> list;
	
	public List<T> getList() {
		return list;
	}
	public void setList(List<T> list) {
		this.list = list;
	}
	public Page1(int pageNum,int pageSize) {
		this.currentPageNum=pageNum;
		this.pageSize=pageSize;
	}
	public int getCurrentPageNum() {
		return currentPageNum;
	}
	public void setCurrentPageNum(int currentPageNum) {
		this.currentPageNum = currentPageNum;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getTotalPageNum() {
		return totalPageNum;
	}
	public void setTotalPageNum(int totalPageNum) {
		this.totalPageNum = totalPageNum;
	}
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
		if(totalCount%pageSize == 0) {
			totalPageNum = (int) (totalCount/pageSize);
		}else {
			totalPageNum = (int) (totalCount/pageSize+1);
		}
		if(currentPageNum > 1) {
			prePageNum = currentPageNum-1;
		} else {
			prePageNum = currentPageNum;
		}
		if(currentPageNum < totalPageNum) {
			nePageNum = currentPageNum+1;
		}else {
			nePageNum = currentPageNum;
		}
	}
	public int getPrePageNum() {
		return prePageNum;
	}
	public void setPrePageNum(int prePageNum) {
		this.prePageNum = prePageNum;
	}
	public int getNePageNum() {
		return nePageNum;
	}
	public void setNePageNum(int nePageNum) {
		this.nePageNum = nePageNum;
	}
}
