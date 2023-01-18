<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>로그인 화면</title>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/login.css'/>">
		<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
		<script src="<c:url value='/js/js_csh/login.js'/>"></script>
		<script src="<c:url value='/js/js_csh/findIdForm.js'/>"></script>
	</head>
	<body>
	<div id="wrap">
		<div class="loginbox">
			<div id="login">
				<form id="loginForm" name="loginForm">
					<h1>로그인</h1>
					
					<h4>아이디</h4>
					<span class="input_area"><input type="text" maxlength="13" id="id" name="id" value="${memId}"
					placeholder="아이디를 입력해 주세요." required/></span>
					
					<h4>비밀번호</h4>
					<span class="input_area"><input type="password" maxlength="15" id="pwd" name="pwd" 
					placeholder="비밀번호를 입력해 주세요." required></span>
					<ul>
						<li><a href="<c:url value="/member_csh/findIdForm"/>">아이디 찾기</a></li>
						<li><a href="<c:url value="/member_csh/findPwdForm"/>">비밀번호 변경</a></li>
						<li><a href="<c:url value="/member_csh/signUp"/>">회원가입</a></li>
					</ul>
					<button type="submit">로그인</button>
				</form>
			</div>
		</div>
	</div>
	</body>
	<footer>
    </footer>
</html>