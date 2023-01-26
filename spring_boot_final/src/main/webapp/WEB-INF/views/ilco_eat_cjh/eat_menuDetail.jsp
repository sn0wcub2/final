<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
<link rel="stylesheet" type="text/css" href='<c:url value="/css/css_cjh/eat_detail.css"/>'>

<title>메뉴 등록</title>
</head>
</head>
<body>
<a href="/ilcoeat/main"> 일코 푸드 메인</a>
<h3>헤더 들어갈 자리</h3>
		<div class="elmt" ><div class="elmt1">${menu.menu_date}</div>
		<div class="elmt2">${menu.menu_type }</div>
		<div class="elmt3"> ${menu.mainMenu} / ${menu.subMenu} / ${menu.other}</div></div>

		

</body>

</html>