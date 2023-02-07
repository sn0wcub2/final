package com.spring_boot_final.project.controller;


import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.StringTokenizer;
import java.util.TimeZone;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring_boot_final.project.model.EatSubVO_cjh;
import com.spring_boot_final.project.model.MenuVO_cjh;
import com.spring_boot_final.project.service.PointService;
import com.spring_boot_final.project.service.Service_cjh;

@Controller
public class Controller_cjh {
	@Autowired
	private Service_cjh service;
	
	@Autowired
	private PointService pservice;
	
	//달력 연습
	@RequestMapping("/ilcoeat/Calendar")
	public String test() {
			return "ilco_eat_cjh/CalendarDrill";
	}

	
	
	
	// 푸드 메인으로 이동
	@RequestMapping("/ilcoeat/main")
	public String ilcoeatMain(Model model){
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		sdf.setTimeZone(TimeZone.getTimeZone("GMT"));
		ArrayList<MenuVO_cjh> menuList = service.todaymenu(sdf.format(date));
		model.addAttribute("menuList", menuList);
		return "ilco_eat_cjh/eatMain";
	}
	
	// 구독페이지로 이동===================================================================
	@RequestMapping("/ilcoeat/eatSubscribe")
	public String ilcoeatSub(){
		return "ilco_eat_cjh/eatMenuCalendar";
	}
	
	// 일코 푸드 구독
	@RequestMapping("/ilcoeat/eatSubscribeSubmit")
	public String ilcoeatSubscribe(HttpSession session,
													@RequestParam("order_date") String date,
													@RequestParam("menu_type") String type,
													EatSubVO_cjh eatsub){
		String memId = (String) session.getAttribute("sid");
		StringTokenizer st = new StringTokenizer(date,  "/");
		int cnt = 0;
		int tot = 0;
		int price = 0;
		// 테이블 생성 
		while( st.hasMoreTokens()) {	
			eatsub.setUser_id(memId);
			eatsub.setOrder_date(st.nextToken());
			service.subscribe(eatsub);
			cnt++;
		}
		// A, B에 따른 가격 변동
		if(type.contains("A")) {
			price = 6000;
		}else {
			price = 8000;
		}
		
		// 최종 가격 계산 =  횟수 * 가격
		tot = cnt*price;
		// 결재 데이터 설정
			int pointChangeNo = pservice.findLastestData(memId);
			int pointTotal = pservice.pointTotalCheck(memId, pointChangeNo);
		// 결제 진행
			pservice.changePoint(memId, tot, pointTotal, "일코푸드"+type +"타입"+ cnt +"회 결제");
		return "redirect:/mypage_csh/MyPageSubscribe";
	}
	
	//마이페이지 조회
	@RequestMapping("/mypage_csh/MyPageSubscribe")
	public String MyPageSubscribe(HttpSession session,
													Model model) {
		// 아이디 불러오기
			String memId = (String) session.getAttribute("sid");
		// 해시맴 선언 > 날짜, 아이디 만 보내기 위해
			HashMap<String,String> map = new HashMap<>();
		// 현재 날짜 문자열로 변환
			Date realdate = new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			sdf.setTimeZone(TimeZone.getTimeZone("GMT"));
			sdf.format(realdate);
			String date = sdf.format(realdate).toString();
		// 해시맵에 데이터 추가
			map.put("order_date", date);
			map.put("user_id", memId);
		// 필요한 값 저장
			ArrayList<EatSubVO_cjh> subList = service.mypageSub(map);
			ArrayList<EatSubVO_cjh> subListOver = service.mypageSubOver(map);
			System.out.println(subList);
			
		// 리스트 형태로 보내주기
			model.addAttribute("subList", subList);
			model.addAttribute("subListOver", subListOver);
		return "mypage_csh/MyPageSubscribe";
	}
	
	// 메뉴 페이지로 이동
	@RequestMapping("/ilcoeat/eatMenu")
	public String ilcoeatMenu(Model model){
		// 오늘 날짜로 검색 > 금일 날짜 문자열 변환
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		sdf.setTimeZone(TimeZone.getTimeZone("GMT"));
		ArrayList<MenuVO_cjh> menuList = service.todaymenu(sdf.format(date));
		model.addAttribute("menuList", menuList);
		return "ilco_eat_cjh/eatmenu";
	}
	
