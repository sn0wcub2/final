package com.spring_boot_final.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Controller_cjh {

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
		return "ilco_eat_cjh/eatSubscribe";
	}
	
	// 요청 페이지로 이동
	@RequestMapping("/ilcoeat/eatRequest")
	public String ilcoeatReq(){
		return "ilco_eat_cjh/eatRequest";
	}
	
	// 마이페이지 > 관리 임시 제작
	@RequestMapping("/ilcoMypageasdfasdf")
	public String ilcoeatMy(){
		return "ilco_eat_cjh/eatMypage";
	}
	
}
