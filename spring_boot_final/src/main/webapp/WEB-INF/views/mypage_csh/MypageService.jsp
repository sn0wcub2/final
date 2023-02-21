<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>예약된 서비스 확인</title>
		<!--  head -->         
        	<c:import url="/WEB-INF/views/layout/header_main.jsp" />
	<link rel="stylesheet" href="<c:url value='/css/css_csh/MypageService.css' />">
</head>
<body>
<div id="wrap">
<!--  top -->         
        	<c:import url="/WEB-INF/views/layout/top.jsp" />
<div style="text-align: center;">
    <h1>예약된 서비스 확인</h1>
    <hr>
    <table style="width: 700px; margin: auto">
        <tr>
            <th style="width: 25%">예약상품</th>
            <th style="width: 25%">예약날짜</th>
            <th style="width: 20%">결제금액</th>
        </tr>
        <c:forEach var="rs" items="${rsList}">
            <tr>
                <td>${rs.pointDescription}</td>
                <td><fmt:formatDate value="${rs.pointDate}" pattern="yyyy-MM-dd hh:mm"></fmt:formatDate> </td>
                <td>${rs.pointUsed}</td>
            </tr>
        </c:forEach>
    </table>
    <input id="button" type="button" value="뒤로가기" onclick="history.back(-1)">
</div>
</div>
<footer>
        <!--  bottom -->         
        	<c:import url="/WEB-INF/views/layout/footer.jsp" />
    </footer>
</body>
</html>
