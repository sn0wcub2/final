<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="<c:url value='/css/css_csh/MypageMain.css' />">
<head>
<meta charset="UTF-8">
<title>마이페이지 메인</title>
			<!--  head -->         
        	<c:import url="/WEB-INF/views/layout/header_main.jsp" />
</head>
<body>
	<div id="wrap">
	<!--  top -->         
        	<c:import url="/WEB-INF/views/layout/top.jsp" />
        	<p id="mypageH3">마이페이지</p>
        	<hr id="mypageHR">
		<div class="mypagehistory" style="text-align:center;">
			<div>
			<a href="#"><img src="<c:url value='/image/csh_수정.png'/>"onclick="location.href='<c:url value='/mypage_csh/MypageUpdate/'/>'"></a>
			<p></p>
			<p>회원정보수정</p>
			</div>
			<div>
			<a href="#"><img src="<c:url value='/image/csh_게시글.png'/>"onclick="location.href='<c:url value='/mypage_csh/MypageBoard/'/>'"></a>
			<p></p>
			<p>내 게시글 확인</p>
			</div>
			<div>
			<a href="#"><img src="<c:url value='/image/csh_구독.png'/>"onclick="location.href='<c:url value='/mypage_csh/MyPageSubscribe/'/>'"></a>
			<p></p>
			<p>구독 정보 확인</p>
			</div>
			<div>
			<a href="#"><img src="<c:url value='/image/csh_서비스.png'/>"onclick="location.href='<c:url value='/mypage_csh/MypageService/'/>'"></a>
			<p></p>
			<p>예약된 서비스 확인</p>
			</div>
			<br>
			<div>
			<a href="#"><img src="<c:url value='/image/csh_포인트.png'/>"onclick="location.href='<c:url value='/mypage_csh/MypagePointCharge/'/>'"></a>
			<p></p>
			<p>포인트 충전</p>
			</div>
			<div>
			<a href="#"><img src="<c:url value='/image/csh_포인트.png'/>"onclick="location.href='<c:url value='/mypage_csh/MypagePoint/'/>'"></a>
			<p></p>
			<p>포인트 내역 확인</p>
			</div>
			<div>
			<a href="#"><img src="<c:url value='/image/csh_탈퇴.png'/>"onclick="location.href='<c:url value='/mypage_csh/MypageDeleteMain/'/>'"></a>
			<p></p>
			<p>회원 탈퇴</p>
			</div>
			
			<c:if test="${sessionScope.sid == 'admin'}">
				<div>
				<a href="#"><img src="<c:url value='/image/csh_탈퇴.png'/>"onclick="location.href='<c:url value='/admin_csh/AdminMain/'/>'"></a>
				<p></p>
				<p>관리자 페이지</p>
				</div>
			</c:if>
			
		</div>
	</div>
	<footer>
        <!--  bottom -->         
        	<c:import url="/WEB-INF/views/layout/footer.jsp" />
    </footer>
</body>
</html>
