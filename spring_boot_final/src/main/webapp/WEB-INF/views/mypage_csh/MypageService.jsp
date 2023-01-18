<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>예약된 서비스 확인</title>
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
    <h1>예약된 서비스 확인</h1>
    <table style="width: 700px; margin: auto">
        <tr>
            <th style="width: 10%">예약번호</th>
            <th style="width: 30%">예약상품</th>
            <th style="width: 15%">예약자</th>
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
</div>
</body>
</html>
