package com.spring_boot_final.project.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
	
	@ResponseBody
	@RequestMapping("/safe/safereturnsignup")
	public String SRsignUp(HttpSession session, @RequestParam("srpay") int srpay) {
		
		String result = "fail";
		String memId = (String) session.getAttribute("sid");
		int ldate = pservice.findLastestData(memId);
		int pointTotal = pservice.pointTotalCheck(memId, ldate);
		
		if (pointTotal >= srpay) {
			String pointDesciption = "안심 동행 서비스 이용";
			pservice.changePoint(memId, srpay, pointTotal, pointDesciption);
			result = "success";
		}
		
		
		return result;
	}
}
