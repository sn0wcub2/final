<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>관리자페이지 메인</title>
		<!--  head -->         
        	<c:import url="/WEB-INF/views/layout/header_main.jsp" />
        	<link rel="stylesheet" href="<c:url value='/css/css_csh/AdminMain.css' />">
	</head>
<body>
	<div id="wrap">
<!--  top -->         
			<c:import url="/WEB-INF/views/layout/top.jsp" />
			<p id="adminpageH3">관리자페이지</p>
        	<hr id="adminHR">
       	<div class="adminhistory" style="text-align:center;">
        	<div class="adminhistoryrow">
				<div class="adminhistoryElmt">
					<a href="#"><img src="<c:url value='/image/공지.png'/>"onclick="location.href='<c:url value='/admin_csh/AdminNotice/'/>'"></a>
					<p></p>
					<p>공지</p>
				</div>
				<div class="adminhistoryElmt">
					<a href="#"><img src="<c:url value='/image/csh_게시글.png'/>"onclick="location.href='<c:url value='/admin_csh/AdminMangement/'/>'"></a>
					<p></p>
					<p>회원,게시글 검색/조회</p>
				</div>
				<div class="adminhistoryElmt">
					<a href="#"><img src="<c:url value='/image/동행인관리.png'/>"onclick="location.href='<c:url value='/admin_csh/AdminAccompany/'/>'"></a>
					<p></p>
					<p>동행인 관리</p>
				</div>
				<div class="adminhistoryElmt">
					<a href="#"><img src="<c:url value='/image/푸드메뉴등록.png'/>"onclick="location.href='<c:url value='/ilcofoodmange'/>'"></a>
					<p></p>
					<p>일코 푸드 메뉴 등록</p>
				</div>
			</div>
<!-- 			<div class="adminhistoryrow"> -->
<!-- 				<div class="adminhistoryElmt"> -->
<%-- 					<a href="#"><img src="<c:url value='/image/업데이트.png'/>"onclick="location.href='<c:url value='/admin_csh/AdminUpdate/'/>'"></a> --%>
<!-- 					<p></p> -->
<!-- 					<p>CCTV, 안심 서비스 업데이트</p> -->
<!-- 				</div> -->
<!-- 				<div class="adminhistoryElmt"> -->
<%-- 					<a href="#"><img src="<c:url value='/image/공동구매.png'/>"onclick="location.href='<c:url value='/admin_csh/AdminGroup/'/>'"></a> --%>
<!-- 					<p></p> -->
<!-- 					<p>공동 구매 처리</p> -->
<!-- 				</div> -->
<!-- 				<div class="adminhistoryElmt"> -->
<%-- 					<a href="#"><img src="<c:url value='/image/서비스처리.png'/>"onclick="location.href='<c:url value='/admin_csh/AdminService/'/>'"></a> --%>
<!-- 					<p></p> -->
<!-- 					<p>서비스 처리</p> -->
<!-- 				</div> -->
<!-- 				<div class="adminhistoryElmt"> -->
<%-- 					<a href="#"><img src="<c:url value='/image/csh_포인트.png'/>"onclick="location.href='<c:url value='/admin_csh/AdminPoint/'/>'"></a> --%>
<!-- 					<p></p> -->
<!-- 					<p>사이트 내 포인트 충전 내역 확인</p> -->
<!-- 				</div> -->
<!-- 			</div> -->
   		 </div>   	
	</div>	
</body>
	<footer>
        <!--  bottom -->         
        	<c:import url="/WEB-INF/views/layout/footer.jsp" />
    </footer>
</html>
