package com.spring_boot_final.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Controller_csh {

	@RequestMapping("/user_csh/login")
	public String login() {

		return "user_csh/login";
	}
	@RequestMapping("/user_csh/signUp")
	public String signUp() {

		return "user_csh/signUp";
	}
	@RequestMapping("/user_csh/findIdForm")
	public String findIdForm() {

		return "user_csh/findIdForm";
	}
	@RequestMapping("/user_csh/findPwdForm")
	public String findPwdForm() {

		return "user_csh/findPwdForm";
	}
}
