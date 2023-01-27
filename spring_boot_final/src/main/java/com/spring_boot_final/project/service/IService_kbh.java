package com.spring_boot_final.project.service;

import com.spring_boot_final.project.model.VO_kbh;

public interface IService_kbh {
	public String insertLaundryOrder(VO_kbh vo);
	public String deleteLaundryOrder(VO_kbh vo);
	public String updateLaundryOrder(VO_kbh vo);
}
