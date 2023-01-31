package com.spring_boot_final.project.controller;


import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.TimeZone;

import javax.servlet.http.HttpSession;

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
		return "ilco_eat_cjh/eatMenuCalendar";
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
											HttpSession session,
											Model model) {
		String memId = (String) session.getAttribute("sid");
		String result ="ilco_eat_cjh/eat_menuDetail";
		
		MenuVO_cjh menu = service.menuDetail(menu_id);
		model.addAttribute("menu", menu);
		
		System.out.println(memId);
		
		if(memId.equals("admin")) {
			result = "ilco_eat_cjh/eat_menuDetailAdmin";
		}
		
		return result;
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
	
	
	//	관리자 메뉴 수정
	@RequestMapping("/ilcofoodmange/update")
	public String menuListadmin(@RequestParam List<String> allergy, 
											MenuVO_cjh menu){
		String A_info = ""; 
		for( String i : allergy) {
			A_info += "/" + i;
		}
		System.out.println(A_info);
		System.out.println(menu.getCal());
		menu.setAllergy_info(A_info+"/");
		
		service.menuUpdate(menu);
	
		return "redirect:/ilcoeat/menu_all";
	}
	
	//관리자 메뉴 삭제
	@RequestMapping("/ilcoeat/deletemenu/{menu_id}")
	public String deleteMenu(@PathVariable String menu_id) {
		service.menuDelete(menu_id);
		return "redirect:/ilcoeat/menu_all";
	}
	
}
