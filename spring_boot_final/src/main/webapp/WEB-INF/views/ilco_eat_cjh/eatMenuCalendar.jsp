<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>메뉴 확인</title>
	<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
	<link rel="stylesheet" type="text/css" href='<c:url value="/css/css_cjh/eatcalendar.css"/>'>
	</head>
	<body>
		<div class="calandar">
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
	<script src="<c:url value='/js/js_cjh/eatcalendar.js'/>"></script>
	</body>
</html>