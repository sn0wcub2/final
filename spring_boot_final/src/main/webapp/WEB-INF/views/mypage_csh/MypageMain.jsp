<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지 메인</title>
</head>
<body>
	<div id="wrap">
		<div class="Mypage">
			<div id="MypageMain"></div>
			<h1>마이페이지</h1>
			<hr>
			<div>
			<button type="button" onclick="location.href='<c:url value='/mypage_csh/MypageUpdate/cjh'/>'">회원정보 수정</button>
			</div><br><br>
			
			<div>
			<button type="button" onclick="location.href='<c:url value='/mypage_csh/MypageBoard'/>'">내 게시글 확인</button>
			</div><br><br>
			
			<div>
			<button type="button" onclick="location.href='<c:url value='/mypage_csh/MyPageSubscribe'/>'">구독 정보 확인</button>
			</div><br><br>
			
			<div>
			<button type="button" onclick="location.href='<c:url value='/mypage_csh/MypageService'/>'">예약된 서비스 확인</button>
			</div><br><br>
			
			<div>
			<button type="button" onclick="location.href='<c:url value='/mypage_csh/MypagePoint'/>'">포인트 내역</button>
			</div><br><br>
			
			<div>
			<button type="button" onclick="location.href='<c:url value='/mypage_csh/MypageCredit'/>'">결제 내역</button>
			</div><br><br>
			
			<div>
			<button type="button" onclick="location.href='<c:url value='/mypage_csh/MypageDelete'/>'">회원 탈퇴</button>
			</div><br><br>
		</div>
	</div>
</body>
</html>
