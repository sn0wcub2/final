<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>메뉴 확인</title>
		<c:import url="/WEB-INF/views/layout/header_main.jsp"/>
	<link rel="stylesheet" type="text/css" href='<c:url value="/css/css_cjh/eatcalendar.css"/>'>
	<script type="text/javascript" src='<c:url value="/js/js_cjh/CheckBlank.js"/>'>CheckBlank();</script>
	
	
	</head>
	<body>
		<form method="post" action="/ilcoeat/eatSubscribeSubmit">
		
			<c:import url="/WEB-INF/views/layout/top.jsp"/>
	<!-- 	주소 입력 -->
			<div class="lct">
			<img src="<c:url value='/image/cjh_map.png'/>" class="lct_ctg_icon">	
			<div class="lctDis">
				1 . 배달 받을 주소 입력
			</div>
				<select name="address1" >
					<option value="신림동" >신림동</option>
					<option value="역삼동" >역삼동</option>
					<option value="화양동" >화양동</option>
				</select>
				<input type="text" name="address2" placeholder="상세정보입력">
			</div>
	<!-- 	타입 선택 -->
			<div class="subsec2">
				<img src="<c:url value='/image/cjh_menu.png'/>" class="lct_ctg_icon">	
				<div class="lctDis">
					2 . 메뉴 선택
				</div>
				<div class="searchBox">			
					<div class="radio-title-group">
					
						<div class="RadBtn">
								<input type="radio" value="Day-A" name="menu_type" id="type" class="radioBtn">
								<div class="radio_title">
									<img src="<c:url value='/image/cjh_sun.png'/>" class="type_icon">
									<label for="Day-A" class="radLab">A-type</label>
									<div class="instructions">한식 위주의 일코푸드 스테디 셀러</div>
									<div class="instructions-price">6000원</div>
							</div>									
						</div>
						<div class="RadBtn">
								<input type="radio" value="Day-B"  name="menu_type" id="type" class="radioBtn">
								<div class="radio_title">
									<img src="<c:url value='/image/cjh_sun.png'/>" class="type_icon">
									<label for="Day-B" class="radLab">B-type</label>
									<div class="instructions">다양하고 새로운 글로벌 메뉴 </div>
									<div class="instructions-price">8000원</div>
								</div>
						</div>
						<div class="RadBtn">
								<input type="radio" value="Night-A" name="menu_type" id="type"  class="radioBtn">
								<div class="radio_title">
									<img src="<c:url value='/image/cjh_moon.png'/>" class="type_icon">
									<label for="Night-A" class="radLab">A-type</label>
									<div class="instructions">저녁에 부담이 안되는 한식 위주의 메뉴</div>
									<div class="instructions-price">6000원</div>
								</div>
						</div>
						<div class="RadBtn">
								<input type="radio" value="Night-B" name="menu_type" id="type"  class="radioBtn">
								<div class="radio_title">
									<img src="<c:url value='/image/cjh_moon.png'/>" class="type_icon">	
									<label for="Night-B" class="radLab">B-type</label>
									<div class="instructions">피로감을 날려줄 자극적인 메뉴</div>
									<div class="instructions-price">8000원</div>
								</div>
						</div>
					</div>
				</div>
			</div>
	<!-- 							날짜 선택 -->
	
			<div class="dateCheck">
				<img src="<c:url value='/image/cjh_menu.png'/>" class="lct_ctg_icon">	
					<div class="lctDis">
						3 . 날짜 선택
					</div>
					<div class="monthInfo">
						2023년 3월
					</div>
					<div class="dayrow">
						<div class="day">일</div>
						<div class="day">월</div>
						<div class="day">화</div>
						<div class="day">수</div>
						<div class="day">목</div>
						<div class="day">금</div>
						<div class="day">토</div>
					</div>
					
						<div class="inputarea">
								<div class="check-title-group">
								
									<div class="week" id="week1">
										<div class="checkBtn">
											<input type="checkbox" class="order_date" name="order_date" value="" >
											<div class="check_title">
												<label for="order_date"> 구독불가</label>
											</div>
										</div>
										<div class="checkBtn">
											<input type="checkbox" class="order_date" name="order_date" value="" >
											<div class="check_title">
												<label for="order_date">구독불가</label>
											</div>
										</div>
										<div class="checkBtn">
											<input type="checkbox" class="order_date" name="order_date" value="" >
											<div class="check_title">
												<label for="order_date"> 구독불가</label>
											</div>
										</div>
										<div class="checkBtn">
											<input type="checkbox" class="order_date" name="order_date" value="2023-03-01" >
											<div class="check_title">
												<label for="order_date"> 1</label>
											</div>
										</div>
										<div class="checkBtn">
											<input type="checkbox" class="order_date" name="order_date" value="2023-03-02" >
											<div class="check_title">
												<label for="order_date"> 2</label>
											</div>
										</div>
										<div class="checkBtn">
											<input type="checkbox" class="order_date" name="order_date" value="2023-03-03">
											<div class="check_title">
												<label for="order_date"> 3</label>
											</div>
										</div>
										<div class="checkBtn">
											<input type="checkbox" class="order_date" name="order_date" value="2023-03-04" >
											<div class="check_title">
												<label for="order_date"> 4</label>
											</div>
										</div>
								</div>
								<div class="week" id="week2">
									<div class="checkBtn">
										<input type="checkbox" class="order_date" name="order_date" value="2023-03-05" >
										<div class="check_title">
											<label for="order_date"> 5</label>
										</div>
									</div>
									<div class="checkBtn">
										<input type="checkbox" class="order_date" name="order_date" value="2023-03-06" >
										<div class="check_title">
											<label for="order_date">6</label>
										</div>
									</div>
									<div class="checkBtn">
										<input type="checkbox" class="order_date" name="order_date" value="2023-03-07" >
										<div class="check_title">
											<label for="order_date"> 7</label>
										</div>
									</div>
									<div class="checkBtn">
										<input type="checkbox" class="order_date" name="order_date" value="2023-03-08" >
										<div class="check_title">
											<label for="order_date">8</label>
										</div>
									</div>
									<div class="checkBtn">
										<input type="checkbox" class="order_date" name="order_date" value="2023-03-09" >
										<div class="check_title">
											<label for="order_date"> 9</label>
										</div>
									</div>
									<div class="checkBtn">
										<input type="checkbox" class="order_date" name="order_date" value="2023-03-10">
										<div class="check_title">
											<label for="order_date"> 10</label>
										</div>
									</div>
									<div class="checkBtn">
										<input type="checkbox" class="order_date" name="order_date" value="2023-03-11" >
										<div class="check_title">
											<label for="order_date">11</label>
										</div>
									</div>
								</div>
								<div class="week" id="week3">
									<div class="checkBtn">
										<input type="checkbox" class="order_date" name="order_date" value="2023-03-12" >
										<div class="check_title">
											<label for="order_date"> 12</label>
										</div>
									</div>
									<div class="checkBtn">
										<input type="checkbox" class="order_date" name="order_date" value="2023-03-13" >
										<div class="check_title">
											<label for="order_date">13</label>
										</div>
									</div>
									<div class="checkBtn">
										<input type="checkbox" class="order_date" name="order_date" value="2023-03-14" >
										<div class="check_title">
											<label for="order_date"> 14</label>
										</div>
									</div>
									<div class="checkBtn">
										<input type="checkbox" class="order_date" name="order_date" value="2023-03-15" >
										<div class="check_title">
											<label for="order_date">15</label>
										</div>
									</div>
									<div class="checkBtn">
										<input type="checkbox" class="order_date" name="order_date" value="2023-03-16" >
										<div class="check_title">
											<label for="order_date"> 16</label>
										</div>
									</div>
									<div class="checkBtn">
										<input type="checkbox" class="order_date" name="order_date" value="2023-03-17">
										<div class="check_title">
											<label for="order_date">17</label>
										</div>
									</div>
									<div class="checkBtn">
										<input type="checkbox" class="order_date" name="order_date" value="2023-03-18" >
										<div class="check_title">
											<label for="order_date">18</label>
										</div>
									</div>
								</div>
									<div class="week"id="week4">
										<div class="checkBtn">
											<input type="checkbox" class="order_date" name="order_date" value="2023-03-19" >
											<div class="check_title">
												<label for="order_date"> 19</label>
											</div>
										</div>
										<div class="checkBtn">
											<input type="checkbox" class="order_date" name="order_date" value="2023-03-20" >
											<div class="check_title">
												<label for="order_date">20</label>
											</div>
										</div>
										<div class="checkBtn">
											<input type="checkbox" class="order_date" name="order_date" value="2023-03-21" >
											<div class="check_title">
												<label for="order_date"> 21</label>
											</div>
										</div>
										<div class="checkBtn">
											<input type="checkbox" class="order_date" name="order_date" value="2023-03-22" >
											<div class="check_title">
												<label for="order_date">22</label>
											</div>
										</div>
										<div class="checkBtn">
											<input type="checkbox" class="order_date" name="order_date" value="2023-03-23" >
											<div class="check_title">
												<label for="order_date">23</label>
											</div>
										</div>
										<div class="checkBtn">
											<input type="checkbox" class="order_date" name="order_date" value="2023-03-24">
											<div class="check_title">
												<label for="order_date">24</label>
											</div>
										</div>
										<div class="checkBtn">
											<input type="checkbox" class="order_date" name="order_date" value="2023-03-25" >
											<div class="check_title">
												<label for="order_date">25</label>
											</div>
										</div>
								</div>
									<div class="week" id="week5">
										<div class="checkBtn">
											<input type="checkbox" class="order_date" name="order_date" value="2023-03-26" >
											<div class="check_title">
												<label for="order_date">26</label>
											</div>
										</div>
										<div class="checkBtn">
											<input type="checkbox" class="order_date" name="order_date" value="2023-03-27" >
											<div class="check_title">
												<label for="order_date">27</label>
											</div>
										</div>
										<div class="checkBtn">
											<input type="checkbox" class="order_date" name="order_date" value="2023-03-28" >
											<div class="check_title">
												<label for="order_date"> 28</label>
											</div>
										</div>
										<div class="checkBtn">
											<input type="checkbox" class="order_date" name="order_date" value="2023-03-29" >
											<div class="check_title">
												<label for="order_date"> 29</label>
											</div>
										</div>
										<div class="checkBtn">
											<input type="checkbox" class="order_date" name="order_date" value="2023-03-30" >
											<div class="check_title">
												<label for="order_date"> 30</label>
											</div>
										</div>
										<div class="checkBtn">
											<input type="checkbox" class="order_date" name="order_date" value="2023-03-31">
											<div class="check_title">
												<label for="order_date"> 31</label>
											</div>
										</div>
										<div class="checkBtn">
											<input type="checkbox" class="order_date" name="order_date" value="" >
											<div class="check_title">
												<label for="order_date"> 4월</label>
											</div>
										</div>
								</div>
							</div>
					</div>
				</div>

			<div class="menuUpload">
				<input type="submit" value="등록" onclick="CheckBlank()">
			</div>
		</form>
		<c:import url="/WEB-INF/views/layout/footer.jsp"/>
	</body>
</html>