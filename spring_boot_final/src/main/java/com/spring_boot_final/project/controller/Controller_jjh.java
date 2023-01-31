package com.spring_boot_final.project.controller;

import java.util.HashMap;

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
	public String SRsignUp(HttpSession session,
						   @RequestParam HashMap<String, Object> param) {
		double working = Double.parseDouble((String) param.get("working"));
		int estimatedTime = Integer.parseInt((String) param.get("estimatedTime"));
		int srpay = Integer.parseInt((String) param.get("srpay"));
		param.put("working", working);
		param.put("estimatedTime", estimatedTime);
		param.put("srpay", srpay);
		String result = "fail";
		String memId = (String) session.getAttribute("sid");
		int ldate = pservice.findLastestData(memId);
		int pointTotal = pservice.pointTotalCheck(memId, ldate);
		
		if (pointTotal >= srpay) {
			String pointDesciption = "안심 동행 서비스 이용";
			pservice.changePoint(memId, srpay, pointTotal, pointDesciption);
			param.put("memId", memId);
			
			service.insertSafeReturn(param);
			result = "success";
		}
		
		
		return result;
	}
	
	@RequestMapping("/safe/accmain")
	public String SAMain() {
		return "Accompany_jjh/AccompanyMain";
	}
}
