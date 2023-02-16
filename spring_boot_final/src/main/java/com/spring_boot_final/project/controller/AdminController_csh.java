package com.spring_boot_final.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController_csh {
	
	// 관리자 메인
	@RequestMapping("/admin_csh/AdminMain")
	public String AdminMain() {
		return "admin_csh/AdminMain";
	}
	
	// 공지
	@RequestMapping("/admin_csh/AdminNotice")
	public String AdminNotice() {
		return "admin_csh/AdminNotice";
	}
	
	// 회원,게시글 검색/조회
	@RequestMapping("/admin_csh/AdminMangement")
	public String AdminMangement() {
		return "admin_csh/AdminMangement";
	}
	
	// 동행인 관리
	@RequestMapping("/admin_csh/AdminAccompany")
	public String AdminAccompany() {
		return "admin_csh/AdminAccompany";
	}
	
	// 일코 푸드 메뉴 등록 > cjh 컨트롤러에 있음
	
	
	// CCTV, 안심 서비스 업데이트
	@RequestMapping("/admin_csh/AdminUpdate")
	public String AdminUpdate() {
		return "admin_csh/AdminUpdate";
	}
	
	// 공동 구매 처리
	@RequestMapping("/admin_csh/AdminGroup")
	public String AdminGroup() {
		return "admin_csh/AdminGroup";
	}
	
	// 서비스 처리
	@RequestMapping("/admin_csh/AdminService")
	public String AdminService() {
		return "admin_csh/AdminService";
	}
	
	// 사이트 내 포인트 충전 내역 확인
	@RequestMapping("/admin_csh/AdminPoint")
	public String AdminPoint() {
		return "admin_csh/AdminPoint";
	}
}
