package com.spring_boot_final.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.spring_boot_final.project.dao.IDAO_jjh;
import com.spring_boot_final.project.model.VO_jjh;

@Service
public class Service_jjh implements IService_jjh {
	@Autowired
	@Qualifier("IDAO_jjh")
	private IDAO_jjh dao;

	@Override
	public void insertSafeReturn(VO_jjh vo) {
		dao.insertSafeReturn(vo);
	}

}
