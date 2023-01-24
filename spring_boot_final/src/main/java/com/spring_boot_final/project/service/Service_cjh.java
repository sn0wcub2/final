package com.spring_boot_final.project.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.spring_boot_final.project.dao.IDAO_cjh;
import com.spring_boot_final.project.model.MenuVO_cjh;

@Service
public class Service_cjh implements IService_cjh {
	
	@Autowired
	@Qualifier("IDAO_cjh")
	IDAO_cjh dao;
	
	
	
	@Override
	public void insertmenu(MenuVO_cjh menuVO_cjh) {
		dao.insertmenu(menuVO_cjh);
	}



	@Override
	public ArrayList<MenuVO_cjh> todaymenu(String menu_date) {
		return dao.todaymenu(menu_date);
	}



	@Override
	public ArrayList<MenuVO_cjh> menuAll(String menu_date) {
		return dao.menuAll(menu_date);
	}



	@Override
	public MenuVO_cjh menuDetail(String menu_id) {
		// TODO Auto-generated method stub
		return null;
	}




}
