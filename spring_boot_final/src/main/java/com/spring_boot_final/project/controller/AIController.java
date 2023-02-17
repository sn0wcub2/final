package com.spring_boot_final.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AIController {
	// 기본 / 이미지 / 멀티링크 답변 가능 채팅
	@RequestMapping("/chatbotForm")
		public String chatbotForm() {
		return "chatbotForm";
	}	
}


















