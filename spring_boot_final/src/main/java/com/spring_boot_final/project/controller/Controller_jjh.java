package com.spring_boot_final.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Controller_jjh {
	@RequestMapping("/safe/main")
	public String SRMain() {
		return "SafeReturn_jjh/SafeReturnMain";
	}
}
