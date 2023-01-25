package com.spring_boot_final.project.dao;

import com.spring_boot_final.project.model.VO_kbh;

public interface IDAO_kbh {
	
	public void insertLaundryOrder(VO_kbh vo);
	public void deleteLaundryOrder(VO_kbh vo);
	public void updateLaundryOrder(VO_kbh vo);

}