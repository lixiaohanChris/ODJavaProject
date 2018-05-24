package com.od.entity;

import java.util.List;

public class Page<T> {
	private List<T> list; 				//取得数据存入List
	private int currentPageNum;  		//当前页码
	private int pageSize;				
	private int prePageNum;				//上一页
	private int nextPageNum;  			//下一页
	private int totalPageNum;			//页数统计
	private int totalCount;				//数据统计
	
	public Page(){}
	
	public Page(int pageNum,int pageSize){
		this.currentPageNum=pageNum;
		this.pageSize=pageSize;
	}
	
	public List<T> getList() {
		return list;
	}
	public void setList(List<T> list) {
		this.list = list;
	}
	public int getCurrentPageNum() {
		return currentPageNum;
	}
	public void setCurrentPageNum(int currentPageNum) {
		this.currentPageNum = currentPageNum;
	}
	public int getTotalPageNum() {
		return totalPageNum;
	}
	public void setTotealPageNum(int totalPageNum) {
		this.totalPageNum = totalPageNum;
	}
	public int getPrePageNum() {
		return prePageNum;
	}
	public void setPrePageNum(int prePageNum) {
		this.prePageNum = prePageNum;
	}
	public int getNextPageNum() {
		return nextPageNum;
	}
	public void setNextPageNum(int nextPageNum) {
		this.nextPageNum = nextPageNum;
	}
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
		if(totalCount%pageSize==0)
			totalPageNum=totalCount/pageSize;
		else
			totalPageNum=totalCount/pageSize+1;
		
		if(currentPageNum>1)
			prePageNum=currentPageNum-1;
		else
			prePageNum=1;
		
		if(currentPageNum<totalPageNum)
			nextPageNum=currentPageNum+1;
		else
			nextPageNum=totalPageNum;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
}
