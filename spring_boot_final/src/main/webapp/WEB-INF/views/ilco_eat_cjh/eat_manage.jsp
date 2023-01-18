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
<link rel="stylesheet" type="text/css" href='<c:url value="/css/css_cjh/eat_manage.css"/>'>
<link rel="stylesheet" type="text/css" href='<c:url value="/css/css_cjh/datepicker.css"/>'>
<link rel="stylesheet" type="text/css" href='<c:url value="/css/css_cjh/jquery-ui.css"/>'>
<title>Insert title here</title>
</head>
<body>

		
			메뉴 등록
			<form method="post" action="/ilcofoodmange/insertmenu">
				식단 일자 : <input type="date" name="date" id="date">
				<br> 메뉴 종류 : <select id="type" name="menu_type">
					<option value="" selected disabled>메뉴 타입</option>
					<option value="LA">L-A</option>
					<option value="LB">L-B</option>
					<option value="DA">D-A</option>
					<option value="DB">D-B</option>
				</select><br> 식단 구성 : <input type="text" name="menu_comp"><br>
				영양정보 : <input type="text" name="nutrition_info"><br> 알레르기
				정보 : <input type="text"><br>
				사진 첨부>>
				<br> <input type="submit" value="등록">
			</form>
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
            
            
            
            
		</div>
		<div class="cal_footer" >
		</div>
		
</body>

</html>