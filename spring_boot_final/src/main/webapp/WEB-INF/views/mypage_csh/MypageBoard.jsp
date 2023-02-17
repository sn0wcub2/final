<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
	        #button {
		width: 100px;
		height: 40px;
		padding: 0;
		display: inline;
		border: 1.5px solid white;
		border-radius: 4px;
		background: #87ceeb;
		color: #fff;
		margin-top: 20px;
		transition: all 0.5s ease-in-out 0s;
	}
	
	#button:hover {
		border-color: #87ceeb;
		border-radius: 4px;
		border: solid 2px skyblue;
		background: white;
		color: #212529;
		text-decoration: none;
		box-shadow: 0 4px 10px 0 rgb(135, 206, 235), 0 4px 20px 0
			rgb(135, 206, 235);
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
        <c:forEach var="com" items="${comList}">
            <tr>
                <td>${com.comNo}</td>
                <td>${com.comTitle}</td>
                <td>${com.memId}</td>
                <td><fmt:formatDate value="${com.comDate}" pattern="yyyy-MM-dd"></fmt:formatDate> </td>
            </tr>
        </c:forEach>
    </table>
    <input id="button" type="button" value="뒤로가기" onclick="history.back(-1)">
</div>
<footer>
        <!--  bottom -->         
        	<c:import url="/WEB-INF/views/layout/footer.jsp" />
    </footer>
</body>
</html>
