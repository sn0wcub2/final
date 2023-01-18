package com.spring_boot_final.project.model;

import java.util.Date;

public class VO_lje {
 
	private String userId;
	private int comNo;
	private String comTitle;
	private Date comDate;
	private String comcontent;
	private String comPic;
	private int comCnt;
	private String comComment;
	private Date comCommentDate;
	private String comCommentId;
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public int getComNo() {
		return comNo;
	}
	public void setComNo(int comNo) {
		this.comNo = comNo;
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
	public String getComcontent() {
		return comcontent;
	}
	public void setComcontent(String comcontent) {
		this.comcontent = comcontent;
	}
	public String getComPic() {
		return comPic;
	}
	public void setComPic(String comPic) {
		this.comPic = comPic;
	}
	public int getComCnt() {
		return comCnt;
	}
	public void setComCnt(int comCnt) {
		this.comCnt = comCnt;
	}
	public String getComComment() {
		return comComment;
	}
	public void setComComment(String comComment) {
		this.comComment = comComment;
	}
	public Date getComCommentDate() {
		return comCommentDate;
	}
	public void setComCommentDate(Date comCommentDate) {
		this.comCommentDate = comCommentDate;
	}
	public String getComCommentId() {
		return comCommentId;
	}
	public void setComCommentId(String comCommentId) {
		this.comCommentId = comCommentId;
	}
	
	
}
