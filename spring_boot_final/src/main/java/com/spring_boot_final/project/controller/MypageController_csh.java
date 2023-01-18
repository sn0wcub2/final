package com.spring_boot_final.project.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring_boot_final.project.model.VO_csh;
import com.spring_boot_final.project.service.MypageService_csh;

@Controller
public class MypageController_csh {
	@Autowired
	private MypageService_csh service;
	
	// 마이페이지 메인
	@RequestMapping("/mypage_csh/MypageMain")
	public String MypageMain() {
		return "mypage_csh/MypageMain";
	}
	
	// 회원정보 수정
	@RequestMapping("/mypage_csh/MypageUpdate")
	public String MypageUpdate(HttpSession session,Model model) {
		
		String memId=(String) session.getAttribute("sid");
		VO_csh mem = service.detailViewMyPage(memId);
		model.addAttribute("mem", mem);
		
		return "mypage_csh/MypageUpdate";
	}
	
	// 내 게시판 확인
	@RequestMapping("/mypage_csh/MypageBoard")
	public String MypageBoard() {
		return "mypage_csh/MypageBoard";
	}
	
	// 구독 정보 확인
	@RequestMapping("/mypage_csh/MyPageSubscribe")
	public String MyPageSubscribe() {
		return "mypage_csh/MyPageSubscribe";
	}
	
	// 예약된 서비스 확인
	@RequestMapping("/mypage_csh/MypageService")
	public String MypageService() {
		return "mypage_csh/MypageService";
	}
	
	// 포인트 내역
	@RequestMapping("/mypage_csh/MypagePoint")
	public String MypagePoint() {
		return "mypage_csh/MypagePoint";
	}
	
	// 결제 내역
	@RequestMapping("/mypage_csh/MypageCredit")
	public String MypageCredit() {
		return "mypage_csh/MypageCredit";
	}
	
	// 회원 탈퇴
	@RequestMapping("/mypage_csh/MypageDelete")
	public String MypageDelete() {
		return "mypage_csh/MypageDelete";
	}
}
