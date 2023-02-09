package com.spring_boot_final.project.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class VO_jjh2 {
	private int dserviceId;
	private String memId;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date desDate;
	private String startTime;
	private String endTime;
	private String depAddress1;
	private String depAddress2;
	private String desAddress;
	private String serviceContent;
	private int serviceFlag; 
	private String realEndTime;
	private String prtId;
	private int charge;
	private int extraCharge;
	
	public String getDesAddress() {
		return desAddress;
	}
	public void setDesAddress(String desAddress) {
		this.desAddress = desAddress;
	}
	public int getDserviceId() {
		return dserviceId;
	}
	public void setDserviceId(int dserviceId) {
		this.dserviceId = dserviceId;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public Date getDesDate() {
		return desDate;
	}
	public void setDesDate(Date desDate) {
		this.desDate = desDate;
	}
	public String getStartTime() {
		return startTime;
	}
	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}
	public String getEndTime() {
		return endTime;
	}
	public void setEndTime(String endTime) {
		this.endTime = endTime;
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
	public String getServiceContent() {
		return serviceContent;
	}
	public void setServiceContent(String serviceContent) {
		this.serviceContent = serviceContent;
	}
	public int getServiceFlag() {
		return serviceFlag;
	}
	public void setServiceFlag(int serviceFlag) {
		this.serviceFlag = serviceFlag;
	}
	public String getRealEndTime() {
		return realEndTime;
	}
	public void setRealEndTime(String realEndTime) {
		this.realEndTime = realEndTime;
	}
	public String getPrtId() {
		return prtId;
	}
	public void setPrtId(String prtId) {
		this.prtId = prtId;
	}
	public int getCharge() {
		return charge;
	}
	public void setCharge(int charge) {
		this.charge = charge;
	}
	public int getExtraCharge() {
		return extraCharge;
	}
	public void setExtraCharge(int extraCharge) {
		this.extraCharge = extraCharge;
	}
}
