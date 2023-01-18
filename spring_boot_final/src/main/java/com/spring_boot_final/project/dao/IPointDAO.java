package com.spring_boot_final.project.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.spring_boot_final.project.model.PointVO;

public interface IPointDAO {
	
	public void insertMemIdPoint(String memId);

	public void insertPoint(String memId);
	
	public void changePoint(HashMap<String, Object> map);
	
	public void updatePoint(HashMap<String, Object> map);
	
	public void changePoint2(HashMap<String, Object> map);
	
	public void updatePoint2(HashMap<String, Object> map);
	
	public int pointTotalCheck(String memId);
	
	public ArrayList<PointVO> pointView(String memId);

}
