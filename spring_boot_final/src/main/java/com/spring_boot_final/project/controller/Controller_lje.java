package com.spring_boot_final.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring_boot_final.project.service.Service_lje;

@Controller
public class Controller_lje {

	@Autowired
	private Service_lje service;
	
	//커뮤니티 메인페이지
	@RequestMapping("/ilcocommunity/boardlist")
	public String ilcocomMain(){
		return "ilco_community_lje/comMain";
	}
	
	//글작성 페이지
	@RequestMapping("/ilcocommunity/boardwriteform")
	public String ilcocomWrite(){
		return "ilco_community_lje/comWriteForm";
	}
}
