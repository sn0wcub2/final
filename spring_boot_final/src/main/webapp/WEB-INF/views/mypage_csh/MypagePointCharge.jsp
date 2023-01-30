<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>포인트 내역</title>
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
<div id="wrap">
<!--  top -->         
        	<c:import url="/WEB-INF/views/layout/top.jsp" />
<div style="text-align: center;">
    <h1>포인트 내역</h1>


  
                <div>${pointTotal}</div>
    
    <form method="post" action="#">
    	<input type="text" name="pointAdd">
    	<input type="submit" value="충전하기">
    	<input type="hidden" name="pointDescription" value="충전">
    </form>
    
    
    
    <input type="button" value="뒤로가기" onclick="history.back(-1)">
</div>
</div>
<footer>
        <!--  bottom -->         
        	<c:import url="/WEB-INF/views/layout/footer.jsp" />
    </footer>
</body>
</html>
