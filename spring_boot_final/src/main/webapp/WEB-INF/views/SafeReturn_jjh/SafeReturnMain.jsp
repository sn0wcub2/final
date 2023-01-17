<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>안전 귀가</title>
		<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
		<script src="https://apis.openapi.sk.com/tmap/jsv2?version=1&appKey=l7xxad34a3adc29543b7a7962a0496fa88a3"></script>
		<script src="<c:url value='/js/js_jjh/safereturn_paths.js'/>"></script>
	</head>
	<body onload="initTmap();">
		<form id="safeReturnAddressForm">
			<input type="text" class="text_custom" id="city_do" name="city_do" placeholder="서울시">
			<input type="text" class="text_custom" id="gu_gun" name="gu_gun" placeholder="마포구">
			<input type="text" class="text_custom" id="dong" name="dong" placeholder="서교동">
			<input type="text" class="text_custom" id="bunji" name="bunji" placeholder="1">
			<input type="submit" value="전송">
		</form>
		<!-- 190430 기존 지도를 모두 이미지 처리 위해 주석 처리 S -->
		<div id="map_wrap" class="map_wrap3">
			<div id="map_div"></div>
		</div>
		<div class="map_act_btn_wrap clear_box"></div>
		<p id="result"></p>
	</body>
</html>