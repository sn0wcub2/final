package com.spring_boot_final.project.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.spring_boot_final.project.dao.ICommunityDAO_lje;
import com.spring_boot_final.project.model.CommunityVO_lje;

@Service
public class CommunityService_lje implements ICommunityService_lje {

	@Autowired
	@Qualifier("ICommunityDAO_lje")
	ICommunityDAO_lje dao;
	
	@Override
	public ArrayList<CommunityVO_lje> listAllCommunity() {
		
		return dao.listAllCommunity();
	}

	@Override
	public void insertCommunity(CommunityVO_lje com) {
		dao.insertCommunity(com);
		
	}

	@Override
	public CommunityVO_lje detailViewCommunity(String comNo) {
		
		return dao.detailViewCommunity(comNo);
	}

	@Override
	public void updateCommunity(CommunityVO_lje com) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteCommunity(String comNo) {
		// TODO Auto-generated method stub
		
	}

}
