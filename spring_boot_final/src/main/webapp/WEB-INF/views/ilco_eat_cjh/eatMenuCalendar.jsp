<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>메뉴 확인</title>
		<c:import url="/WEB-INF/views/layout/header_main.jsp"/>
	<link rel="stylesheet" type="text/css" href='<c:url value="/css/css_cjh/eatcalendar.css"/>'>
	</head>
	<body>
		<form method="post" action="#">
		
			<c:import url="/WEB-INF/views/layout/top.jsp"/>
	<!-- 	주소 입력 -->
			<div class="lct">
				<select name="location1">
					<option value="신림동">신림동</option>
					<option value="역삼동">역삼동</option>
					<option value="화양동">화양동</option>
				</select>
				<input type="text" name="lct2" placeholder="상세정보입력">
			</div>
	<!-- 	타입 선택 -->
			<div class="searchBox">
				<div class="radio-title-group">
				
					<div class="RadBtn">
							<input type="radio" value="Day-A" name="menu_type" id="type" class="radioBtn">
							<div class="radio_title">
								<img src="<c:url value='/image/cjh_sun.png'/>" class="type_icon">
								<label for="Day-A" class="radLab">A-type</label>
								<div class="instructions">이메뉴는 말이죠~~</div>
						</div>									
					</div>
					<div class="RadBtn">
							<input type="radio" value="Day-B"  name="menu_type" id="type" class="radioBtn">
							<div class="radio_title">
								<img src="<c:url value='/image/cjh_sun.png'/>" class="type_icon">
								<label for="Day-B" class="radLab">B-type</label>
								<div class="instructions">이메뉴는 말이죠~~</div>
							</div>
					</div>
					<div class="RadBtn">
							<input type="radio" value="Night-A" name="menu_type" id="type"  class="radioBtn">
							<div class="radio_title">
								<img src="<c:url value='/image/cjh_moon.png'/>" class="type_icon">
								<label for="Night-A" class="radLab">A-type</label>
								<div class="instructions">이메뉴는 말이죠~~</div>
							</div>
					</div>
					<div class="RadBtn">
							<input type="radio" value="Night-B" name="menu_type" id="type"  class="radioBtn">
							<div class="radio_title">
								<img src="<c:url value='/image/cjh_moon.png'/>" class="type_icon">	
								<label for="Night-B" class="radLab">B-type</label>
								<div class="instructions">이메뉴는 말이죠~~</div>
							</div>
					</div>
				</div>
			</div>
	<!-- 							날짜 선택 -->
			<div class="calendar-wrap">
				<div class="calendar">
					<div class="header">
						<div class="year-month"></div>
						<div class="nav">
							<button class="nav-btn go-prev" onclick="prevMonth()">&lt;</button>
							<button class="nav-btn go-today"onclick="goToday()">today</button>
							<button class="nav-btn go-next"onclick="nextMonth()">&gt;</button>
						</div>
					</div>
					<div class="main">
						<div class="days">
							<div class="day">일</div>
							<div class="day">월</div>
							<div class="day">화</div>
							<div class="day">수</div>
							<div class="day">목</div>
							<div class="day">금</div>
							<div class="day">토</div>
						</div>
						<div class="dates"></div>
					</div>
				</div>
			<div class="calenderRslt">
				<div class="dateRslt"></div>
			</div>
			</div>			
			<div class="menuUpload">
				<input type="submit" value="등록">
			</div>
		</form>
		<script src="<c:url value='/js/js_cjh/eatcalendar.js'/>"></script>
		<c:import url="/WEB-INF/views/layout/footer.jsp"/>
	</body>
</html>