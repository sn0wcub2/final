<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>내 게시글 확인</title>
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
            background-color: lightskyblue;
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
    <h1>내 게시글 확인</h1>
    <table style="width: 700px; margin: auto">
        <tr>
            <th style="width: 10%">번호</th>
            <th style="width: 50%">제목</th>
            <th style="width: 15%">작성자</th>
            <th style="width: 15%">작성일</th>
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
