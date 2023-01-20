package com.spring_boot_final.project.dao;

import java.util.ArrayList;

import com.spring_boot_final.project.model.CommunityVO_lje;

public interface ICommunityDAO_lje {
	public ArrayList<CommunityVO_lje> listAllCommunity(); // 커뮤니티 전체 글 조회
	public void insertCommunity(CommunityVO_lje com); // 커뮤니티 글 등록
    public CommunityVO_lje detailViewCommunity(String comNo); // 커뮤니티 글 상세 조회
	public void updateCommunity(CommunityVO_lje com); // 커뮤니티 글 수정
	public void deleteCommunity(String comNo); //커뮤니티 글 삭제
	// 글 조회수 증가
}
