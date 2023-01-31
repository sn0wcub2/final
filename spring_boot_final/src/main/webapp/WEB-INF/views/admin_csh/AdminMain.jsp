<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
	<style type="text/css">
.adminhistory img{
width:100px;
height:100px;
margin-top:30px;
}
.adminhistory{
	display:block;
}
.adminhistoryrow{
	display:flex;
	justify-content: center;
}
.adminhistoryElmt{
font-family:BMDOHYEON_ttf;
border:2.5px solid #09C6AB;
border-radius: 15px;
width: 180px;
height: 190px;
margin-top:50px;
margin-right:30px;
margin-left:30px;
padding: 20px;
box-shadow: 5px 5px 20px -10px rgb(0 0 0 / 30%);

}

</style>
		<meta charset="UTF-8">
		<title>관리자페이지 메인</title>
		<!--  head -->         
        	<c:import url="/WEB-INF/views/layout/header_main.jsp" />
	</head>
<body>
	<div id="wrap">
<!--  top -->         
			<c:import url="/WEB-INF/views/layout/top.jsp" />
       	<div class="adminhistory" style="text-align:center;">
        	<div class="adminhistoryrow">
				<div class="adminhistoryElmt">
					<a href="#"><img src="<c:url value='/image/csh_수정.png'/>"onclick="location.href='<c:url value='/admin_csh/AdminNotice/'/>'"></a>
					<p></p>
					<p>공지</p>
				</div>
				<div class="adminhistoryElmt">
					<a href="#"><img src="<c:url value='/image/csh_게시글.png'/>"onclick="location.href='<c:url value='/admin_csh/AdminMangement/'/>'"></a>
					<p></p>
					<p>회원,게시글 검색/조회</p>
				</div>
				<div class="adminhistoryElmt">
					<a href="#"><img src="<c:url value='/image/csh_구독.png'/>"onclick="location.href='<c:url value='/admin_csh/AdminAccompany/'/>'"></a>
					<p></p>
					<p>동행인 관리</p>
				</div>
				<div class="adminhistoryElmt">
					<a href="#"><img src="<c:url value='/image/csh_서비스.png'/>"onclick="location.href='<c:url value='/ilcofoodmange'/>'"></a>
					<p></p>
					<p>일코 푸드 메뉴 등록</p>
				</div>
			</div>
			<div class="adminhistoryrow">
				<div class="adminhistoryElmt">
					<a href="#"><img src="<c:url value='/image/csh_포인트.png'/>"onclick="location.href='<c:url value='/admin_csh/AdminUpdate/'/>'"></a>
					<p></p>
					<p>CCTV, 안심 서비스 업데이트</p>
				</div>
				<div class="adminhistoryElmt">
					<a href="#"><img src="<c:url value='/image/csh_포인트.png'/>"onclick="location.href='<c:url value='/admin_csh/AdminGroup/'/>'"></a>
					<p></p>
					<p>공동 구매 처리</p>
				</div>
				<div class="adminhistoryElmt">
					<a href="#"><img src="<c:url value='/image/csh_탈퇴.png'/>"onclick="location.href='<c:url value='/admin_csh/AdminService/'/>'"></a>
					<p></p>
					<p>서비스 처리</p>
				</div>
				<div class="adminhistoryElmt">
					<a href="#"><img src="<c:url value='/image/csh_탈퇴.png'/>"onclick="location.href='<c:url value='/admin_csh/AdminPoint/'/>'"></a>
					<p></p>
					<p>사이트 내 포인트 충전 내역 확인</p>
				</div>
			</div>
   		 </div>   	
	</div>	
</body>
	<footer>
        <!--  bottom -->         
        	<c:import url="/WEB-INF/views/layout/footer.jsp" />
    </footer>
</html>
