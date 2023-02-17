package com.spring_boot_final.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

<<<<<<< HEAD
import com.spring_boot_final.project.service.ChatbotService;

@Controller
public class AIController {
	private ChatbotService chatService; 

	
	// 기본 / 이미지 / 멀티링크 답변 가능 채팅
	@RequestMapping("/chatbotForm3")
	public String chatbotForm3() {
	return "chatbotForm3";
	}
	
	
	
=======
@Controller
public class AIController {
	// 기본 / 이미지 / 멀티링크 답변 가능 채팅
	@RequestMapping("/chatbotForm")
		public String chatbotForm() {
		return "chatbotForm";
	}	
>>>>>>> refs/remotes/origin/jjh
}


















