<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>메뉴 확인</title>
	<link rel="stylesheet" type="text/css" href='<c:url value="/css/css_cjh/eatMenuAll.css"/>'>
	</head>
	<body>
		오늘 메뉴 ((요약))<br>
		<div class="ld">
			<c:set var="ymd" value="<%=new java.util.Date()%>" />
			<fmt:formatDate value="${ymd}" pattern="yy년 MM월 dd일 점심" />
		</div>
	<div class="box" id="LunchBox">
		<c:forEach var="menu" items="${menuList}" begin="0" end="1">
			<section>
				<div class="top">
						<div class="showType"> ${menu.menu_type } 타입</div>
					<img class="menupic" src='<c:url value="#"/>'>
				</div>
				<div class="bottom">
					<div class="row">
						<div class="expln">메뉴 구성</div>
						<div class="elmt"><div class="elmt1">메인 메뉴 :</div><div class="elmt2"> "${menu.mainMenu}"</div></div>
						<div class="elmt"><div class="elmt1">서브 메뉴 :</div><div class="elmt2"> "${menu.subMenu}"</div></div>
						<div class="elmt"><div class="elmt1">기타 메뉴 :</div><div class="elmt2"> "${menu.other}"</div></div>
					</div>
				</div>
			</section>
		</c:forEach>
	</div>
			<div class="ld">
			<c:set var="ymd" value="<%=new java.util.Date()%>" />
			<fmt:formatDate value="${ymd}" pattern="yy년 MM월 dd일 저녁" />
		</div>

	</body>
</html>