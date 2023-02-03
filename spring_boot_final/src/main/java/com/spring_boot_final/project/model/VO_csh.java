package com.spring_boot_final.project.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class VO_csh {
	private String memId;
	private String memPwd;
	private String memName;
	private String memGender;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date memBirth;
	private String memHP;
	private String memEmgHP;
	private String memEmail;
	private String memZipcode;
	private String memAddress1;
	private String memAddress2;
	private int memPoint;
	private String memState;
	
	public String getMemState() {
		return memState;
	}
	public void setMemState(String memState) {
		this.memState = memState;
	}
	public int getMemPoint() {
		return memPoint;
	}
	public void setMemPoint(int memPoint) {
		this.memPoint = memPoint;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getMemPwd() {
		return memPwd;
	}
	public void setMemPwd(String memPwd) {
		this.memPwd = memPwd;
	}
	public String getMemName() {
		return memName;
	}
	public void setMemName(String memName) {
		this.memName = memName;
	}
	public String getMemGender() {
		return memGender;
	}
	public void setMemGender(String memGender) {
		this.memGender = memGender;
	}
	public Date getMemBirth() {
		return memBirth;
	}
	public void setMemBirth(Date memBirth) {
		this.memBirth = memBirth;
	}
	public String getMemHP() {
		return memHP;
	}
	public void setMemHP(String memHP) {
		this.memHP = memHP;
	}
	public String getMemEmgHP() {
		return memEmgHP;
	}
	public void setMemEmgHP(String memEmgHP) {
		this.memEmgHP = memEmgHP;
	}
	public String getMemEmail() {
		return memEmail;
	}
	public void setMemEmail(String memEmail) {
		this.memEmail = memEmail;
	}
	public String getMemZipcode() {
		return memZipcode;
	}
	public void setMemZipcode(String memZipcode) {
		this.memZipcode = memZipcode;
	}
	public String getMemAddress1() {
		return memAddress1;
	}
	public void setMemAddress1(String memAddress1) {
		this.memAddress1 = memAddress1;
	}
	public String getMemAddress2() {
		return memAddress2;
	}
	public void setMemAddress2(String memAddress2) {
		this.memAddress2 = memAddress2;
	}
	
	
}