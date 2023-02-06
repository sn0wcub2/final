package com.spring_boot_final.project.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring_boot_final.project.model.VO_csh;
import com.spring_boot_final.project.service.MypageService_csh;
import com.spring_boot_final.project.service.PointService;
import com.spring_boot_final.project.service.Service_csh;

@Controller
public class MemberController_csh {
	@Autowired
	Service_csh service;
	@Autowired
	MypageService_csh mser;

	@Autowired
	PointService pser;
	// 로그인 폼 열기
	@RequestMapping("/member_csh/login")
	public String login() {

		return "member_csh/login";
	}
	
	// 회원가입 폼 열기
	@RequestMapping("/member_csh/signUp")
	public String signUp() {

		return "member_csh/signUp";
	}

	// 비밀번호 암호화한 경우의 로그인 처리 방식
	@ResponseBody
	@RequestMapping("/member_csh/eqlogin")
	public String loginCheck(@RequestParam HashMap<String, Object> param, HttpSession session) {
		String state = mser.findState((String) param.get("id"));
		String result = "fail";
		if(state.equals("1")){
		// 로그인 체크 결과
		result = service.loginCheck(param);

		// 아이디와 비밀번호 일치하면 (로그인 성공하면) 서비스에서 success 반환
		if (result.equals("success")) {
			// 로그인 성공하면 세션 변수 지정
			session.setAttribute("sid", param.get("id"));
		}
		}
		return result;
	}

	// 아이디 중복 체크
	@ResponseBody
	@RequestMapping("/member_csh/memIdCheck")
	public String memIdCheck(@RequestParam("memId") String memId) {
		// 서비스 호출하고 DB에 memId 존재하면 memId받고, 존재하지 않으면 null받음
		String memId_result = service.memIdCheck(memId);

		String result = "use";
		if (memId_result != null) { // 존재 한다면
			result = "no_use";
		}

		return result;
	}

	// 회원가입
	@RequestMapping("/member_csh/insert")
	public String insert(VO_csh vo, HttpServletRequest hsr, HttpServletResponse res,@RequestParam String memId) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd");
		Date date = null;
		String email = hsr.getParameter("memEmail")+"@"+hsr.getParameter("email-list");
		try {
			date = sdf.parse(hsr.getParameter("birth-year")+"-"+hsr.getParameter("birth-month")+"-"+hsr.getParameter("birth-day"));
		} catch (ParseException e) {
			
			e.printStackTrace();
		}
		vo.setMemBirth(date);
		vo.setMemEmail(email);
		service.insertMember(vo);
		pser.insertMemIdPoint(memId);
		

		return "member_csh/login"; // 회원가입 후 로그인 폼으로 이동
	}

	@RequestMapping("/member_csh/findIdForm")
	public String findIdForm() {

		return "member_csh/findIdForm";
	}

	// 로그아웃
	@RequestMapping("/member_csh/logout")
	public String logout(HttpSession session) {
		// 세션 무효화
		session.invalidate();
		return "redirect:/";
	}

	// 아이디 찾기위해 이름 이메일 입력 확인
	@ResponseBody
	@RequestMapping("/member/findId")
	public String findId(@RequestParam("findIdName") String memName, @RequestParam("findIdEmail") String memEmail,
			Model model) {

		String result = service.findId(memName, memEmail);
		model.addAttribute("id", result);

		if (result != null) {
			return result;
		} else {
			result = "fail";
			return result;
		}

	}

	// 아이디 찾은 후 로그인
	@RequestMapping("/member_csh/searchAfterLoginForm")
	public String searchAfterLoginForm(@RequestParam String memId, Model model) {
		model.addAttribute("memId", memId);

		return "member_csh/login";
	}

	// 비밀번호 찾기 폼 이동
	@RequestMapping("/member_csh/findPwdForm")
	public String findPwdForm() {

		return "member_csh/findPwdForm";
	}

	// 비밀번호 찾기 위해 이름이랑 이메일 입력 확인
	@RequestMapping("/member_csh/findPwd")
	public String findPwd(@RequestParam("findPwdName") String memName, @RequestParam("findPwdEmail") String memEmail,
			Model model) {

		String result = service.findPwd(memName, memEmail);

		if (result != null) {
			if (result.equals(memName)) {
				return "member_csh/findPwdComplete";
			} else {
				return "redirect:/member_csh/login";
			}
		} else {
			return "redirect:/member_csh/findPwdForm";
		}
	}

	// 비밀번호 변경 (업데이트)
	@RequestMapping("/member_csh/changePwd")
	public String changePwd(VO_csh vo) {

		service.changePwd(vo);

		return "member_csh/login"; // 로그인 폼으로 이동
	}

	/* 비밀번호 찾기 */
	@RequestMapping(value = "/findpw", method = RequestMethod.GET)
	public void findPwGET() throws Exception{
	}
	
	@RequestMapping(value = "/findpw", method = RequestMethod.POST)
	public void findPwPOST(@ModelAttribute VO_csh member, HttpServletResponse response) throws Exception{
		service.findPw(response, member);
	}
}
