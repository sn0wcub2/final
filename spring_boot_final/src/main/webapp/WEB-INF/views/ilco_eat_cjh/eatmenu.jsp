<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메뉴 확인</title>
<link rel="stylesheet" type="text/css"	href='<c:url value="/css/css_cjh/eatMenu.css"/>'>
</head>
<body>


<div class="menuwrap">

	<br>
	<div class="ld">
		<c:set var="ymd" value="<%=new java.util.Date()%>" />
		<fmt:formatDate value="${ymd}" pattern="MM-dd 점심" />
	</div>
	<div class="box" id="LunchBox">
		<c:forEach var="menu" items="${menuList}" begin="0" end="1">
<!-- 		마지막 글자 추출 -->
			<c:set var="typeWord" value="${menu.menu_type}"/>
		    <c:set var ="length" value = "${fn:length(typeWord)}"/>
			<c:set var="typeLast" value="${fn:substring(typeWord, length-1, length)} "/>
			<div class="sectionTodaymenu">
				<div class="showType">${typeLast} - type</div>
				<div class="main_container">
					<img class="menupic" src='<c:url value="/image/cjh_eatMain1.jpg"/>'>
					
					<div class="overLay">
						<div class="expln">
							<img class="menuIcon" src='<c:url value="/image/cjh_menu.png"/>'>
							<div class="mencomp">메뉴 구성</div>
						</div>
						<div class="elmt">| ${menu.mainMenu}/ ${menu.other} /${menu.subMenu} |</div>
						<div class="elmt3">
								<img class="infoIcon" src='<c:url value="/image/cjh_info.png"/>'><a href="/ilcoeat/detail/${menu.menu_id}">세부 정보 더 보기</a>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>
	
		<div class="ld">
		<c:set var="ymd" value="<%=new java.util.Date()%>" />
		<fmt:formatDate value="${ymd}" pattern="MM-dd 저녁" />
	</div>
	<div class="box" id="LunchBox">
		<c:forEach var="menu" items="${menuList}" begin="2" end="3">
<!-- 		마지막 글자 추출 -->
			<c:set var="typeWord" value="${menu.menu_type}"/>
		    <c:set var ="length" value = "${fn:length(typeWord)}"/>
			<c:set var="typeLast" value="${fn:substring(typeWord, length-1, length)} "/>
			<div class="sectionTodaymenu">
				<div class="showType">${typeLast} - type</div>
				<div class="main_container">
					<img class="menupic" src='<c:url value="/image/cjh_eatMain1.jpg"/>'>
					
					<div class="overLay">
						<div class="expln">
							<img class="menuIcon" src='<c:url value="/image/cjh_menu.png"/>'>
							<div class="mencomp">메뉴 구성</div>
						</div>
						<div class="elmt">| ${menu.mainMenu} / ${menu.other} /	${menu.subMenu} |</div>
						<div class="elmt3">
							<img class="infoIcon" src='<c:url value="/image/cjh_info.png"/>'><a href="/ilcoeat/detail/${menu.menu_id}">세부 정보 더 보기</a>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>
	<div class="menuAtag">
		<a href="/ilcoeat/menu_all"> &lt;&lt;일코 푸드 전체 조회&gt;&gt;</a>
	</div>
</div>


</body>
</html>