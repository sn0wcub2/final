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
	<script src="<c:url value='/js/js_cjh/eatcalender.js'/>"></script>
	<link rel="stylesheet" type="text/css" href='<c:url value="/css/css_cjh/eatcalender.css"/>'>
	</head>
	<body>
		<div class="wrap flex jcc aic">
			<div class="calender">
				<div class="calender-top">일</div>
				<div class="calender-top">월</div>
				<div class="calender-top">화</div>
				<div class="calender-top">수</div>
				<div class="calender-top">목</div>
				<div class="calender-top">금</div>
				<div class="calender-top">토</div>
			</div>
			<div class="dates"></div>
		</div>
		<script>
			Calendar.$calendar = document.querySelector(".calendar");
			Calendar.init();
		</script>
	</body>
</html>