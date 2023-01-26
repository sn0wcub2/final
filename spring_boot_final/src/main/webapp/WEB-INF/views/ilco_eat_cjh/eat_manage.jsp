<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="<c:url value='/css/css_jjh/jquery-ui.css' />">
<link rel="stylesheet" type="text/css" href="<c:url value='/css/css_jjh/datepicker.css' />">
<link rel="stylesheet" type="text/css"	href='<c:url value="/css/css_cjh/eat_manage.css"/>'>
<c:import url="/WEB-INF/views/layout/header_main.jsp"/>
<script src="<c:url value='/js/js_jjh/jquery-ui.js'/>"></script>
<title>메뉴 등록</title>
</head>
</head>
<body>
	<c:import url="/WEB-INF/views/layout/top.jsp"/>
	<div class="inputmenuwraper">
		<div class="inputform">
			<div class="title">메뉴 등록</div>
			<form method="post" action="/ilcofoodmange/insertmenu">
				<div class="submitrow">
					<div class="what">식단 일자 :</div>
					<div class="inputarea">
						<input type='text' id="date-picker" name="date-picker" class='datepicker' placeholder="식단일자">
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
						<input type='date' id="date-picker" name="date-picker" class='datepicker' placeholder="식단일자">
					</div>
				</div>
				<div class="submitrow">
	
					<div class="inputarea">
					
							식단 유형 선택
							<div class="searchBox">
								<div class="radio-title-group">
								
									<div class="RadBtn">
											<input type="radio" value="Day-A" name="menu_type" id="type" class="radioBtn">
											<div class="radio_title">
												<img src="<c:url value='/image/cjh_sun.png'/>" class="type_icon">
												<label for="Day-A" class="radLab">A-type</label>
										</div>									
									</div>
									<div class="RadBtn">
											<input type="radio" value="Day-B"  name="menu_type" id="type" class="radioBtn">
											<div class="radio_title">
												<img src="<c:url value='/image/cjh_sun.png'/>" class="type_icon">
												<label for="Day-B" class="radLab">B-type</label>
											</div>
									</div>
									<div class="RadBtn">
											<input type="radio" value="Night-A" name="menu_type" id="type"  class="radioBtn">
											<div class="radio_title">
												<img src="<c:url value='/image/cjh_moon.png'/>" class="type_icon">
												<label for="Night-A" class="radLab">A-type</label>
											</div>
									</div>
									<div class="RadBtn">
											<input type="radio" value="Night-B" name="menu_type" id="type"  class="radioBtn">
											<div class="radio_title">
												<img src="<c:url value='/image/cjh_moon.png'/>" class="type_icon">	
												<label for="Night-B" class="radLab">B-type</label>
											</div>
									</div>
								</div>
							</div>
					</div>
				</div>
	
				<div class="submitrow">
					<div class="inputarea">
						메뉴 구성 입력
						<div class="compon">
							<input type="text" placeholder="메인  메뉴" name="mainMenu"> 
							<input type="text" placeholder="서브 메뉴" name="subMenu">
							 <input	type="text" placeholder="이외" name="other">
						</div>
					</div>
				</div>
				<div class="submitrow">
					<div class="inputarea">
					영양정보 입력
						<div class="nutrition">
							<input type="text" name="cal" placeholder="총 열량 (kcal)"> 
							<input type="text" name="prot" placeholder="단백질(g)">
							 <input	type="text" name="carb" placeholder="탄수화물(g)"> 
							<input type="text" name="fat" placeholder="지방(g)">
						</div>
					</div>
				</div>
				<div class="submitrow">
					<div class="inputarea">
					알레르기정보
						<div class="searchBox">
							<div class="check-title-group">
								<div class="checkBtn">
									<input type="checkbox" class="allergy" name="allergy" value="" checked>
									<div class="check_title">
										<label for="allergy"> 해당 없음</label>
									</div>
								</div>
								<div class="checkBtn">
									<input type="checkbox" class="allergy" name="allergy" value="갑각류">
									<div class="check_title">
									<img src="<c:url value='/image/cjh_lobster.png'/>" class="type_icon">
										<label for="allergy"> 갑각류</label>
									</div>
								</div>
								<div class="checkBtn">
									<input type="checkbox" class="allergy" name="allergy" value="달걀">
									<div class="check_title">
									<img src="<c:url value='/image/cjh_egg.png'/>" class="type_icon">
										<label for="allergy"> 달걀</label>
									</div>
								</div>
								<div class="checkBtn">
									<input type="checkbox" class="allergy" name="allergy" value="대두">
									<div class="check_title">
									<img src="<c:url value='/image/cjh_nuts.png'/>" class="type_icon">
										<label for="allergy"> 대두</label>
									</div>
								</div>
								<div class="checkBtn">
									<input type="checkbox" class="allergy" name="allergy" value="우유">
									<div class="check_title">
									<img src="<c:url value='/image/cjh_milk.png'/>" class="type_icon">
										<label for="allergy"> 우유</label>
									</div>
								</div>
								<div class="checkBtn">
									<input type="checkbox" class="allergy" name="allergy" value="땅콩">
									<div class="check_title">
									<img src="<c:url value='/image/cjh_peanut.png'/>" class="type_icon">
										<label for="allergy"> 땅콩</label>
									</div>
								</div>
								<div class="checkBtn">
									<input type="checkbox" class="allergy" name="allergy" value="복숭아">
									<div class="check_title">
									<img src="<c:url value='/image/cjh_peach.png'/>" class="type_icon">
										<label for="allergy"> 복숭아</label>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="menuUpload">
					<input type="submit" value="등록">
				</div>
			</form>
		</div>
	</div>
<a href="/ilcoeat/main"> 일코 푸드 메인</a>///
<a href="/ilcoeat/ilcoeat/menu_all"> 일코 푸드 메뉴 전체 조회</a>




		<c:import url="/WEB-INF/views/layout/footer.jsp"/>
</body>

</html>