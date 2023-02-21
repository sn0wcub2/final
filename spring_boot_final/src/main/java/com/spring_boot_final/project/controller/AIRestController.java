package com.spring_boot_final.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.spring_boot_final.project.service.ChatbotService;

@RestController
public class AIRestController {
	private ChatbotService chatService;
	
	@Autowired
	public AIRestController(ChatbotService chatService) {
		this.chatService = chatService;
	}
	
	// 이미지 / 멀티링크 처리하기 위해 JSON 형식 문자열 그대로 반환
	@RequestMapping("/chatbot3")
	public String chatbot3(@RequestParam("message") String message){
		String result = chatService.chatbot3Main(message);
		return result;
	}
}














