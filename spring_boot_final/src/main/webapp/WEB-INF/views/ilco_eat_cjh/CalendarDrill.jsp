<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>달력 연습</title>
		<c:import url="/WEB-INF/views/layout/header_main.jsp"/>
		<link rel="stylesheet" type="text/css" href='<c:url value="/css/css_cjh/CalendarDrill.css"/>'>
		<script type="text/javascript" src='<c:url value="/js/js_cjh/drill.js"/>'>buildCalendar();</script>
	</head>
	<body>
			<c:import url="/WEB-INF/views/layout/top.jsp"/>
		<form method="post" action="#">
		
		
	<div class="calendar-wrap">
		<table id="calendar">
				<tr>
					<td><label onclick="prevCalendar()">◀</label></td>
					<td id="CalendarTitle" colspan="5">yyyy년 mm월</td>
					<td><label onclick="nextCalendar()"> ▶</label></td>
				</tr>
				<tr>
					<td>일</td>
					<td>월</td>
					<td>화</td>
					<td>수</td>
					<td>목</td>
					<td>금</td>
					<td>토</td>
				</tr>
				<script type="text/javascript">buildCalendar();</script>
		</table>
	</div>
	
	
	
	
	
			<div class="menuUpload">
				<input type="submit" value="등록">
			</div>
		</form>
		<c:import url="/WEB-INF/views/layout/footer.jsp"/>
	</body>
</html>



