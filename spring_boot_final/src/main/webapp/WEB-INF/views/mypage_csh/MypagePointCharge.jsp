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
	<link rel="stylesheet" href="<c:url value='/css/css_csh/MypagePointCharge.css' />">
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
    	  <div class="pntElmtDis">충전하실 금액 : </div>  <div class="pntElmt"><input type="text" name="pointAdd" placeholder="금액을 입력해주세요"></div><div class="pntElmt"><input type="submit" value="충전하기"> </div>
    	</div>
    </form>
  </div>
    
    
    
    <input id="button" type="button" value="뒤로가기" onclick="history.back(-1)">
</div>
</div>
<footer>
        <!--  bottom -->         
        	<c:import url="/WEB-INF/views/layout/footer.jsp" />
    </footer>
</body>
</html>
