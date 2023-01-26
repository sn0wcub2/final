package com.spring_boot_final.project.controller;


import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.TimeZone;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring_boot_final.project.model.MenuVO_cjh;
import com.spring_boot_final.project.service.Service_cjh;

@Controller
public class Controller_cjh {
	@Autowired
	private Service_cjh service;
	// 달력 제작
	@RequestMapping("/ilcoeat/Calendar")
	public String ilcoeatCalandar(){
		return "ilco_eat_cjh/eatMenuCalendar";
	}
	// 푸드 메인으로 이동
	@RequestMapping("/ilcoeat/main")
	public String ilcoeatMain(Model model){
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		sdf.setTimeZone(TimeZone.getTimeZone("GMT"));
		ArrayList<MenuVO_cjh> menuList = service.todaymenu(sdf.format(date));
		model.addAttribute("menuList", menuList);
		return "ilco_eat_cjh/eatMain";
	}
	
	// 구독페이지로 이동
	@RequestMapping("/ilcoeat/eatSubscribe")
	public String ilcoeatSub(){
		return "ilco_eat_cjh/eatSubscribe";
	}
	
	// 메뉴 페이지로 이동
	@RequestMapping("/ilcoeat/eatMenu")
	public String ilcoeatMenu(Model model){
		// 오늘 날짜로 검색 > 금일 날짜 문자열 변환
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		sdf.setTimeZone(TimeZone.getTimeZone("GMT"));
		ArrayList<MenuVO_cjh> menuList = service.todaymenu(sdf.format(date));
		model.addAttribute("menuList", menuList);
		return "ilco_eat_cjh/eatmenu";
	}
	
	// 모든 메뉴 보기 페이지로 이동
	@RequestMapping("/ilcoeat/menu_all")
	public String menuList(Model model){
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		sdf.setTimeZone(TimeZone.getTimeZone("GMT"));
		ArrayList<MenuVO_cjh> menuAllList = service.menuAll(sdf.format(date));
		model.addAttribute("menuAllList", menuAllList);
		return "ilco_eat_cjh/eatMenuAll";
	}
	
	
	
	//상세 정보
	@RequestMapping("/ilcoeat/detail/{menu_id}")
	public String menuDetail(@PathVariable String menu_id,
											Model model) {
		MenuVO_cjh menu = service.menuDetail(menu_id);
		model.addAttribute("menu", menu);
		
		return "ilco_eat_cjh/eat_menuDetail";
	}
	
	// 메뉴 상세 보기 페이지로 이동(수정 삭제 가능 > 일단 페이지 이동만)!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	@RequestMapping("/ilcoeat/detail2/{menu_id}")
	public String menuListadmin(@PathVariable String menu_id, 
												Model model){
		MenuVO_cjh menu = service.menuDetail(menu_id);
		model.addAttribute("menu", menu);
		
		return "ilco_eat_cjh/eat_menuDetailAdmin";
	}
	@RequestMapping("/ilcoeat/updatemenu/{menu_id}")
	public String updateMenu(@PathVariable String menu_id) {
		service.menuUpdate(menu_id);
		return "ilcoeat/menu_all";
	}
	
	//======================================================================//
	// 마이페이지 > 관리 임시 제작
	@RequestMapping("/ilcoMypageasdfasdf")
	public String ilcoeatMy(){
		return "ilco_eat_cjh/eatMypage";
	}
	
	// 관리자 페이지 > 관리 임시 제작
	@RequestMapping("/ilcofoodmange")
	public String ilcoeatmanage(){
		return "ilco_eat_cjh/eat_manage";
	}
	
	// 관리자 페이지 메뉴 등록
	@RequestMapping("/ilcofoodmange/insertmenu")
	public String insertmenu(@RequestParam("menu_date") String date,
												@RequestParam("menu_type") String mt,
												@RequestParam List<String> allergy,
												MenuVO_cjh menu){
		// 알러지 정보 리스트로 분할
		String A_info = ""; 
		for( String i : allergy) {
			A_info += "/" + i;
		}
		menu.setAllergy_info(A_info+"/");
		// mid 생성
		menu.setMenu_id(date + "-" + mt);
		System.out.println(menu.getMenu_id());
		service.insertmenu(menu);
		return "redirect:/ilcoeat/menu_all";
	}
	
}
