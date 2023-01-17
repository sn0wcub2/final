package com.spring_boot_final.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring_boot_final.project.service.Service_jjh;

@Controller
public class Controller_jjh {
	@Autowired
	private Service_jjh service;
	
	@RequestMapping("/safe/main")
	public String SRMain() {
		return "SafeReturn_jjh/SafeReturnMain";
	}
	
	@RequestMapping("/safe/safereturnsignup")
	public String SRsignUp(/*@RequestParam("date-picker") String date,
							@RequestParam("dong1") String dong1,
							@RequestParam("dong2") String dong2,
							@RequestParam("bunji1") String bunji1,
							@RequestParam("bunji2") String bunji2*/) {
		
		
		
		
		return "SafeReturn_jjh/SafeReturnSignUp";
	}
}
