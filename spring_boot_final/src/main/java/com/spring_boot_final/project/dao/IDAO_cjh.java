package com.spring_boot_final.project.dao;

import java.util.ArrayList;

import com.spring_boot_final.project.model.MenuVO_cjh;

public interface IDAO_cjh {
	public void insertmenu(MenuVO_cjh menuVO_cjh); //  메뉴 추가
	public ArrayList<MenuVO_cjh> todaymenu(String menu_date);// 오늘 메뉴 검색
}
