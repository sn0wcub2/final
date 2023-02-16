package com.spring_boot_final.project.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.spring_boot_final.project.dao.IDAO_cjh;
import com.spring_boot_final.project.model.EatSubVO_cjh;
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
		return dao.menuDetail(menu_id);
	}
	@Override
	public void menuUpdate(MenuVO_cjh menuVO_cjh) {
		dao.menuUpdate(menuVO_cjh);		
	}
	@Override
	public void menuDelete(String menu_id) {
		dao.menuDelete(menu_id);
	}
	@Override
	public void subscribe(EatSubVO_cjh eatSubVO_cjh) {
		dao.subscribe(eatSubVO_cjh);
	}
	@Override
	public ArrayList<EatSubVO_cjh> mypageSub(HashMap<String, String>  map) {
		return dao.mypageSub(map);
	}
	@Override
	public ArrayList<EatSubVO_cjh> mypageSubOver(HashMap<String, String>  map) {
		return dao.mypageSubOver(map);
	}
	@Override
	public ArrayList<MenuVO_cjh> menuAllType(HashMap<String, String> map) {
		return dao.menuAllType(map);
	}


}
