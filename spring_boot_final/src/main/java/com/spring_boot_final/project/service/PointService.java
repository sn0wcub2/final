package com.spring_boot_final.project.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.spring_boot_final.project.dao.IPointDAO;
import com.spring_boot_final.project.model.PointVO;
@Service
public class PointService implements IPointService {

	@Autowired
	@Qualifier("IPointDAO")
	IPointDAO dao;
	
	@Override
	public void insertPoint(String memId) {
		dao.insertPoint(memId);
	}

	@Override
	public void insertMemIdPoint(String memId) {
		dao.insertMemIdPoint(memId);
	}

	@Override
	public void changePoint(String memId, int pointUsed, int pointTotal, String pointDescription) {
		
		dao.changePoint(memId, pointUsed, pointTotal, pointDescription);
	}

	
	@Override
	public void changePoint2(String memId, int pointAdd, int pointTotal, String pointDescription) {
		
		dao.changePoint2(memId, pointAdd, pointTotal, pointDescription);
	}

	@Override
	public int pointTotalCheck(String memId, int pointChangeNo) {
		
		return dao.pointTotalCheck(memId, pointChangeNo);
	}
	
	@Override
	public ArrayList<PointVO> pointView(String memId) {
		
		return dao.pointView(memId);
	}

	@Override
	public int findLastestData(String memId) {
		
		return dao.findLastestData(memId);
	}
}
