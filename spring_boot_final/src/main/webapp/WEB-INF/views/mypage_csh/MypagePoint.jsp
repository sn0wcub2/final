<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>포인트 내역</title>
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
<div id="wrap">
<div style="text-align: center;">
    <h1>포인트 내역</h1>
    <table border="1" style="width: 1000px; margin: auto">
        <tr>
            <th style="width: 10%">포인트 변경 내역 번호</th>
            <th style="width: 15%">사용자</th>
            <th style="width: 10%">포인트 추가</th>
            <th style="width: 10%">포인트 사용</th>
            <th style="width: 15%">포인트 변경 날짜</th>
            <th style="width: 30%">변경 내역</th>
            <th style="width: 15%">총 포인트</th>
        </tr>
        <c:forEach var="pt" items="${ptList}">
            <tr>
                <td>${pt.pointChangeNo}</td>
                <td>${pt.memId}</td>
                <td>${ pt.pointAdd }</td>
                <td>${ pt.pointUsed }</td>
                <td><fmt:formatDate value="${pt.pointDate }" pattern="yy-MM-dd HH:mm"/></td>
                <td>${ pt.pointDescription }</td>
                <td>${ pt.pointTotal }</td></tr>
        </c:forEach>
    </table>
    <input type="button" value="뒤로가기" onclick="history.back(-1)">
</div>
</div>
</body>
</html>
