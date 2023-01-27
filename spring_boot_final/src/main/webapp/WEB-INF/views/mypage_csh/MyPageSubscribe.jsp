<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>구독 정보 확인</title>
		<!--  head -->         
        	<c:import url="/WEB-INF/views/layout/header_main.jsp" />
	<style>
        table {
            width: 100%;
            border: 1px solid #444444;
            border-collapse: collapse;
        }
        table th {
            border: 1px solid #444444;
            text-align: center;
            height: 40px;
            background-color: dodgerblue;
            color: cornsilk;
        }
        table td {
            border: 1px solid #444444;
            text-align: center;
        }
    </style>
</head>
<body>
<div style="text-align: center;">
<!--  top -->         
        	<c:import url="/WEB-INF/views/layout/top.jsp" />
    <h1>구독 정보 확인</h1>
    <table style="width: 700px; margin: auto">
        <tr>
            <th style="width: 30%">구독상품</th>
            <th style="width: 20%">구독가격</th>
            <th style="width: 15%">구독 시작일</th>
            <th style="width: 15%">구독 만료일</th>
        </tr>
        <c:forEach var="board" items="${boardList}">
            <tr>
                <td>${board.seq}</td>
                <td style="text-align: left"><a href="getBoard?seq=${board.seq}">${board.title}</a></td>
                <td>${board.writer}</td>
                <td><fmt:formatDate value="${board.createDate}" pattern="yyyy-MM-dd"></fmt:formatDate> </td>
                <td>${board.cnt}</td>
            </tr>
        </c:forEach>
    </table>
    <input type="button" value="뒤로가기" onclick="history.back(-1)">
</div>
<footer>
        <!--  bottom -->         
        	<c:import url="/WEB-INF/views/layout/footer.jsp" />
    </footer>
</body>
</html>
