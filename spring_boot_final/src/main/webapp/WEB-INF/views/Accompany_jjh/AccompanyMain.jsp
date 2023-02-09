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
		<script src="<c:url value='/js/js_jjh/AccompanyService.js'/>"></script>
		
	</head>
	<body>
		<c:import url="/WEB-INF/views/layout/top.jsp"/> <!-- 탑 메뉴 -->
		
		<div class="gtco-loader"></div>
		<br>
		<h1 style="text-align:center; color:orange;">안심 동행 서비스</h1> <hr><br>
		
		<div style="text-align:center;width: 900px;margin: 0 auto;">
			<form id="AccompanyForm">
				<div class="dtse circling" style="margin-left:40px; height:155px;">
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
					<input type="text" id="timepicker" name="timepicker" placeholder="시작 시간을 입력해주세요" autocomplete="off" onChange="setCharge()" style="text-align:center;" readonly>
					<script type='text/javascript'>
						$('#timepicker').timepicki({
							show_meridian:false,
							on_change:setCharge,
							min_hour_value:8,
							max_hour_value:15,
							step_size_minutes:15,
							overflow_minutes:true,
							disable_keyboard_mobile: true,
							increase_direction:'up',
							start_time: ["8", "00"]});
					</script><p></p>
					<input type="text" id="timepicker2" name="timepicker2" placeholder="종료 시간을 입력해주세요" autocomplete="off" onChange="setCharge()" style="text-align:center;" readonly>
					<script type='text/javascript'>
						$('#timepicker2').timepicki({
							show_meridian:false,
							on_change:setCharge,
							min_hour_value:8,
							max_hour_value:21,
							step_size_minutes:15,
							overflow_minutes:true,
							disable_keyboard_mobile: true,
							increase_direction:'up',
							start_time: ["8", "00"]});
					</script>
				</div>
				<div style="display:inline-block;width:572px;height:200px;">
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
						<input type="text" class="text_custom2" id="destination" name="destination" placeholder="건물명을 입력하세요" autocomplete="off">
					</div>
					
					<div id="spdiv">
						<span style="margin-left: 20px;font-size:1.4em;">요청 사항</span>&ensp;
						<input type="text" class="text_custom3" id="description" name="description" placeholder="요청 사항을 입력하세요" autocomplete="off">
					</div>
				</div>
				<p/>
				<p style="text-align:start; color:red;">※교통비는 별도로 지불하셔야합니다.</p>
				<p style="text-align:start; color:red;">※이용 예정 시간을 초과할 시 추가적인 금액 지불이 발생합니다.(15분당 2000원)</p>
				<br>
				<span><img src="/image/main_images/cash.png" class="sfimg">&nbsp;&nbsp;결제 금액 : </span><span id="accompanyPay"></span>
				<hr style="margin-top:30px;"><br><br>
				<div id="AccompanySignUpBox">
					<input type="submit" value="서비스 신청" class="btn-two cyan small">
				</div>
			</form>
		</div>
		<c:import url="/WEB-INF/views/layout/footer.jsp"/> <!-- 바텀 메뉴 -->
	</body>
</html>