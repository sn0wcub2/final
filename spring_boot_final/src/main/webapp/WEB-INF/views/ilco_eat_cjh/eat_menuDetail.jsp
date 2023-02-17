<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
<script src="<c:url value='/js/js_cjh/eat_manage.js'/>"></script>
<script src="<c:url value='/js/js_cjh/jquery-ui.js'/>"></script>
<link rel="stylesheet" type="text/css"	href='<c:url value="/css/css_cjh/eat_menuDetail.css"/>'>
<link rel="stylesheet" type="text/css"	href='<c:url value="/css/css_cjh/datepicker.css"/>'>
<link rel="stylesheet" type="text/css"	href='<c:url value="/css/css_cjh/jquery-ui.css"/>'>
<c:import url="/WEB-INF/views/layout/header_main.jsp"/>
<title>메뉴 상세 정보</title>
</head>
</head>
<body>

	<c:import url="/WEB-INF/views/layout/top.jsp"/>
	<div class="inputmenuwraper">
		<div class="inputform">
			<c:set var="typeWord" value="${menu.menu_type}"/>
		    <c:set var ="length" value = "${fn:length(typeWord)}"/>
			<c:set var="typeLast" value="${fn:substring(typeWord, length-1, length)} "/>
			<c:set var="dateWord" value="${menu.menu_date}"/>
		    <c:set var ="datelength" value = "${fn:length(dateWord)}"/>
			<c:set var="dateLast" value="${fn:substring(dateWord, datelength-5, datelength)} "/>
			<div class="title">${dateLast} ${typeLast } 타입</div>
			<div class="sampleImg">
				<img src="<c:url value='/image/cjh_smaple.jpg'/>" class="type_icon">
			</div>
			<form method="post" action="/ilcofoodmange/insertmenu" >
				<div class="submitrow">
					<div class="inputarea">
						<input type='text' id="date-picker" name="menu_date" class='datepicker' value="${menu.menu_date}" pattern="YYYY-MM-dd" readonly>
					</div>
				</div>
				<div class="submitrow">
	
					<div class="inputarea">
					
							식단 유형 선택
							<div class="searchBox">
								<div class="radio-title-group">
									<c:choose>
										<c:when test="${menu.menu_type == 'Day-A' }">
											<div class="RadBtn">
													<input type="radio" value="Day-A" name="menu_type" id="type" class="radioBtn" checked onclick="return(false);">
													<div class="radio_title">
														<img src="<c:url value='/image/cjh_sun.png'/>" class="type_icon">
														<label for="Day-A" class="radLab">A-type</label>
													</div> 
											</div>
											<div class="RadBtn">
													<input type="radio" value="Day-B"  name="menu_type" id="type" class="radioBtn" onclick="return(false);">
													<div class="radio_title">
														<img src="<c:url value='/image/cjh_sun.png'/>" class="type_icon">
														<label for="Day-B" class="radLab">B-type</label>
													</div>
											</div>
											<div class="RadBtn">
													<input type="radio" value="Night-A" name="menu_type" id="type"  class="radioBtn" onclick="return(false);">
													<div class="radio_title">
														<img src="<c:url value='/image/cjh_moon.png'/>" class="type_icon">
														<label for="Night-A" class="radLab">A-type</label>
													</div>
											</div>
											<div class="RadBtn">
													<input type="radio" value="Night-B" name="menu_type" id="type"  class="radioBtn" onclick="return(false);">
													<div class="radio_title">
														<img src="<c:url value='/image/cjh_moon.png'/>" class="type_icon">	
														<label for="Night-B" class="radLab">B-type</label>
													</div>
											</div>
									</c:when>
									<c:when test="${menu.menu_type == 'Day-B'}">
											<div class="RadBtn">
													<input type="radio" value="Day-A" name="menu_type" id="type" class="radioBtn" onclick="return(false);">
													<div class="radio_title">
														<img src="<c:url value='/image/cjh_sun.png'/>" class="type_icon">
														<label for="Day-A" class="radLab">A-type</label>
													</div> 
											</div>
											<div class="RadBtn">
													<input type="radio" value="Day-B"  name="menu_type" id="type" class="radioBtn" checked onclick="return(false);">
													<div class="radio_title">
														<img src="<c:url value='/image/cjh_sun.png'/>" class="type_icon">
														<label for="Day-B" class="radLab">B-type</label>
													</div>
											</div>
											<div class="RadBtn">
													<input type="radio" value="Night-A" name="menu_type" id="type"  class="radioBtn" onclick="return(false);">
													<div class="radio_title">
														<img src="<c:url value='/image/cjh_moon.png'/>" class="type_icon">
														<label for="Night-A" class="radLab">A-type</label>
													</div>
											</div>
											<div class="RadBtn">
													<input type="radio" value="Night-B" name="menu_type" id="type"  class="radioBtn" onclick="return(false);">
													<div class="radio_title">
														<img src="<c:url value='/image/cjh_moon.png'/>" class="type_icon">	
														<label for="Night-B" class="radLab">B-type</label>
													</div>
											</div>
									</c:when>
									<c:when test="${menu.menu_type == 'Night-B' }">
										<div class="RadBtn">
												<input type="radio" value="Day-A" name="menu_type" id="type" class="radioBtn" onclick="return(false);">
												<div class="radio_title">
													<img src="<c:url value='/image/cjh_sun.png'/>" class="type_icon">
													<label for="Day-A" class="radLab">A-type</label>
												</div> 
										</div>
										<div class="RadBtn">
												<input type="radio" value="Day-B"  name="menu_type" id="type" class="radioBtn" onclick="return(false);">
												<div class="radio_title">
													<img src="<c:url value='/image/cjh_sun.png'/>" class="type_icon">
													<label for="Day-B" class="radLab">B-type</label>
												</div>
										</div>
										<div class="RadBtn">
												<input type="radio" value="Night-A" name="menu_type" id="type"  class="radioBtn" onclick="return(false);">
												<div class="radio_title">
													<img src="<c:url value='/image/cjh_moon.png'/>" class="type_icon">
													<label for="Night-A" class="radLab">A-type</label>
												</div>
										</div>
										<div class="RadBtn">
												<input type="radio" value="Night-B" name="menu_type" id="type"  class="radioBtn"checked onclick="return(false);">
												<div class="radio_title">
													<img src="<c:url value='/image/cjh_moon.png'/>" class="type_icon">	
													<label for="Night-B" class="radLab">B-type</label>
												</div>
										</div>
								</c:when>
								<c:when test="${menu.menu_type =='Night-A' }">
									<div class="RadBtn">
											<input type="radio" value="Day-A" name="menu_type" id="type" class="radioBtn"  onclick="return(false);">
											<div class="radio_title">
												<img src="<c:url value='/image/cjh_sun.png'/>" class="type_icon">
												<label for="Day-A" class="radLab">A-type</label>
											</div> 
									</div>
									<div class="RadBtn">
											<input type="radio" value="Day-B"  name="menu_type" id="type" class="radioBtn" onclick="return(false);">
											<div class="radio_title">
												<img src="<c:url value='/image/cjh_sun.png'/>" class="type_icon">
												<label for="Day-B" class="radLab">B-type</label>
											</div>
										</div>
										<div class="RadBtn">
												<input type="radio" value="Night-A" name="menu_type" id="type"  class="radioBtn"checked onclick="return(false);">
												<div class="radio_title">
													<img src="<c:url value='/image/cjh_moon.png'/>" class="type_icon">
													<label for="Night-A" class="radLab">A-type</label>
												</div>
										</div>
										<div class="RadBtn">
												<input type="radio" value="Night-B" name="menu_type" id="type"  class="radioBtn" onclick="return(false);">
												<div class="radio_title">
													<img src="<c:url value='/image/cjh_moon.png'/>" class="type_icon">	
													<label for="Night-B" class="radLab">B-type</label>
												</div>
										</div>
									</c:when>
								</c:choose>
							</div>
						</div>
					</div>
				</div>
	
				<div class="submitrow">
					<div class="inputarea">
						메뉴 구성 입력
						<div class="compon">
							<input type="text" placeholder="${menu.mainMenu}" name="mainMenu" readonly> 
							<input type="text" placeholder="${menu.subMenu }" name="subMenu" readonly>
							 <input	type="text" placeholder="${menu.other }" name="other" readonly>
						</div>
					</div>
				</div>

				<div class="submitrow">
					<div class="inputarea">
					알레르기정보
					<c:set var = "Lst" value="${menu.allergy_info }"/>
						<div class="searchBox">
							<div class="check-title-group">
								<div class="checkBtn">
									<input type="checkbox" class="allergy" name="allergy" value="" checked  onclick="return(false);">
									<div class="check_title">
										<label for="allergy"> 해당 없음</label>
									</div>
								</div>
								<c:choose>
									<c:when test="${fn:contains(Lst, '갑각류') }">
										<div class="checkBtn">
											<input type="checkbox" class="allergy" name="allergy" value="갑각류" checked onclick="return(false);">
											<div class="check_title">
											<img src="<c:url value='/image/cjh_lobster.png'/>" class="type_icon">
												<label for="allergy"> 갑각류</label>
											</div>
										</div>
									</c:when>		
									<c:otherwise>
										<div class="checkBtn">
											<input type="checkbox" class="allergy" name="allergy" value="갑각류" onclick="return(false);" >
											<div class="check_title">
											<img src="<c:url value='/image/cjh_lobster.png'/>" class="type_icon">
												<label for="allergy"> 갑각류</label>
											</div>
										</div>
									</c:otherwise>							
								</c:choose>
								<c:choose>
									<c:when test="${fn:contains(Lst, '달걀') }">
										<div class="checkBtn">
											<input type="checkbox" class="allergy" name="allergy" value="달걀" checked onclick="return(false);">
											<div class="check_title">
											<img src="<c:url value='/image/cjh_egg.png'/>" class="type_icon">
												<label for="allergy"> 달걀</label>
											</div>
										</div>
									</c:when>		
									<c:otherwise>
										<div class="checkBtn">
											<input type="checkbox" class="allergy" name="allergy" value="달걀" onclick="return(false);">
											<div class="check_title">
											<img src="<c:url value='/image/cjh_egg.png'/>" class="type_icon">
												<label for="allergy"> 달걀</label>
											</div>
										</div>
									</c:otherwise>							
								</c:choose>
								<c:choose>
									<c:when test="${fn:contains(Lst, '대두') }">
										<div class="checkBtn">
											<input type="checkbox" class="allergy" name="allergy" value="대두" checked onclick="return(false);">
											<div class="check_title">
											<img src="<c:url value='/image/cjh_nuts.png'/>" class="type_icon">
												<label for="allergy"> 대두</label>
											</div>
										</div>
									</c:when>		
									<c:otherwise>
										<div class="checkBtn">
											<input type="checkbox" class="allergy" name="allergy" value="대두" onclick="return(false);">
											<div class="check_title">
											<img src="<c:url value='/image/cjh_nuts.png'/>" class="type_icon">
												<label for="allergy"> 대두</label>
											</div>
										</div>
									</c:otherwise>							
								</c:choose>
								<c:choose>
									<c:when test="${fn:contains(Lst, '우유') }">
										<div class="checkBtn">
											<input type="checkbox" class="allergy" name="allergy" value="우유" checked onclick="return(false);">
											<div class="check_title">
											<img src="<c:url value='/image/cjh_milk.png'/>" class="type_icon">
												<label for="allergy"> 우유</label>
											</div>
										</div>
									</c:when>		
									<c:otherwise>
										<div class="checkBtn">
											<input type="checkbox" class="allergy" name="allergy" value="우유"  onclick="return(false);">
											<div class="check_title">
											<img src="<c:url value='/image/cjh_milk.png'/>" class="type_icon">
												<label for="allergy"> 우유</label>
											</div>
										</div>
									</c:otherwise>							
								</c:choose>
								<c:choose>
									<c:when test="${fn:contains(Lst, '땅콩') }">
										<div class="checkBtn">
											<input type="checkbox" class="allergy" name="allergy" value="땅콩" checked onclick="return(false);">
											<div class="check_title">
											<img src="<c:url value='/image/cjh_peanut.png'/>" class="type_icon">
												<label for="allergy"> 땅콩</label>
											</div>
										</div>
									</c:when>		
									<c:otherwise>
										<div class="checkBtn">
											<input type="checkbox" class="allergy" name="allergy" value="땅콩" onclick="return(false);">
											<div class="check_title">
											<img src="<c:url value='/image/cjh_peanut.png'/>" class="type_icon">
												<label for="allergy"> 땅콩</label>
											</div>
										</div>
									</c:otherwise>							
								</c:choose>
								<c:choose>
									<c:when test="${fn:contains(Lst, '복숭아') }">
										<div class="checkBtn">
											<input type="checkbox" class="allergy" name="allergy" value="복숭아" checked onclick="return(false);">
											<div class="check_title">
											<img src="<c:url value='/image/cjh_peach.png'/>" class="type_icon">
												<label for="allergy"> 복숭아</label>
											</div>
										</div>
									</c:when>		
									<c:otherwise>
										<div class="checkBtn">
											<input type="checkbox" class="allergy" name="allergy" value="복숭아" onclick="return(false);" >
											<div class="check_title">
											<img src="<c:url value='/image/cjh_peach.png'/>" class="type_icon">
												<label for="allergy"> 복숭아</label>
											</div>
										</div>
									</c:otherwise>							
								</c:choose>
							</div>
						</div>
					</div>
				</div>
				
				<div class="submitrow">
					<div class="inputarea">
					영양정보 입력
						<div class="nutrition">
							<div class="nutrition_row">
								열량 : <input type="text" name="cal" value="${menu.cal } " readonly><div class="unit">(kcal)</div>
							</div>
							<div class="nutrition_row">
								단백질 : <input type="text" name="prot" value="${menu.prot }" readonly><div class="unit">(g)</div>
							</div>
							<div class="nutrition_row">
								탄수화물 : <input	type="text" name="carb"value="${menu.carb }" readonly><div class="unit">(g)</div>
							</div>
							<div class="nutrition_row">
								지방 : <input type="text" name="fat"value="${menu.prot }" readonly><div class="unit">(g)</div>
							</div>
						</div>
					</div>
				</div>
				<br>
				<div class="menuUpload">
							<a href="/ilcoeat/menu_all"> &lt;&lt;일코 푸드 메뉴 전체 조회&gt;&gt;</a><br><br>
							<a href="/ilcoeat/main"> 일코 푸드 메인</a><br>
				</div>
			</form>
		</div>
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
		<c:import url="/WEB-INF/views/layout/footer.jsp"/>
</body>

</html>