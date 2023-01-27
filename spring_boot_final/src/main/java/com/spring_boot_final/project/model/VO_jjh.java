package com.spring_boot_final.project.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class VO_jjh {
	private String aserviceId;
	private String memId;
	private String desAddress1;
	private String desAddress2;
	private String depAddress1;
	private String depAddress2;
	private String partnerId;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date desDate;
	private String desTime;
	private int charge;
	private double working;
	private int estimatedTime;
	
	public String getAserviceId() {
		return aserviceId;
	}
	public void setAserviceId(String aserviceId) {
		this.aserviceId = aserviceId;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getDesAddress1() {
		return desAddress1;
	}
	public void setDesAddress1(String desAddress1) {
		this.desAddress1 = desAddress1;
	}
	public String getDesAddress2() {
		return desAddress2;
	}
	public void setDesAddress2(String desAddress2) {
		this.desAddress2 = desAddress2;
	}
	public String getDepAddress1() {
		return depAddress1;
	}
	public void setDepAddress1(String depAddress1) {
		this.depAddress1 = depAddress1;
	}
	public String getDepAddress2() {
		return depAddress2;
	}
	public void setDepAddress2(String depAddress2) {
		this.depAddress2 = depAddress2;
	}
	public String getPartnerId() {
		return partnerId;
	}
	public void setPartnerId(String partnerId) {
		this.partnerId = partnerId;
	}
	public Date getDesDate() {
		return desDate;
	}
	public void setDesDate(Date desDate) {
		this.desDate = desDate;
	}
	public String getDesTime() {
		return desTime;
	}
	public void setDesTime(String desTime) {
		this.desTime = desTime;
	}
	public int getCharge() {
		return charge;
	}
	public void setCharge(int charge) {
		this.charge = charge;
	}
	public double getWorking() {
		return working;
	}
	public void setWorking(float working) {
		this.working = working;
	}
	public int getEstimatedTime() {
		return estimatedTime;
	}
	public void setEstimatedTime(int estimatedTime) {
		this.estimatedTime = estimatedTime;
	}
	
	
}
