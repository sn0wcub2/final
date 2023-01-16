package com.spring_boot_final.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Controller_Main {

	// 메인 페이지로 이동하는 컨트롤러 주요 기능 이외 추가 금지
	@RequestMapping("/")
	public String main() {
		return"main";
	}
}
