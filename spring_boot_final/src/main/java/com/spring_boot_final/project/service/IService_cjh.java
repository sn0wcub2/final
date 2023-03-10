package com.spring_boot_final.project.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.spring_boot_final.project.model.EatSubVO_cjh;
import com.spring_boot_final.project.model.MenuVO_cjh;

public interface IService_cjh {
	public void insertmenu(MenuVO_cjh menuVO_cjh); //  메뉴 추가
	public ArrayList<MenuVO_cjh> todaymenu(String menu_date);// 오늘 메뉴 검색
	public ArrayList<MenuVO_cjh> menuAll(String menu_date);// 오늘 이후 모든 메뉴 조회
	public ArrayList<MenuVO_cjh> menuAllType(HashMap<String, String>  map);// 오늘 이후 타입별 모든 메뉴 조회
	public MenuVO_cjh menuDetail(String menu_id);// 메뉴 상세 보기
	public void menuUpdate(MenuVO_cjh menuVO_cjh);// 메뉴 수정
	public void menuDelete(String menu_id);// 메뉴 삭제
	public void subscribe(EatSubVO_cjh eatSubVO_cjh ); // 구독
	public ArrayList<EatSubVO_cjh> mypageSub(HashMap<String, String>  map); // 푸드 구독 정보 조회
	public ArrayList<EatSubVO_cjh> mypageSubOver(HashMap<String, String>  map);// 지난 푸드 구독 정보 조회
}
