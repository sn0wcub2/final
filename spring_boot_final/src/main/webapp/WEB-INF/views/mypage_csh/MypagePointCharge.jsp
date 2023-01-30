<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>포인트 충전</title>
		<!--  head -->         
        	<c:import url="/WEB-INF/views/layout/header_main.jsp" />
	<style>
.pntNow{
    color: black;
    margin: auto;
    width: 700px;
    font-size: 30px;
    display: flex;
}
.PntTitle{
    margin: auto;
    width: 600px;
    font-size: 60px;
    color: skyblue;
    padding-top: 67px;
    padding-bottom: 20px;
    border-bottom: 3px solid skyblue;
    margin-bottom: 50px;
    text-align: center;
}
	
 .pntFrm{
	color: black;
    margin: auto;
    width: 700px;
    font-size: 30px;
    display: flex;
 }
  .pntFrm input[type=text]{
 	width:300px;
	  height: 40px;
	  border: 4px solid skyblue;
	  border-radius: 12px;
	  font-size: 20px;
  }
  
  .pntFrm input[type=submit]{
	color:skyblue;
  font-size: 15px;
	background-color:white;
	margin-left:50px;
	width:120px;
	height: 50px;
	border: 4px solid skyblue;
	border-radius: 12px;
  }
  
  .pntFrm input[type=submit]:hover{
  	color:white;
	background-color:skyblue;
	border: 4px solid orange;	
  }
 .pntElmtDis{
     text-align: right;
     width:200px;
 }
 .pntNowElmt{
    width: 25%;
    text-align: left;
    margin-left: 50px;
 }
  .pntElmt{
    width: 250px;
    text-align: left;
    margin-left: 50px;
 }
 .pntFrmRow{
	margin-top: 50px;
    margin-bottom: 50px;
 display:flex;
 }

    </style>
</head>
<body>
<div id="wrap">
<!--  top -->         
        	<c:import url="/WEB-INF/views/layout/top.jsp" />
<div style="text-align: center;">
	<div class="PntTitle">
	    포인트 충전
	</div>


  <div class="pntNow">
          <div class="pntElmtDis">현재 포인트 : </div><div class="pntNowElmt">${pointTotal}</div>
  </div>
  <div class="pntFrm">
    <form method="post" action="/mypage_csh/MypagePointChargeAdd" id="PntChrgFrm">
    	<div class="pntFrmRow">
    	  <div class="pntElmtDis">충전하실 금액 : </div>  <div class="pntElmt"><input type="text" name="pointAdd" placeholder="인생은 실전입니다"></div><div class="pntElmt"><input type="submit" value="충전하기"> </div>
    	</div>
    </form>
  </div>
    
    
    
    <input type="button" value="뒤로가기" onclick="history.back(-1)">
</div>
</div>
<footer>
        <!--  bottom -->         
        	<c:import url="/WEB-INF/views/layout/footer.jsp" />
    </footer>
</body>
</html>
