<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<title>마이페이지 메인</title>
</head>
<body>
	<div id="wrap">
		<div class="Mypage">
			<div id="MypageMain"></div>
			<h1 align="center">마이페이지</h1>
			<hr>
			<nav class="nav flex-column">
			  <a class="nav-link active" aria-current="page" href="#" onclick="location.href='<c:url value='/mypage_csh/MypageUpdate/'/>'">회원정보 수정</a>
			  <a class="nav-link" href="#" onclick="location.href='<c:url value='/mypage_csh/MypageBoard'/>'">내 게시글 확인</a>
			  <a class="nav-link" href="#" onclick="location.href='<c:url value='/mypage_csh/MyPageSubscribe'/>'">구독 정보 확인</a>
			  <a class="nav-link" href="#" onclick="location.href='<c:url value='/mypage_csh/MypageService'/>'">예약된 서비스 확인</a>
			  <a class="nav-link" href="#" onclick="location.href='<c:url value='/mypage_csh/MypagePoint'/>'">포인트 내역 확인</a>
			  <a class="nav-link" href="#" onclick="location.href='<c:url value='/mypage_csh/MypageDelete'/>'">회원 탈퇴</a>
			</nav>		
		</div>
	</div>
</body>
</html>
