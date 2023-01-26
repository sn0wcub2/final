package com.spring_boot_final.project.dao;

import java.util.ArrayList;

import com.spring_boot_final.project.model.MenuVO_cjh;

public interface IDAO_cjh {
	public void insertmenu(MenuVO_cjh menuVO_cjh); //  메뉴 추가
	public ArrayList<MenuVO_cjh> todaymenu(String menu_date);// 오늘 메뉴 검색
	public ArrayList<MenuVO_cjh> menuAll(String menu_date);// 오늘 이후 모든 메뉴 조회
	public MenuVO_cjh menuDetail(String menu_id);// 메뉴 상세 보기
	public void menuUpdate(String menu_id);// 메뉴 수정
	public void menuDelete(String menu_id);// 메뉴 삭제
	
}
