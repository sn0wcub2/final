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
	
<script type="text/javascript">
var today = new Date();
function buildCalendar(){
  var row = null
  var cnt = 0;
  var calendarTable = document.getElementById("calendar");
  var calendarTableTitle = document.getElementById("calendarTitle");
  calendarTableTitle.innerHTML = today.getFullYear()+"년"+(today.getMonth()+1)+"월";
  
  var firstDate = new Date(today.getFullYear(), today.getMonth(), 1);
  var lastDate = new Date(today.getFullYear(), today.getMonth()+1, 0);
  while(calendarTable.rows.length > 2){
  	calendarTable.deleteRow(calendarTable.rows.length -1);
  }

  row = calendarTable.insertRow();
  for(i = 0; i < firstDate.getDay(); i++){
  	cell = row.insertCell();
  	cnt += 1;
  }

  row = calendarTable.insertRow();

  for(i = 1; i <= lastDate.getDate(); i++){
  	cell = row.insertCell();
  	cnt += 1;

    cell.setAttribute('id', i);
  	cell.innerHTML = i;
  	cell.align = "center";

    cell.onclick = function(){
    	clickedYear = today.getFullYear();
    	clickedMonth = ( 1 + today.getMonth() );
    	clickedDate = this.getAttribute('id');

    	clickedDate = clickedDate >= 10 ? clickedDate : '0' + clickedDate;
    	clickedMonth = clickedMonth >= 10 ? clickedMonth : '0' + clickedMonth;
    	clickedYMD = clickedYear + "-" + clickedMonth + "-" + clickedDate;

    	opener.document.getElementById("date").value = clickedYMD;
    	self.close();
    }

    if (cnt % 7 == 1) {
    	cell.innerHTML = "<font color=#F79DC2>" + i + "</font>";
    }

    if (cnt % 7 == 0){
    	cell.innerHTML = "<font color=skyblue>" + i + "</font>";
    	row = calendar.insertRow();
    }
  }

  if(cnt % 7 != 0){
  	for(i = 0; i < 7 - (cnt % 7); i++){
  		cell = row.insertCell();
  	}
  }
}

function prevCalendar(){
	today = new Date(today.getFullYear(), today.getMonth()-1, today.getDate());
	buildCalendar();
}

function nextCalendar(){
	today = new Date(today.getFullYear(), today.getMonth()+1, today.getDate());
	buildCalendar();
}
</script>
	
	</head>
	<body>
		<form method="post" action="#">
		
			<c:import url="/WEB-INF/views/layout/top.jsp"/>
	<!-- 	주소 입력 -->
			<div class="lct">
				<select name="location1">
					<option value="신림동">신림동</option>
					<option value="역삼동">역삼동</option>
					<option value="화양동">화양동</option>
				</select>
				<input type="text" name="lct2" placeholder="상세정보입력">
			</div>
	<!-- 	타입 선택 -->
			<div class="searchBox">
				<div class="radio-title-group">
				
					<div class="RadBtn">
							<input type="radio" value="Day-A" name="menu_type" id="type" class="radioBtn">
							<div class="radio_title">
								<img src="<c:url value='/image/cjh_sun.png'/>" class="type_icon">
								<label for="Day-A" class="radLab">A-type</label>
								<div class="instructions">이메뉴는 말이죠~~</div>
						</div>									
					</div>
					<div class="RadBtn">
							<input type="radio" value="Day-B"  name="menu_type" id="type" class="radioBtn">
							<div class="radio_title">
								<img src="<c:url value='/image/cjh_sun.png'/>" class="type_icon">
								<label for="Day-B" class="radLab">B-type</label>
								<div class="instructions">이메뉴는 말이죠~~</div>
							</div>
					</div>
					<div class="RadBtn">
							<input type="radio" value="Night-A" name="menu_type" id="type"  class="radioBtn">
							<div class="radio_title">
								<img src="<c:url value='/image/cjh_moon.png'/>" class="type_icon">
								<label for="Night-A" class="radLab">A-type</label>
								<div class="instructions">이메뉴는 말이죠~~</div>
							</div>
					</div>
					<div class="RadBtn">
							<input type="radio" value="Night-B" name="menu_type" id="type"  class="radioBtn">
							<div class="radio_title">
								<img src="<c:url value='/image/cjh_moon.png'/>" class="type_icon">	
								<label for="Night-B" class="radLab">B-type</label>
								<div class="instructions">이메뉴는 말이죠~~</div>
							</div>
					</div>
				</div>
			</div>
			
<!-- 			달력 -->
	<table id="calendar" align="center">
		<tr>
			<td align="center"><label onclick="prevCalendar()"> ◀ </label></td>
			<td colspan="5" align="center" id="calendarTitle">yyyy년 m월</td>
			<td align="center"><label onclick="nextCalendar()"> ▶ </label></td>
		</tr>
		<tr>
			<td align="center"><font color ="#F79DC2">일</td>
			<td align="center">월</td>
			<td align="center">화</td>
			<td align="center">수</td>
			<td align="center">목</td>
			<td align="center">금</td>
			<td align="center"><font color ="skyblue">토</td>
		</tr>
		<script type="text/javascript">buildCalendar();</script>
	</table>
		</form>
		<c:import url="/WEB-INF/views/layout/footer.jsp"/>
	</body>
</html>