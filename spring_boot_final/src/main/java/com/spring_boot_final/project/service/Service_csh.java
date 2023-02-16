package com.spring_boot_final.project.service;

import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.mail.HtmlEmail;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.spring_boot_final.project.dao.IDAO_csh;
import com.spring_boot_final.project.dao.IMypageDAO_csh;
import com.spring_boot_final.project.model.VO_csh;

@Service
public class Service_csh implements IService_csh {
	@Autowired
	@Qualifier("IDAO_csh")
	IDAO_csh dao;
	
	@Autowired
	@Qualifier("IMypageDAO_csh")
	IMypageDAO_csh mdao;

	@Autowired
	private PasswordEncoder passwordEncoder;

	private ServletResponse response;

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

	@Override
	public void sendEmail(VO_csh vo, String div) throws Exception {
		// Mail Server 설정
		String charSet = "utf-8";
		String hostSMTP = "smtp.gmail.com"; //네이버 이용시 smtp.naver.com
		//"서버 이메일 주소(보내는 사람 이메일 주소)";
		String hostSMTPid = "dkwktjdgus1@gmail.com";
		//"서버 이메일 비번(보내는 사람 이메일 비번)";
		String hostSMTPpwd = "whjfkivykcamrktz";

		// 보내는 사람 EMail, 제목, 내용
		//"보내는 사람 이메일주소(받는 사람 이메일에 표시됨)";
		String fromEmail = "dkwktjdgus1@gmail.com";
		//"프로젝트이름 또는 보내는 사람 이름";
		String fromName = "최성현";
		String subject = "";
		String msg = "";

		if(div.equals("findpw")) {
			subject = "일코노미 임시 비밀번호 입니다.";
			msg += "<div align='center' style='border:1px solid black; font-family:verdana'>";
			msg += "<h3 style='color: blue;'>";
			msg += vo.getMemId() + "님의 임시 비밀번호 입니다. 비밀번호를 변경하여 사용하세요.</h3>";
			msg += "<p>임시 비밀번호 : ";
			msg += vo.getMemPwd() + "</p></div>";
		}

		// 받는 사람 E-Mail 주소
		String mail = vo.getMemEmail();
		try {
			HtmlEmail email = new HtmlEmail();
			email.setDebug(true);
			email.setCharset(charSet);
			email.setSSL(true);
			email.setHostName(hostSMTP);
			email.setSmtpPort(465); //네이버 이용시 587

			email.setAuthentication(hostSMTPid, hostSMTPpwd);
			email.setTLS(true);
			email.addTo(mail, charSet);
			email.setFrom(fromEmail, fromName, charSet);
			email.setSubject(subject);
			email.setHtmlMsg(msg);
			email.send();
		} catch (Exception e) {
			System.out.println("메일발송 실패 : " + e);
		}
	}

	@Override
	public void findPw(HttpServletResponse resp, VO_csh vo) throws Exception {
		response.setContentType("text/html;charset=utf-8");
		VO_csh ck = mdao.detailViewMyPage(vo.getMemId());
		PrintWriter out = response.getWriter();
		// 가입된 아이디가 없으면
		if(dao.memIdCheck(vo.getMemId()) == null) {
			out.print("등록되지 않은 아이디입니다.");
			out.close();
		}
		// 가입된 이메일이 아니면
		else if(!vo.getMemEmail().equals(ck.getMemEmail())) {
			out.print("등록되지 않은 이메일입니다.");
			out.close();
		}else {
			// 임시 비밀번호 생성
			String pw = "";
			for (int i = 0; i < 12; i++) {
				pw += (char) ((Math.random() * 26) + 97);
			}
			vo.setMemPwd(pw);
			// 비밀번호 변경
			dao.updatePw(vo);
			// 비밀번호 변경 메일 발송
			sendEmail(vo, "findpw");

			out.print("이메일로 임시 비밀번호를 발송하였습니다.");
			out.close();
		}
	}
}
