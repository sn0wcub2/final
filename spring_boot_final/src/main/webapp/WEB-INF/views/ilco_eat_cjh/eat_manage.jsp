<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
<script src="<c:url value='/js/js_cjh/eat_manage.js'/>"></script>
<script src="<c:url value='/js/js_cjh/jquery-ui.js'/>"></script>
<link rel="stylesheet" type="text/css"
	href='<c:url value="/css/css_cjh/eat_manage.css"/>'>
<link rel="stylesheet" type="text/css"
	href='<c:url value="/css/css_cjh/datepicker.css"/>'>
<link rel="stylesheet" type="text/css"
	href='<c:url value="/css/css_cjh/jquery-ui.css"/>'>

<title>메뉴 등록</title>
</head>
</head>
<body>
	<a href="/ilcoeat/main"> 일코 푸드 메인</a>
	<h3>헤더 들어갈 자리</h3>
	<div class="inputform">
		<div class="title">메뉴 등록</div>
		<form method="post" action="/ilcofoodmange/insertmenu">
			<div class="row">
				<div class="what">식단 일자 :</div>
				<div class="inputarea">
					<input type="date" name="menu_date" id="date" placeholder="식단 일자">
				</div>
			</div>
			<div class="row">

				<div class="inputarea">
				
						<div class="searchBox">
							<div class="RadBtn">
									<input type="radio" value="Day-A" name="menu_type" id="type" class="radioBtn"> 
									<label for="Day-A" class="radLab">점심 A-type</label>
							</div>
							<div class="RadBtn">
									<input type="radio" value="Day-B"  name="menu_type" id="type" class="radioBtn">
									<label for="Day-B" class="radLab">점심 B-type</label>
							</div>
							<div class="RadBtn">
									<input type="radio" value="Night-A" name="menu_type" id="type"  class="radioBtn">
									<label for="Night-A" class="radLab">저녁 A-type</label>
							</div>
							<div class="RadBtn">
									<input type="radio" value="Night-B" name="menu_type" id="type"  class="radioBtn">
									<label for="Night-B" class="radLab">저녁 B-type</label>
							</div>
						</div>
<!-- 					<select id="type" name="menu_type"> -->
<!-- 						<option value="" selected disabled>식단 유형 선택</option> -->
<!-- 						<option value="Day-A">점심 A-type</option> -->
<!-- 						<option value="Day-B">점심 B-type</option> -->
<!-- 						<option value="Night-A">저녁 A-type</option> -->
<!-- 						<option value="Night-B">저녁 B-type</option> -->
<!-- 					</select> -->
				</div>
			</div>

			<div class="row">
				<div class="inputarea">
					<div class="compon">
						<input type="text" placeholder="메인  메뉴" name="mainMenu"> 
						<input type="text" placeholder="서브 메뉴" name="subMenu">
						 <input	type="text" placeholder="이외" name="other">
					</div>
				</div>
			</div>
			<div class="row">
				<div class="inputarea">
					<div class="nutrition">
						<input type="text" name="cal" placeholder="총 열량 (kcal)"> 
						<input type="text" name="prot" placeholder="단백질(g)">
						 <input	type="text" name="carb" placeholder="탄수화물(g)"> 
						<input type="text" name="fat" placeholder="지방(g)">
					</div>
				</div>
			</div>
			<div class="row">
				<div class="what">알레르기 정보 :</div>
				<input type="checkbox" class="allergy" name="allergy" value="갑각류">
				<label for="allergy"> 갑각류</label> <input type="checkbox"class="allergy" name="allergy" value="달걀"> 
				<label for="allergy"> 달걀</label> <input type="checkbox" class="allergy"	name="allergy" value="견과류"> 
					<label for="allergy">	견과류</label> <input type="checkbox" class="allergy" name="allergy"value="우유"> 
					<label for="allergy"> 우유</label> 이미지 업로드
			</div>

			<input type="submit" value="등록">
		</form>
	</div>




	<script>
		$.datepicker.setDefaults({
			dateFormat : 'yy-mm-dd',
			prevText : '이전 달',
			nextText : '다음 달',
			monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월',
					'9월', '10월', '11월', '12월' ],
			monthNamesShort : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월',
					'9월', '10월', '11월', '12월' ],
			dayNames : [ '일', '월', '화', '수', '목', '금', '토' ],
			dayNamesShort : [ '일', '월', '화', '수', '목', '금', '토' ],
			dayNamesMin : [ '일', '월', '화', '수', '목', '금', '토' ],
			showMonthAfterYear : true,
			yearSuffix : '년'
		});
		$(function() {
			$('.datepicker').datepicker({
				minDate : 0,
				autoclose : true,
				todayHighlight : true
			});
		})
	</script>
</body>

</html>