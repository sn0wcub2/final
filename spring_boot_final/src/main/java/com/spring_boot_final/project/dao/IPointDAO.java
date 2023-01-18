package com.spring_boot_final.project.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.spring_boot_final.project.model.PointVO;

public interface IPointDAO {
	
	public void insertMemIdPoint(String memId);

	public void insertPoint(String memId);

public void changePoint(String memId, int pointUsed, int pointTotal, String pointDescription); //사용

	public void changePoint2(String memId, int pointAdd, int pointTotal, String pointDescription); // 추가
	
	public int findLastestData(String memId); //최근 데이터 조회
	
	public int pointTotalCheck(String memId, int pointChangeNo); //현재 포인트 조회

	public ArrayList<PointVO> pointView(String memId); // 포인트 사용내역 조회	

}
