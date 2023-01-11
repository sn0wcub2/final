<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
<!-- 		top -->
		<br><br><hr>
		<section id="sec01">
			집에서 도시락... 서비스 내용<br>
			<button type="button" onclick="location.href='<c:url value='/ilcoeat/eatSubscribe'/>'">구독</button>
		</section>
		<br><br><hr>
		<section id="sec02">
			오늘의 메뉴<br>
			오늘 날짜<br>
			점심 메뉴 사진1, 사진2, 사진3<br>
			저녁 메뉴 사진1, 사진2, 사진3<br>
			<button type="button" onclick="location.href='<c:url value='/ilcoeat/eatMenu'/>'">메뉴 보기</button>
		</section>
		<br><br><hr>
		<section id="sec03">
			사용법 사진 등등<br>
			사진 사진 사진
		</section>
		<br><br><hr>
		<section id="sec04">
			현재 지원 지역<br>
			지역 리스트|하하|호호|허허|<br>
			<button type="button" onclick="location.href='<c:url value='/ilcoeat/eatRequest'/>'"> 신청</button>
		</section>
		<br><br><hr>
		<section id="sec05">
			후기<br>
			하하하하하
		</section>
		
		<a href="/ilcoMypageasdfasdf">마이페이지 > 구독 관리</a>

<!-- 		bottom -->
	</body>
</html>