<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>메뉴 확인</title>
	<link rel="stylesheet" type="text/css" href='<c:url value="/css/css_cjh/eatMenu.css"/>'>
	</head>
	<body>
		오늘 메뉴 ((요약))<br>
		<div>
			<c:set var="ymd" value="<%=new java.util.Date()%>" />
			<fmt:formatDate value="${ymd}" pattern="yy년 MM월 dd일의 식단" />
		</div>
	<c:forEach var="menu" items="${menuList}">
	<section>
			<div class="top">
				<img id="menupic" src='<c:url value="#"/>'>
			</div>
			<div class="bottom">
				<div class="row">
					<div class="expln">메뉴 구성</div>
					<div class="elmt">"${menu.men1}, ${menu.men2}, ${menu.men3}, ${menu.menRice}, ${menu.menSoup}</div>
				</div>
			</div>
	</section>
	</c:forEach>
	css 설계용
	<section>
			<div class="top">
				<img id="menupic" src='<c:url value="#"/>'>
			</div>
			<div class="bottom">
				<div class="row">
					<div class="expln">메뉴 구성</div>
					<div class="elmt">"${menu.men1}, ${menu.men2}, ${menu.men3}, ${menu.menRice}, ${menu.menSoup}</div>
				</div>
			</div>
	</section>

	
	</body>
</html>