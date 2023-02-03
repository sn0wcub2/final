package com.spring_boot_final.project.controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring_boot_final.project.model.PointVO;
import com.spring_boot_final.project.model.VO_csh;
import com.spring_boot_final.project.service.MypageService_csh;
import com.spring_boot_final.project.service.PointService;
import com.spring_boot_final.project.service.Service_csh;

@Controller
public class MypageController_csh {
	@Autowired
	private Service_csh user;
	@Autowired
	private MypageService_csh service;
	
	@Autowired
	private PointService ser;
	
	
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
	
	// 회원 정보 수정 : 수정된 데이터 DB에 저장
		@RequestMapping("/myPage_csh/updateMyPage")
		public String updateMyPage(VO_csh mem, Model model) {
			service.updateMyPage(mem);

			model.addAttribute("mem", mem);
			// 수정된 데이터 저장 후 회원 조회 화면으로 포워딩

			return "/mypage_csh/MypageMain";
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
	public String MypagePoint(HttpSession session, Model model) {
		String memId=(String) session.getAttribute("sid");
		ArrayList<PointVO> ptList = ser.pointView(memId);
        model.addAttribute("ptList", ptList);
		return "mypage_csh/MypagePoint";
	}
	
	// 충전
	@RequestMapping("/mypage_csh/MypagePointCharge")
	public String MypagePointCharge(HttpSession session, Model model) {
		String memId=(String) session.getAttribute("sid");
		int pointChangeNo = ser.findLastestData(memId);
		int pointTotal = ser.pointTotalCheck(memId, pointChangeNo);
		model.addAttribute("pointTotal", pointTotal);
		return "mypage_csh/MypagePointCharge";
	}
	
	// 충전 진행
	@RequestMapping("/mypage_csh/MypagePointChargeAdd")
	public String MypagePointChargeAdd(HttpSession session,
																@RequestParam int pointAdd ) {
		String memId=(String) session.getAttribute("sid");
		int pointChangeNo = ser.findLastestData(memId);
		int pointTotal = ser.pointTotalCheck(memId, pointChangeNo);
		
		ser.changePoint2(memId, pointAdd, pointTotal, " 사용자 충전");
	return "redirect:/mypage_csh/MypagePoint";
	}
	
	// 결제 내역
	@RequestMapping("/mypage_csh/MypageCredit")
	public String MypageCredit() {
		return "mypage_csh/MypageCredit";
	}
	
	// 회원 탈퇴 메인
	@RequestMapping("/mypage_csh/MypageDeleteMain")
	public String MypageDeleteMain(HttpSession session,Model model) {
		String memId=(String) session.getAttribute("sid");
		VO_csh mem = service.detailViewMyPage(memId);
		model.addAttribute("mem", mem);
		
		return "mypage_csh/MypageDelete";
	}
	
	// 회원 탈퇴
	@ResponseBody
	@RequestMapping("/myPage_csh/deleteMyPage")
	public String MypageDelete(@RequestParam HashMap<String, Object> param,Model model,HttpSession session) {
		System.out.println("123");
		String result = user.loginCheck(param);
		System.out.println(result);
		String mem=(String) session.getAttribute("sid");
		service.changeState(mem);
		session.invalidate();
		// 수정된 데이터 저장 후 회원 조회 화면으로 포워딩
		return result;
	}
	// 탈퇴 성공
	@RequestMapping("/mypage_csh/deleteMyPagesuccess")
	public String deleteMyPagesuccess(HttpSession session) {
		String mem=(String) session.getAttribute("sid");
		service.changeState(mem);
		session.invalidate();
		return "redirect:/";
	}
}
