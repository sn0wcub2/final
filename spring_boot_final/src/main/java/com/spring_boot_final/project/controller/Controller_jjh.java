package com.spring_boot_final.project.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring_boot_final.project.service.PointService;
import com.spring_boot_final.project.service.Service_jjh;

@Controller
public class Controller_jjh {
	@Autowired
	private Service_jjh service;
	
	@Autowired
	private PointService pservice;
	
	@RequestMapping("/safe/main")
	public String SRMain() {
		return "SafeReturn_jjh/SafeReturnMain";
	}
	
	@RequestMapping("/safe/safereturnsignup")
	public String SRsignUp(HttpSession session) {
		
		
		
		
		return "SafeReturn_jjh/SafeReturnEnd";
	}
}
