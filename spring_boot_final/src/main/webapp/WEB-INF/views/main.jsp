<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>임시 메인 페이지</title>
	</head>
	<body>
	<!-- 편의를 위해 Controller와 메인 페이지 만들어둡니다 (삭제 예정) -->
	<!-- 각자 사용하는 경로 메인 페이지 알려주시면 제가 취합해서 푸시 해드리겠습니다-->
	<a href="/safe/main"> 안심 서비스</a>
	<a href="<c:url value='/member_csh/login'/>">로그인</a>
	<a href="<c:url value='/member_csh/signUp'/>">회원가입</a>
	<a href=""> 세탁 서비스</a>
	<a href=""> 커뮤니티 서비스</a>
	<a href=""> 판매 페이지 </a>
	<a href="<c:url value='/admin_csh/AdminMain'/>"> 관리자 페이지</a>
	<a href="<c:url value='/mypage_csh/MypageMain'/>"> 마이 페이지</a>
	<a href="/ilcoeat/main"> 일코 푸드 메인</a>
	
	</body>
</html>