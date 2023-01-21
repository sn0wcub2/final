package com.spring_boot_final.project.controller;

/*import org.springframework.beans.factory.annotation.Autowired;*/
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/*import com.spring_boot_final.project.service.Service_kbh;
*/
@Controller
public class Controller_kbh {

	/*
	 * @Autowired private Service_kbh service;
	 */
	
	//세탁 메인페이지
	@RequestMapping("/laundry_kbh/laundryMain")
	public String ilcolaundry(){		
		return "laundry_kbh/laundryMain";
	}
	
	@RequestMapping("/laundry_kbh/5kg~10kg")
	public String laundry1(){		
		return "laundry_kbh/5kg~10kg";
	}
	
	@RequestMapping("/laundry_kbh/10kg~20kg")
	public String laundry2(){		
		return "laundry_kbh/10kg~20kg";
	}
	@RequestMapping("/laundry_kbh/bedding")
	public String laundry3(){		
		return "laundry_kbh/bedding";
	}
	
	
}
