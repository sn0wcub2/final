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
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/css_jjh/SafeReturn.css' />">
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/css_jjh/timepicki.css' />">
		<c:import url="/WEB-INF/views/layout/header_main.jsp"/> <!-- 헤더 -->
		<script src="<c:url value='/js/js_jjh/jquery-ui.js'/>"></script>
		<script src="<c:url value='/js/js_jjh/timepicki.js'/>"></script>
		<script src="https://apis.openapi.sk.com/tmap/jsv2?version=1&appKey=l7xxad34a3adc29543b7a7962a0496fa88a3"></script>
		<script src="<c:url value='/js/js_jjh/safereturn_paths.js'/>"></script>
		<script src="<c:url value='/js/js_jjh/Accompany.js'/>"></script>
		
	</head>
	<body onload="mapMaker();">
		<c:import url="/WEB-INF/views/layout/top.jsp"/> <!-- 탑 메뉴 -->
		
		<div class="gtco-loader"></div>
		<br>
		<h1 style="text-align:center; color:orange;">안심 귀가 서비스</h1> <hr><br>
		
		<div style="text-align:center;">
			<form id="safeReturnAddressForm">
				<div class="dtse" style="margin-left:50px;">
					<p>날짜 입력</p>
					<input type='text' id="date-picker" name="date-picker" class='datepicker' autocomplete="off" style="text-align:center;" readonly>
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
					</script><p></p>
					<input type="text" id="timepicker" name="timepicker" autocomplete="off" style="text-align:center;" readonly>
					<script type='text/javascript'>
						$('#timepicker').timepicki({
							show_meridian:false,
							min_hour_value:0,
							max_hour_value:23,
							overflow_minutes:true,
							increase_direction:'up'});
					</script>
				</div>
				<div class="dtse circling">
				<p style="font-size:1.4em;">출&ensp;발&ensp;지&emsp;&nbsp;입&ensp;력</p>
				    <select id="dong1" name="dong1">
				      <option value="역삼동" selected="selected">역삼동</option>
				      <option value="신림동">신림동</option>
				      <option value="화양동">화양동</option>
				    </select>&emsp;
					<input type="text" class="text_custom" id="bunji1" name="bunji1" placeholder="1" autocomplete="off">번지
				</div>
				
				<div class="dtse circling">
				<p style="font-size:1.4em;">도&ensp;착&ensp;지&emsp;&nbsp;입&ensp;력</p>
					<select id="dong2" name="dong2">
				      <option value="역삼동" selected="selected">역삼동</option>
				      <option value="신림동">신림동</option>
				      <option value="화양동">화양동</option>
				    </select>&emsp;
					<input type="text" class="text_custom" id="bunji2" name="bunji2" placeholder="2" autocomplete="off">번지
				</div>
				<br><br><br>
				<button id="findPaths" class="btn-two cyan small" style=" margin-bottom:10px;">경로 탐색</button>
				<hr style="margin-top:30px;"><br><br>
				
				<!-- 190430 기존 지도를 모두 이미지 처리 위해 주석 처리 S -->
				<div id="map_wrap" class="map_wrap3" style="width:900px; margin: auto; border:0.5px solid skyblue;">
					<div id="map_div"></div>
				</div>
				<div class="map_act_btn_wrap clear_box"></div>
				<br><br>
				<div id="safeReturnSignUpBox">
					<span id="result" style="height:70px;"></span>&emsp;&emsp;
					<span id="safeReturnPay"></span>
					<br><br><br>
					<input type="submit" value="서비스 신청" class="btn-two cyan small">
				</div>
			</form>
		</div>
		<c:import url="/WEB-INF/views/layout/footer.jsp"/> <!-- 바텀 메뉴 -->
	</body>
</html>