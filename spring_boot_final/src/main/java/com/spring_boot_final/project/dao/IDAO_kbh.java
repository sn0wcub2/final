
package com.spring_boot_final.project.dao;

import com.spring_boot_final.project.model.VO_kbh;

public interface IDAO_kbh {
	public String insertLaundryOrder(VO_kbh vo);
	public String deleteLaundryOrder(VO_kbh vo);
	public String updateLaundryOrder(VO_kbh vo);

}