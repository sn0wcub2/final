<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		
		<title>안심 동행</title>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/css_jjh/jquery-ui.css' />">
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/css_jjh/datepicker.css' />">
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/css_jjh/SafeReturn.css' />">
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/css_jjh/timepicki.css' />">
		<c:import url="/WEB-INF/views/layout/header_main.jsp"/> <!-- 헤더 -->
		<script src="<c:url value='/js/js_jjh/jquery-ui.js'/>"></script>
		<script src="<c:url value='/js/js_jjh/timepicki.js'/>"></script>
		
	</head>
	<body onload="mapMaker();">
		<c:import url="/WEB-INF/views/layout/top.jsp"/> <!-- 탑 메뉴 -->
		
		<div class="gtco-loader"></div>
		<br>
		<h1 style="text-align:center; color:orange;">안심 동행 서비스</h1> <hr><br>
		
		<div style="text-align:center;">
			<form id="safeReturnAddressForm">
				<div class="dtse circling" style="margin-left:50px; height:155px;">
					<p style="font-size:1.4em;">날&ensp;짜&ensp;및&ensp;시&ensp;간</p>
					<input type='text' id="date-picker" name="date-picker" class='datepicker' placeholder="날짜를 입력해주세요" autocomplete="off" style="text-align:center;" readonly>
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
					<input type="text" id="timepicker" name="timepicker" placeholder="시작 시간을 입력해주세요" autocomplete="off" style="text-align:center;" readonly>
					<script type='text/javascript'>
						$('#timepicker').timepicki({
							show_meridian:false,
							min_hour_value:8,
							max_hour_value:5,
							step_size_minutes:15,
							overflow_minutes:true,
							increase_direction:'up',
							start_time: ["8", "00"]});
					</script><p></p>
					<input type="text" id="timepicker2" name="timepicker2" placeholder="종료 시간을 입력해주세요" autocomplete="off" style="text-align:center;" readonly>
					<script type='text/javascript'>
						$('#timepicker2').timepicki({
							show_meridian:false,
							min_hour_value:8,
							max_hour_value:21,
							step_size_minutes:15,
							overflow_minutes:true,
							increase_direction:'up',
							start_time: ["8", "00"]});
					</script>
				</div>
				<div class="dtse circling">
				<p style="font-size:1.4em;">출&ensp;발&ensp;지&ensp;/&ensp;귀&ensp;가&ensp;지</p>
				    <select id="dong1" name="dong1">
				      <option value="역삼동" selected="selected">역삼동</option>
				      <option value="신림동">신림동</option>
				      <option value="화양동">화양동</option>
				    </select>&emsp;
					<input type="text" class="text_custom" id="bunji1" name="bunji1" placeholder="1" autocomplete="off">번지
				</div>
				
				<div class="dtse circling">
				<p style="font-size:1.4em;">목&ensp;적&ensp;지&emsp;&nbsp;입&ensp;력</p>
					<input type="text" class="text_custom2" id="bunji2" name="bunji2" placeholder="건물명을 입력하세요" autocomplete="off">
				</div>
				<br><br><br>
				<hr style="margin-top:30px;"><br><br>
				<div id="safeReturnSignUpBox">
					<input type="submit" value="서비스 신청" class="btn-two cyan small">
				</div>
			</form>
		</div>
		<c:import url="/WEB-INF/views/layout/footer.jsp"/> <!-- 바텀 메뉴 -->
	</body>
</html>