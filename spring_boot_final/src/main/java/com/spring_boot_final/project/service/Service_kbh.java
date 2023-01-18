package com.spring_boot_final.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.spring_boot_final.project.dao.IDAO_kbh;
import com.spring_boot_final.project.model.VO_kbh;

@Service
public class Service_kbh implements IService_kbh {

	
	@Autowired
	@Qualifier("IDAO_kbh")
	IDAO_kbh dao;
	
	@Override
	public String insertLaundryOrder(VO_kbh vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String deleteLaundryOrder(VO_kbh vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String updateLaundryOrder(VO_kbh vo) {
		// TODO Auto-generated method stub
		return null;
	}

}
