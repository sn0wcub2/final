package com.spring_boot_final.project.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.spring_boot_final.project.dao.IDAO_jjh;

@Service
public class Service_jjh implements IService_jjh {
	@Autowired
	@Qualifier("IDAO_jjh")
	private IDAO_jjh dao;

	@Override
	public void insertSafeReturn(HashMap<String, Object> map) {
		dao.insertSafeReturn(map);
	}

	@Override
	public void insertAccompany(HashMap<String, Object> map) {
		dao.insertAccompany(map);
	}

}
