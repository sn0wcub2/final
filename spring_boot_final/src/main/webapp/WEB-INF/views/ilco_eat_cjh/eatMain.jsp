<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일코 잇 메인 페이지</title>
<link rel="stylesheet" type="text/css"
	href='<c:url value="/css/css_cjh/eatMain.css"/>'>
	<c:import url="/WEB-INF/views/layout/header_main.jsp"/>
<script src='<c:url value="/js/js_cjh/panel.js"/>'>
	
</script>
</head>
<body>
	<div id="wrap">
		<!-- 		top -->
<c:import url="/WEB-INF/views/layout/top.jsp"/>



		<!-- 	메인 광고 -->
		<div id="mainbox">
			<div id="prevNextButtonBox">
				<img id="prevButton" src='<c:url value="/image/cjh_nextBtn.png"/>'>
				<img id="nextButton" src='<c:url value="/image/cjh_nextBtn.png"/>'>
			</div>
			<div id="slideShowBox">
				<div id="pannel">
					<div id="s1" class="section">
						<p id="t1" class="title">나의 소중한 시간을 위해</p>
						<p id="o1" class="outline">식사 준비는 일코 푸드에서 해드리겠습니다</p>
					</div>
					<div id="s2" class="section">
						<p id="t2" class="title">음식이란 말이죠</p>
						<p id="o2" class="outline">
							&nbsp;&nbsp;일코 푸드만의 엄격한 식품 검증 기준을 통해 <br>엄선된 재료만을 선별하여 최고 품질
							도시락을<br> 문 앞까지 가져가는 것이 일코 푸드의 철학입니다
						</p>
					</div>
					<div id="s3" class="section">
						<p id="t3" class="title">"일코 두 번 먹자"</p>
						<p id="o3" class="outline">일코 푸드의 두번 째 메뉴 출시</p>
					</div>
					<div id="s4" class="section">
						<p id="t4" class="title">메뉴 개발을 위한 끝 없는 도전</p>
					</div>
					<div id="s5" class="section">
						<p id="t5" class="title">특별한 포장</p>
						<p id="o5" class="outline">항상 특별해야할 나를 위해 그래핀 소재를 이용한 패키지를
							이용하고 있어요!</p>
					</div>
				</div>
			</div>
			<div id="controlButtonBox">
				<img src="<c:url value='/image/cjh_controlButton1.png'/>"
					class="controlButton"> <img
					src="<c:url value='/image/cjh_controlButton1.png'/>"
					class="controlButton"> <img
					src="<c:url value='/image/cjh_controlButton1.png'/>"
					class="controlButton"> <img
					src="<c:url value='/image/cjh_controlButton1.png'/>"
					class="controlButton"> <img
					src="<c:url value='/image/cjh_controlButton1.png'/>"
					class="controlButton">
			</div>
		</div>


	<c:import url="/WEB-INF/views/ilco_eat_cjh/eatmenu.jsp"/>

		<!-- 	일코 푸드 사용법 -->
		<!-- # main #29335C side #A8C686  -->
		<div class="sec03">
			<h3>일코 푸드 사용법</h3>
			<p>원하는 메뉴, 원하는 위치, 원하는 대로 정성스럽게</p>
			<div class="instruction">
				<div class="instructionBox">
					<div class="circle">
						<div class="in_num">1</div>
					</div>
					<div class="i1">지역 확인</div>
					<div class="text1">서비스 운영 지역을 확인 후 받을 주소를 입력</div>
				</div>
				<div class="instructionBox">
					<div class="circle">
						<div class="in_num">2</div>
					</div>
					<div class="i1">메뉴 선택</div>
					<div class="text1">내가 취향에 맞는 도시락을 유심히 생각해보기</div>
				</div>
				<div class="instructionBox">
					<div class="circle">
						<div class="in_num">3</div>
					</div>
					<div class="i1">일자 선택</div>
					<div class="text1">하루도 괜찮으니 도시락을 먹고 싶은 날짜 선택</div>
				</div>
			</div>
	<div class="subAn">
		<a href="<c:url value='/ilcoeat/eatSubscribe'/>">구독하러가기&gt;&gt;</a>
	</div>
		</div>


		<a href="/ilcoeat/Calendar">달력</a><br>
		<!-- 오늘의 메뉴 오늘의 메뉴 페이지 제작 후 진행 -->
<c:import url="/WEB-INF/views/layout/footer.jsp"/>
		<a href="/ilcoMypageasdfasdf">마이페이지 > 구독 관리</a><br>
	</div>
	<!-- bottom -->
</body>
</html>