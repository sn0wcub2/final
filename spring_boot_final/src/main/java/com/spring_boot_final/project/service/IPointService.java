package com.spring_boot_final.project.service;

import java.util.ArrayList;

import com.spring_boot_final.project.model.PointVO; 
	interface IPointService {
		
	public void insertMemIdPoint(String memId);

	public void insertPoint(String memId);
	
	public void changePoint(String memId, int pointUsed, int pointTotal, String pointDescription);
	
	public void changePoint2(String memId, int pointAdd, int pointTotal, String pointDescription);
	
	public int findLastestData(String memId);
	
	public int pointTotalCheck(String memId, int pointChangeNo);
	
	public ArrayList<PointVO> pointView(String memId);
}
