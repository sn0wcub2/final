package com.spring_boot_final.project.dao;

import java.util.HashMap;

import com.spring_boot_final.project.model.VO_csh;

public interface IDAO_csh {
	public void insertMember(VO_csh vo);
	public String loginCheck(String id);
	public String memIdCheck(String memId); // 아이디 중복 확인
	public String findId(HashMap<String, Object> map);
	public String findPwd(HashMap<String, Object> map);
	public void insertPoint(String memId);
	public void changePwd(VO_csh vo);
}