	// 모든 메뉴 보기 페이지로 이동
	@RequestMapping("/ilcoeat/menu_all")
	public String menuList(Model model){
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		sdf.setTimeZone(TimeZone.getTimeZone("GMT"));
		ArrayList<MenuVO_cjh> menuAllList = service.menuAll(sdf.format(date));
		model.addAttribute("menuAllList", menuAllList);
		return "ilco_eat_cjh/eatMenuAll";
	}
	
	// 타입별 모든 메뉴 보기 페이지로 이동
	@RequestMapping("/ilcoeat/menu_all_type/{type}")
	public String menuTypeList(Model model,
												@PathVariable String type){
		
		HashMap<String,String> map = new HashMap<>();
		// 현재 날짜 문자열로 변환
		Date realdate = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		sdf.setTimeZone(TimeZone.getTimeZone("GMT"));
		sdf.format(realdate);
		String date = sdf.format(realdate).toString();
		
		// 해시맵에 데이터 추가
		map.put("order_date", date);
		map.put("menu_type", (String)type);
		System.out.println(type);
		ArrayList<MenuVO_cjh> menuAllList = service.menuAllType(map);
		model.addAttribute("menuAllList", menuAllList);
		return "ilco_eat_cjh/eatMenuAlltype";
	}
	
	//상세 정보
	@RequestMapping("/ilcoeat/detail/{menu_id}")
	public String menuDetail(@PathVariable String menu_id,
											HttpSession session,
											Model model) {
		String memId = (String) session.getAttribute("sid");
		String result ="ilco_eat_cjh/eat_menuDetail";
		
		MenuVO_cjh menu = service.menuDetail(menu_id);
		model.addAttribute("menu", menu);
		
		System.out.println(memId);
		
		if(memId.equals("admin")) {
			result = "ilco_eat_cjh/eat_menuDetailAdmin";
		}
		
		return result;
	}
	

			

	

	
	//======================================================================//
	// 마이페이지 > 관리 임시 제작
	@RequestMapping("/ilcoMypageasdfasdf")
	public String ilcoeatMy(){
		return "ilco_eat_cjh/eatMypage";
	}
	
	// 관리자 페이지 > 관리 임시 제작
	@RequestMapping("/ilcofoodmange")
	public String ilcoeatmanage(){
		return "ilco_eat_cjh/eat_manage";
	}
	
	// 관리자 페이지 메뉴 등록
	@RequestMapping("/ilcofoodmange/insertmenu")
	public String insertmenu(@RequestParam("menu_date") String date,
												@RequestParam("menu_type") String mt,
												@RequestParam List<String> allergy,
												MenuVO_cjh menu){
		
		// 알러지 정보 리스트로 분할
		String A_info = ""; 
		for( String i : allergy) {
			A_info += "/" + i;
		}
		menu.setAllergy_info(A_info+"/");
		// mid 생성
		menu.setMenu_id(date + "-" + mt);
		System.out.println(menu.getMenu_id());
		service.insertmenu(menu);
		return "redirect:/ilcoeat/menu_all";
	}
	
	
	//	관리자 메뉴 수정
	@RequestMapping("/ilcofoodmange/update")
	public String menuListadmin(@RequestParam List<String> allergy, 
											MenuVO_cjh menu){
		String A_info = ""; 
		for( String i : allergy) {
			A_info += "/" + i;
		}
		System.out.println(A_info);
		System.out.println(menu.getCal());
		menu.setAllergy_info(A_info+"/");
		
		service.menuUpdate(menu);
	
		return "redirect:/ilcoeat/menu_all";
	}
	
	//관리자 메뉴 삭제
	@RequestMapping("/ilcoeat/deletemenu/{menu_id}")
	public String deleteMenu(@PathVariable String menu_id) {
		service.menuDelete(menu_id);
		return "redirect:/ilcoeat/menu_all";
	}
	
}
