package com.spring_boot_final.project.service;

import com.spring_boot_final.project.model.VO_csh;

public interface IMypageService_csh {
	
	public VO_csh detailViewMyPage(String memId);// 회원정보조회

	public void updateMyPage(VO_csh mem); // 회원정보수정

	public void deleteMyPage(VO_csh mem); // 회원탈퇴
	
	public void changeState(String memId); // 휴먼계정전환
	
	public String findState(String memId); // state 가져오기

}
