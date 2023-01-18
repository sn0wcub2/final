<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자페이지 메인</title>
</head>
<body>
	<div id="wrap">
		<div class="Admin">
			<div id="AdminMain"></div>
			<h1>관리자페이지</h1>
			<hr>
			<div>
			<button type="button" onclick="location.href='<c:url value='/admin_csh/AdminNotice'/>'">공지</button>
			</div><br><br>
			
			<div>
			<button type="button" onclick="location.href='<c:url value='/admin_csh/AdminMangement'/>'">회원,게시글 검색/조회</button>
			</div><br><br>
			
			<div>
			<button type="button" onclick="location.href='<c:url value='/admin_csh/AdminAccompany'/>'">동행인 관리</button>
			</div><br><br>
			
			<div>
			<button type="button" onclick="location.href='<c:url value='/admin_csh/AdminFood'/>'">일코 푸드 메뉴 등록</button>
			</div><br><br>
			
			<div>
			<button type="button" onclick="location.href='<c:url value='/admin_csh/AdminUpdate'/>'">CCTV, 안심 서비스 업데이트</button>
			</div><br><br>
			
			<div>
			<button type="button" onclick="location.href='<c:url value='/admin_csh/AdminGroup'/>'">공동 구매 처리</button>
			</div><br><br>
			
			<div>
			<button type="button" onclick="location.href='<c:url value='/admin_csh/AdminService'/>'">서비스 처리</button>
			</div><br><br>
			
			<div>
			<button type="button" onclick="location.href='<c:url value='/admin_csh/AdminPoint'/>'">사이트 내 포인트 충전 내역 확인</button>
			</div><br><br>
			
		</div>
	</div>
</body>
</html>
