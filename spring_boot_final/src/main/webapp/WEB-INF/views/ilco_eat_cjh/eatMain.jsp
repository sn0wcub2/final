<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>일코 잇 메인 페이지</title>
		<link rel="stylesheet" type="text/css" href='<c:url value="/css/css_cjh/eatMain.css"/>'>
	</head>
	<body>
<!-- 		top -->
	<div class="nav">
		<img src="image/cjh_beta_eat_logo.png"class="logo">로고 경로 찾아줘유
		<ul>
			<li> <a href="<c:url value='/ilcoeat/eatSubscribe'/>">구독하기</a></li>
			<li> <a href="<c:url value='/ilcoeat/eatMenu'/>">오늘 메뉴</a></li>
			<li> <a href="#">후기</a></li>
			<li> <a href="#">문의하기</a></li>
		</ul>
	</div>
	
<!-- 	메인 광고 -->
	<div class="banner">
		<div class="content">
			<div class="content-left">
				<h1>일코푸드</h1>
				<p>대충 상업적 문구 자리 우측에는 사진</p>
			</div>
			<div class="content-right">
				<img src="#"id="mainfood">
				<br>맛있는 음식 사진
			</div>
		</div>
			<div>
				<button class="subbutton" id="subbutton1"type="button" onclick="location.href='<c:url value='/ilcoeat/eatSubscribe'/>'">구독</button>
			</div>
	</div>
	
<!-- 	일코 푸드 사용법 -->
	<div class="sec01">
		<h3>3단계로 보는 일코 푸드 사용법</h3><br>
		<div class="instruction">
			<div class="instructionBox">
				1. 지역 확인<br>
				<div class="icon">
					<img src="#" > 아이콘자리<br>
				</div>
				내 지역이 배달 가능 지역인지 확인<br>
			</div>
			<div class="instructionBox">
				2. 메뉴 선택<br>
				<div class="icon">
					<img src="#" > 아이콘자리<br>
				</div>
				나에게 맞는 메뉴 선택<br>
			</div>
			<div class="instructionBox">
				날짜 선택<br>
				<div class="icon">
					<img src="#" > 아이콘자리<br>
				</div>
				배달 받을 날짜 선택<br>
			</div>
		</div>
		<div>
				<button class="subbutton" id="subbutton2" type="button" onclick="location.href='<c:url value='/ilcoeat/eatSubscribe'/>'"> 나도 사용하기</button>
		</div>
	</div>



<!-- 오늘의 메뉴 오늘의 메뉴 페이지 제작 후 진행 -->
		<section class="sec02">
			오늘의 메뉴<br>
			오늘 날짜<br>
			점심 메뉴 사진1, 사진2, 사진3<br>
			저녁 메뉴 사진1, 사진2, 사진3<br>
			오늘의 메뉴 페이지 제작 후 진행
			<button type="button" onclick="location.href='<c:url value='/ilcoeat/eatMenu'/>'">메뉴 보기</button>
		</section>
		
		
		
		<section class="sec03">
			후기<br>
			하하하하하
		</section>
		<hr><hr>
		
		<a href="/ilcoMypageasdfasdf">마이페이지 > 구독 관리</a><br>
		<a href="/ilcofoodmange">관리자</a>

<!-- 		bottom -->
	</body>
</html>