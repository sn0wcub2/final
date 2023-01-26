package com.spring_boot_final.project.model;

import java.util.Date;

public class MarketVO_lje {
 
	private int comNo;
	private String memId;
	private String comTitle;
	private Date comDate;
	private String comContent;
	private int comCnt;
	
	public int getComNo() {
		return comNo;
	}
	public void setComNo(int comNo) {
		this.comNo = comNo;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getComTitle() {
		return comTitle;
	}
	public void setComTitle(String comTitle) {
		this.comTitle = comTitle;
	}
	public Date getComDate() {
		return comDate;
	}
	public void setComDate(Date comDate) {
		this.comDate = comDate;
	}
	public String getComContent() {
		return comContent;
	}
	public void setComContent(String comContent) {
		this.comContent = comContent;
	}
	public int getComCnt() {
		return comCnt;
	}
	public void setComCnt(int comCnt) {
		this.comCnt = comCnt;
	}
	
	
	
}