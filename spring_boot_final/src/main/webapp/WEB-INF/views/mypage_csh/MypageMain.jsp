<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.mypagehistory img{
width:100px;
height:100px;
margin-top:30px;
}
.mypagehistory div{
font-family:BMDOHYEON_ttf;
display:inline-block;
margin-top:50px;
margin-right:30px;
margin-left:30px;
padding: 20px;
border:2.5px solid #09C6AB;
border-radius: 15px;
width: 180px;
height: 190px;
box-shadow: 5px 5px 20px -10px rgb(0 0 0 / 30%);
}
#mypageH3 {
text-align:center;
margin-top: 80px;
color: skyblue;
font-size: 50px;
letter-spacing: 40px;
line-height: 1.5;
font-weight: 10px;
}
#mypageHR {
width: 1085px;
background-color: skyblue;
border: 0;
height: 3px;
margin-top: 80px;
}
.mypagehistory{
    text-align-last: center;
}
</style>
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
			<a href="#"><img src="<c:url value='/image/csh_탈퇴.png'/>"onclick="location.href='<c:url value='/mypage_csh/MypageDelete/'/>'"></a>
			<p></p>
			<p>회원 탈퇴</p>
			</div>
			
			<c:if test="${sessionScope.sid == 'admin'}">
				<div>
				<a href="#"><img src="<c:url value='/image/csh_탈퇴.png'/>"onclick="location.href='<c:url value='/mypage_csh/MypageDelete/'/>'"></a>
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
