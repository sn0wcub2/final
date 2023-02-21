<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>일코노미 Chatbot</title>
		<c:import url="/WEB-INF/views/layout/header_main.jsp"/> <!-- 헤더 -->
		<script src="<c:url value='/js/chatbot3.js'/>"></script>
		<link rel="stylesheet"  type="text/css" href="/css/chatbot.css">
	</head>
	<body>
		<c:import url="/WEB-INF/views/layout/top.jsp"/> <!-- 탑 메뉴 -->
		<div id="wrap">
		<!-- Header -->
		<br>
		<div id="chatHeader">
		<h1 style="text-align:center; color:orange;">일코 챗봇</h1><hr><br>
		</div>
		
		<!-- 채팅 답변 출력-->
		<div id="chatBox"></div>
		
		<form id="chatbotForm" style="width:530px;">
			<input type="text" id="message" name="message" size="30" placeholder="질문을 입력하세요">		
			<input type="submit" value="결과 확인">
		</form>
		
		</div>
		<c:import url="/WEB-INF/views/layout/footer.jsp"/> <!-- 바텀 메뉴 -->
	</body>
</html>