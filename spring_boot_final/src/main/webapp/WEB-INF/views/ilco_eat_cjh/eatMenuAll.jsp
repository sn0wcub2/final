<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>메뉴 확인</title>
	<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
	<link rel="stylesheet" type="text/css" href='<c:url value="/css/css_cjh/eatMenuAll.css"/>'>
		<c:import url="/WEB-INF/views/layout/header_main.jsp"/>
	</head>
	<body>
		<c:import url="/WEB-INF/views/layout/top.jsp"/>
	<div class="allmenuWrap">
		<div class="allMenuTitle">
			일코푸드 전체 메뉴
		</div>
			
			
			
			<div class="searchBox">
				<div class="RadBtn">
						<input type="radio" value="*" name="type" id="" class="radioBtn" onchange="search(this.value)"checked> 
						<label for="" class="radLab" >전체 보기</label>
				</div>
				<div class="RadBtn">
						<input type="radio" value="Day-A" name="type" id="Day-A" onchange="search(this.value)" class="radioBtn"> 
						<label for="Day-A" class="radLab">점심 A-type</label>
				</div>
				<div class="RadBtn">
						<input type="radio" value="Day-B"  name="type" id="Day-B" onchange="search(this.value)" class="radioBtn">
						<label for="Day-B" class="radLab">점심 B-type</label>
				</div>
				<div class="RadBtn">
						<input type="radio" value="Night-A" name="type" id="Night-A" onchange="search(this.value)" class="radioBtn">
						<label for="Night-A" class="radLab">저녁 A-type</label>
				</div>
				<div class="RadBtn">
						<input type="radio" value="Night-B" name="type" id="Night-B" onchange="search(this.value)" class="radioBtn">
						<label for="Night-B" class="radLab">저녁 B-type</label>
				</div>
			</div>
		<div class="box" id="ListBox">
					<div class="menu_row">
							<div class="topelmt" ><div class="elmt1">날짜</div><div class="elmt2">타입</div><div class="elmt3">구성 메뉴</div></div>
					</div>
			<c:forEach var="menu" items="${menuAllList}" >
				<section>
					<c:choose>
						<c:when test="${menu.menu_type == 'Day-A'}">
							<c:set var="type" value="점심 A-타입"/>
						</c:when>
						<c:when test="${menu.menu_type == 'Day-B'}">
							<c:set var="type" value="저녁 A-타입"/>
						</c:when>
						<c:when test="${menu.menu_type == 'Night-A'}">
							<c:set var="type" value="저녁 A-타입"/>
						</c:when>
						<c:when test="${menu.menu_type == 'Night-B'}">
							<c:set var="type" value="저녁 B-타입"/>
						</c:when>
						<c:otherwise>
							<div class="row">
								관리자가 일을 안하네요^^;;
							</div>
						</c:otherwise>
					</c:choose>
			
					<div class="menu_row" id="${ menu.menu_type}">
					<a href="<c:url value='/ilcoeat/detail/${menu.menu_id}'/>">
							<div class="elmt" >
								<div class="elmt1">${menu.menu_date}</div><div class="elmt2">${type }</div><div class="elmt3"> ${menu.mainMenu} / ${menu.subMenu} / ${menu.other}</div>
							</div>
					</a>
					</div>
				</section>
			</c:forEach>
		</div>
<!-- 		<div class="formhere">메뉴를 눌러주세요</div> -->
	</div>
		<div class="line">
			<hr>
		</div>
	<c:import url="/WEB-INF/views/layout/footer.jsp"/>
	</body>
</html>