<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
<script src="<c:url value='/js/js_cjh/makeMID.js'/>"></script>
<link rel="stylesheet" type="text/css" href='<c:url value="/css/css_cjh/eatsubmit.css"/>'>
<title>Insert title here</title>
</head>
<body>

	<div class="calcontainer">
		<div class="calendar">
			<div class="calendar-header">
				<span class="month-picker" id="month-picker">1</span>
				<div class="year-picker" id="year-picker">
					<span class="year-change" id="pre-year"> 
						<i>전</i>
					</span> 
					<span id="year">2023</span>
					 <span class="year-change"
						class="next-year"> 
						<i>후</i>
					</span>
				</div>
			</div>
달력 날짜 선택하여 메뉴 들어갔는지 확인>js 이용 하단 데이터 삽입

			<div class="calendar-body">
				<div class="calandar-week-days">
					<div>일</div>
					<div>월</div>
					<div>화</div>
					<div>수</div>
					<div>목</div>
					<div>금</div>
					<div>토</div>
				</div>
			</div>
			<div class="calendar-footer">
			</div>
			<div class="date-time-format">
				<div class="day-text-format"> 오늘 </div>
				<div class="date-time-value">
					<div class="time-format">04:29:30</div>
					<div class="date-format">2023-01-16</div>
				</div>
			</div>
			<div class="month-list"></div>

		</div>
	</div>
	
	
	
	
	메뉴 등록
	<form method="post" action="/ilcofoodmange/insertmenu">
		식단 일자 : <input type="date" name="date" id="date"><br> 메뉴
		종류 : <select id="type" name="menu_type">
			<option value="" selected disabled>메뉴 타입</option>
			<option value="LA">L-A</option>
			<option value="LB">L-B</option>
			<option value="DA">D-A</option>
			<option value="DB">D-B</option>
		</select><br> 식단 구성 : <input type="text" name="menu_comp"><br>
		영양정보 : <input type="text" name="nutrition_info"><br> 알레르기
		정보 : <input type="text"><br> <input type="submit"
			value="등록">
	</form>
</body>
</html>