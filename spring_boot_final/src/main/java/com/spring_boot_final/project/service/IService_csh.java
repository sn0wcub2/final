package com.spring_boot_final.project.service;

import java.util.HashMap;

import com.spring_boot_final.project.model.VO_csh;

public interface IService_csh {
	public void insertMember(VO_csh vo);
	public String loginCheck(HashMap<String, Object> map);
	public String memIdCheck(String memId); // 아이디 중복 확인
	public String findId(String memName, String memEmail);
	public String findPwd(String memName, String memEmail);
	public void changePwd(VO_csh vo);
}
