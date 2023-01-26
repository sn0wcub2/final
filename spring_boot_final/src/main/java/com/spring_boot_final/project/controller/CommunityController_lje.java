package com.spring_boot_final.project.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring_boot_final.project.model.CommunityVO_lje;
import com.spring_boot_final.project.service.CommunityService_lje;

@Controller
public class CommunityController_lje {

	@Autowired
	private CommunityService_lje service;
	
	//글목록 페이지
	@RequestMapping("/ilcocommunity/boardlist")
	public String ilcocomList(Model model){
		ArrayList<CommunityVO_lje> comList = service.listAllCommunity();
		model.addAttribute("comList", comList);
		return "ilco_community_lje/comList";
	}
	
	
	
	//글쓰기 폼 페이지 열기
	@RequestMapping("/ilcocommunity/boardwriteform")
	public String ilcocomWrite(){
		return "ilco_community_lje/comWriteForm";
	}
	
	// 글 등록
		@RequestMapping("/ilcocommunity/insertCommunity")
		public String insertProduct(CommunityVO_lje com, HttpSession session) { // 커맨드 객체를 통해 자동으로 VO에 저장
			System.out.println(com.getComContent());
			// memId 값 필요
			// 로그인 했으면 지금 코드 사용
			//String memId = (String)session.getAttribute("sid");
			
			// 지금 혼자 테스트 할 경우에는 로그인 구현 없으므로 
			// 로그인 했다고 가정
			String memId = "hong";
			// CommunityVO_lje의 memId에 로그인한 사람의 id 값 저장
			com.setMemId(memId);
			
			
			// 서비스를 통해서 DB에 저장
			service.insertCommunity(com);
			// DB 저장 후 전제 글목록 조회 화면으로 포워딩  
			return "redirect:/ilcocommunity/boardlist"; // 
		}
		
		// 상세 조회
		@RequestMapping("/ilco_community_lje/detailViewCommunity/{comNo}")
		public String detailViewProduct(@PathVariable String comNo,
															  Model model) {
			// 서비스에게 글번호 전달하고 글정보 받아옴
			CommunityVO_lje com = service.detailViewCommunity(comNo);
			model.addAttribute("com", com);
			return "ilco_community_lje/comDetailView";
		}
	
	//글수정 페이지
	@RequestMapping("/ilcocommunity/boardViewForm")
	public String ilcocomView(){
		return "ilco_community_lje/comViewForm";
		}
}
