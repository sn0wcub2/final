<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		
		<title>안전 귀가</title>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/css_jjh/jquery-ui.css' />">
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/css_jjh/datepicker.css' />">
		<c:import url="/WEB-INF/views/layout/header_main.jsp"/>
		<script src="<c:url value='/js/js_jjh/jquery-ui.js'/>"></script>
		<script src="https://apis.openapi.sk.com/tmap/jsv2?version=1&appKey=l7xxad34a3adc29543b7a7962a0496fa88a3"></script>
		<script src="<c:url value='/js/js_jjh/safereturn_paths.js'/>"></script>
		<script src="<c:url value='/js/js_jjh/Accompany.js'/>"></script>
		
	</head>
	<body onload="mapMaker();">
		<c:import url="/WEB-INF/views/layout/top.jsp"/>
		
		<div class="gtco-loader"></div>

		<div style="text-align:center;">
			<form id="safeReturnAddressForm">
				<p>날짜 입력</p>
				<input type='text' id="date-picker" name="date-picker" class='datepicker'>
				<script>
					$.datepicker.setDefaults({
						  dateFormat: 'yy-mm-dd',
						  prevText: '이전 달',
						  nextText: '다음 달',
						  monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
						  monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
						  dayNames: ['일', '월', '화', '수', '목', '금', '토'],
						  dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
						  dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
						  showMonthAfterYear: true,
						  yearSuffix: '년'
						});
					  $(function(){
						  $('.datepicker').datepicker({
							    minDate: 0,
							    autoclose: true,
							    todayHighlight: true
							});
					  })
				</script>
				<p>시작지 입력</p>
			    <select id="dong1" name="dong1">
			      <option value="역삼동" selected="selected">역삼동</option>
			      <option value="신림동">신림동</option>
			      <option value="화양동">화양동</option>
			    </select>
				<input type="text" class="text_custom" id="bunji1" name="bunji1" placeholder="1">번지<br>
				<p>도착지 입력</p>
				<select id="dong2" name="dong2">
			      <option value="역삼동" selected="selected">역삼동</option>
			      <option value="신림동">신림동</option>
			      <option value="화양동">화양동</option>
			    </select>
				<input type="text" class="text_custom" id="bunji2" name="bunji2" placeholder="1">번지<br>
				<br>
				<button id="findPaths">경로 탐색</button>
				<br><br>
				
				<!-- 190430 기존 지도를 모두 이미지 처리 위해 주석 처리 S -->
				<div id="map_wrap" class="map_wrap3" style="padding-left:25%">
					<div id="map_div"></div>
				</div>
				<div class="map_act_btn_wrap clear_box"></div>
				
				<div id="safeReturnSignUpBox">
					<p id="result"></p>
					<p id="safeReturnPay"></p>
					<input type="submit" value="서비스 신청">
					<button id='safeReturnSignUpBtn' onClick='location.href="/safe/signup"'>서비스 신청 버튼</button>
				</div>
			</form>
		</div>
		<c:import url="/WEB-INF/views/layout/footer.jsp"/>
	</body>
</html>