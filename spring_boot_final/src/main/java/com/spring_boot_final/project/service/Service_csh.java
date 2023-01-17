package com.spring_boot_final.project.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.spring_boot_final.project.dao.IDAO_csh;
import com.spring_boot_final.project.model.VO_csh;

@Service
public class Service_csh implements IService_csh {
	@Autowired
	@Qualifier("IDAO_csh")
	IDAO_csh dao;

	@Autowired
	private PasswordEncoder passwordEncoder;

	// 암호화된 비밀번호로 로그인 체크
	@Override
	public String loginCheck(HashMap<String, Object> map) {
		// 전달된 아이디로 암호화된 비밀번호 알아온 후
		String encodedPw = dao.loginCheck((String) map.get("id"));

		String result = "fail";
		// 암호화된 비밀번호와 입력해서 전달된 비밀번호와 일치하는지 확인
		if (encodedPw != null && passwordEncoder.matches((String) map.get("pwd"), encodedPw)) {
			result = "success";
		}
		// matches() : 평문과 암호화된 문장 비교
		return result;
	}

	// 아이디 중복 체크
	public String memIdCheck(String memId) {
		return dao.memIdCheck(memId);
	}

	@Override
	public void insertMember(VO_csh vo) {
		// 입력한 비밀번호를 암호화해서 저장
		// vo에서 비밀번호 가져와서 암호화한 후
		String encodedPassword = passwordEncoder.encode(vo.getMemPwd());
		// 암호화된 비밀번호로 저장한 후 db에 저장
		vo.setMemPwd(encodedPassword); // vo에 암호화된 비밀번호 저장
		dao.insertMember(vo);

	}

	@Override
	public String findId(String memName, String memEmail) {

		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("memName", memName);
		map.put("memEmail", memEmail);

		String result = dao.findId(map);

		return result;
	}

	@Override
	public String findPwd(String memName, String memEmail) {

		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("memName", memName);
		map.put("memEmail", memEmail);

		String result = dao.findPwd(map);

		return result;
	}

	@Override
	public void changePwd(VO_csh vo) {
		String encodedPassword = passwordEncoder.encode(vo.getMemPwd());

		vo.setMemPwd(encodedPassword);
		dao.changePwd(vo);
	}

}
