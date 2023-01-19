package com.spring_boot_final.project.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
	public String ilcoeatMain(){
		return "ilco_eat_cjh/eatMain";
	}
	
	// 구독페이지로 이동
	@RequestMapping("/ilcoeat/eatSubscribe")
	public String ilcoeatSub(){
		return "ilco_eat_cjh/eatSubscribe";
	}
	
	// 메뉴 페이지로 이동
	@RequestMapping("/ilcoeat/eatMenu")
	public String ilcoeatMenu(){
		return "ilco_eat_cjh/eatmenu";
	}
	
	// 요청 페이지로 이동
	@RequestMapping("/ilcoeat/eatRequest")
	public String ilcoeatReq(){
		return "ilco_eat_cjh/eatRequest";
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
		return "ilco_eat_cjh/eat_manage";
	}
	
}
