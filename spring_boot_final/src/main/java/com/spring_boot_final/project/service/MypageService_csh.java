package com.spring_boot_final.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.spring_boot_final.project.dao.IMypageDAO_csh;
import com.spring_boot_final.project.model.VO_csh;

@Service
public class MypageService_csh implements IMypageService_csh {
	
	@Autowired
	@Qualifier("IMypageDAO_csh")
	private IMypageDAO_csh dao;
	

	@Override
	public VO_csh detailViewMyPage(String memId) {
		// TODO Auto-generated method stub
		return dao.detailViewMyPage(memId);
	}

	@Override
	public void updateMyPage(VO_csh mem) {
		dao.updateMyPage(mem);
		
	}

	@Override
	public void deleteMyPage(VO_csh mem) {
		// TODO Auto-generated method stub
		
	}

}
