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
			String pointDesciption = "안심 귀가 서비스 이용";
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
	
	@ResponseBody
	@RequestMapping("/safe/accompanysignup")
	public String SAsignUp(HttpSession session,
						   @RequestParam HashMap<String, Object> param) {
		System.out.println(param);
		String result = "fail";
		String[] tokens = ((String) param.get("timepicker")).split(":");
		String[] tokens2 = ((String) param.get("timepicker2")).split(":");

		int startTime = Integer.parseInt(tokens[0]);
		int endTime = Integer.parseInt(tokens2[0]);
		
		int startTimeBun = Integer.parseInt(tokens[1]);
		int endTimeBun = Integer.parseInt(tokens2[1]);
		if(startTime > endTime) {
			result = "timeerror";
		} else if (startTime == endTime && startTimeBun > endTimeBun) {
			result = "timeerror";
		} else {
			String memId = (String) session.getAttribute("sid");
			int ldate = pservice.findLastestData(memId);
			int pointTotal = pservice.pointTotalCheck(memId, ldate);
			
			int charge = (endTime-startTime)*4000 + (endTimeBun-startTimeBun)/15*1000;
			
			if (pointTotal >= charge) {
				String pointDesciption = "안심 동행 서비스 이용";
				pservice.changePoint(memId, charge, pointTotal, pointDesciption);
				param.put("memId", memId);
				param.put("charge", charge);
				
				service.insertAccompany(param);
				result = "success";
			}
		}
		
		
		
		
		
		return result;
	}
	
	
}
