<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>안전 귀가</title>
	</head>
	<body>
		<table>
			<tr><td>신청 날짜</td><td><%= request.getParameter("date-picker") %></td></tr>
			<tr><td>시작 위치</td><td><%= request.getParameter("dong1") %> <%= request.getParameter("bunji1") %>번지</td></tr>
			<tr><td>도착 위치</td><td><%= request.getParameter("dong2") %> <%= request.getParameter("bunji2") %>번지</td></tr>
		</table>
	</body>
</html>