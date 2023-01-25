package com.spring_boot_final.project.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
/*import org.springframework.beans.factory.annotation.Autowired;*/
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring_boot_final.project.model.VO_kbh;
import com.spring_boot_final.project.service.Service_kbh;


@Controller
public class Controller_kbh {
	
	@Autowired
	private Service_kbh orderService;
	
	/*
	 * @Autowired private Service_kbh service;
	 */
	
	//세탁 메인페이지
	@GetMapping("/laundry_kbh/laundryMain")
	public String ilcolaundry(){		
		return "laundry_kbh/laundryMain";
	}
	
	@GetMapping("/laundry_kbh/5kg~10kg")
	public String laundry1(){		
		return "laundry_kbh/5kg~10kg";
	}
	
	@GetMapping("/laundry_kbh/10kg~20kg")
	public String laundry2(){		
		return "laundry_kbh/10kg~20kg";
	}
	@GetMapping("/laundry_kbh/bedding")
	public String laundry3(){		
		return "laundry_kbh/bedding";
	}

	/*
	 * @PostMapping("/laundry_kbh/insertOrder") public String insertOrder(VO_kbh vo,
	 * HttpServletRequest req, HttpServletResponse res) {
	 * 
	 * SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd"); Date date = null;
	 * String email =
	 * req.getParameter("memEmail")+"@"+req.getParameter("email-list"); try { date =
	 * sdf.parse(req.getParameter("birth-year")+"-"+req.getParameter("birth-month")+
	 * "-"+req.getParameter("birth-day")); } catch (ParseException e) {
	 * 
	 * e.printStackTrace(); }
	 * 
	 * vo.setMemBirth(date); vo.setMemEmail(email);
	 * orderService.insertLaundryOrder(vo);
	 * 
	 * return "/laundry_kbh/laundryMain"; }
	 */
	
}
