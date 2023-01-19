<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
<script src="<c:url value='/js/js_cjh/makeMID.js'/>"></script>
<script src="<c:url value='/js/js_cjh/jquery-ui.js'/>"></script>
<script src="<c:url value='/js/js_cjh/evo-calendar.min.js'/>"></script>
<link rel="stylesheet" type="text/css" href='<c:url value="/css/css_cjh/eat_manage.css"/>'>
<link rel="stylesheet" type="text/css" href='<c:url value="/css/css_cjh/datepicker.css"/>'>
<link rel="stylesheet" type="text/css" href='<c:url value="/css/css_cjh/jquery-ui.css"/>'>

<title>메뉴 등록</title>
</head>
</head>
<body>
<a href="/ilcoeat/main"> 일코 푸드 메인</a>
<h3>헤더 들어갈 자리</h3>
		 <div class="inputform">
			메뉴 등록
			<form method="post" action="/ilcofoodmange/insertmenu">
				<div class="row">
					<div class="what">
						식단 일자 : 
					</div>
					<div class="inputarea">
						<input type="date" name="menu_date" id="date">
					</div>
				</div>
				<div class="row">
					<div class="what">
						메뉴 타입 : 
					</div>
					<div class="inputarea">
						<select id="type" name="menu_type">
							<option value="" selected disabled>식단 유형 선택</option>
							<option value="LA">점심 A-type</option>
							<option value="LB">점심 B-type</option>
							<option value="DA">저녁 A-type</option>
							<option value="DB">저녁 B-type</option>
						</select>
					</div>
				</div>
				<div class="row">
						식판 구성
				</div>		
				<div class="row">
					<div class="inputarea">
						<div class="tray">		
							<div class="trayTop">
							        <input type="text" value="반찬1"name="men1">
							        <input type="text" value="반찬2"name="men2">
							        <input type="text" value="반찬3"name="men3">
							</div>
							<div class="trayBottom">
							        <input type="text" value="밥"name="menRice">
	  						        <input type="text" value="국"name="menSoup">
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="what">
						영양 정보
					</div>					
				</div>
				<div class="row">
					<div class="inputarea">
						<div class="nutrition">
						        총 열량 : <input type="text" name="cal">
						        단백질 : <input type="text" name="prot">
						        탄수화물 : <input type="text" name="carb">
						        지방 : <input type="text" name="fat">
						</div>
					</div>
				</div>
				<div class="row">
					<div class="what">
						알레르기 정보 : 
					</div>
					<input type="checkbox" id="allergy" name="allergy" value="갑각류">
					<label for="allergy"> 갑각류</label>
					<input type="checkbox" id="allergy" name="allergy" value="달걀">
					<label for="allergy"> 달걀</label>
					<input type="checkbox" id="allergy" name="allergy" value="견과류">
					<label for="allergy"> 견과류</label>
					<input type="checkbox" id="allergy" name="allergy" value="우유">
					<label for="allergy"> 우유</label>
					이미지 업로드
				</div>
				
				<input type="submit" value="등록">
			</form>
		</div>
		
		
		
		
<!-- 		
		
			등록 일자 확인
			<div class="calendar">
				<div class="cal_head" >
					<div class="row">
						<div><</div>
						<div>2023년</div>
						<div> 01월</div>
						<div>></div>
					</div>
					<div class="row">
					<div>일</div>
					<div>월</div>
					<div>화</div>
					<div>수</div>
					<div>목</div>
					<div>금</div>
					<div>토</div>
				</div>
		</div>
		<div class="cal_body" >
				<div class="week" id="week1">
					<div>1</div>
					<div>2</div>
					<div>3</div>
					<div>4</div>
					<div>5</div>
					<div>6</div>
					<div>7</div>
				</div>
				<div class="week" id="week2">
					<div>8</div>
					<div>9</div>
					<div>10</div>
					<div>11</div>
					<div>12</div>
					<div>13</div>
					<div>14</div>
				</div>
				<div class="week" id="week3">
					<div>15</div>
					<div>16</div>
					<div>17</div>
					<div>18</div>
					<div>19</div>
					<div>20</div>
					<div>21</div>
				</div>
				<div class="week" id="week4">
					<div>22</div>
					<div>23</div>
					<div>24</div>
					<div>25</div>
					<div>26</div>
					<div>27</div>
					<div>28</div>
				</div>
				<div class="week" id="week5">
					<div>30</div>
					<div>31</div>
					<div>1</div>
					<div>2</div>
					<div>3</div>
					<div>4</div>
					<div>5</div>
				</div>
			</div>
			
			
			
			
			


            
            
            
            
		</div>
		<div class="cal_footer" >
		</div>
		
		
		
		 -->
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
</body>

</html>