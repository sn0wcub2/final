package com.spring_boot_final.project.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring_boot_final.project.service.Service_kbh;

@Controller
public class Controller_kbh {
	@Autowired
	private Service_kbh service;
	
	@RequestMapping("/aaaaaaaaaaa")
	public String SRMain() {
		System.out.println("여기 지나감");
		return "laundry_kbh/laundryMain";
	}
	
	
	
}
