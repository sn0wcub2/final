<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		오늘 메뉴<br>
		<div>
			<c:set var="ymd" value="<%=new java.util.Date()%>" />
			<fmt:formatDate value="${ymd}" pattern="yy년 MM월 dd일의 식단" />
		</div>
		<table>
			<tr>
				<th>날짜 A 식단</th><th>날짜 B 식단</th><th>날짜 C 식단</th>
			</tr>
			<tr><td>사진</td><td>사진</td><td>사진</td></tr>
			<tr><td>구성</td><td>구성</td><td>구성</td></tr>
			<tr><td>구성</td><td>구성</td><td>구성</td></tr>
			<tr><td>영양정보</td><td>영양정보</td><td>영양정보</td></tr>
		</table>
		테이블 항목 누르면 상세 정보 띄우기
<!-- 		메뉴 사진, 구성 다양한 정보 -->
	
	</body>
</html>