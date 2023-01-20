package com.spring_boot_final.project.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.spring_boot_final.project.model.PointVO;

public interface IPointDAO {
	
	

	public void insertMemIdPoint(String memId);

	public void insertPoint(String memId);

	public void updatePoint(HashMap<String, Object> map); 

	public void updatePoint2(HashMap<String, Object> map);
	
	public void changePoint(HashMap<String, Object> map);// 포인트 사용
	
	public void changePoint2(HashMap<String, Object> map);// 포인트 추가
	
	public int pointTotalCheck(String memId); //현재 포인트 조회

	public ArrayList<PointVO> pointView(String memId); // 포인트 사용내역 조회	

}
