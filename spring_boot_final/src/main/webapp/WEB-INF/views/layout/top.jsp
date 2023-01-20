<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div id="topBox" style="display:block; height:170px; background:skyblue;">
	<nav class="gtco-nav" role="navigation">
		<div class="gtco-container">
			
			<div id="menuBox" class="row">
				<div id="gtco-logo"><a href="/index"><img src='<c:url value="/image/main_images/아이콘_메인.png"/>' style="width:490px; height:110px;"></a></div>

				<div class="text-right menu-1" style="text-align: right;">
					<ul>
						<li><a href="<c:url value='/member_csh/login'/>">로그인</a></li>
						<li><a href="<c:url value='/member_csh/signUp'/>">회원가입</a></li>
						<li><a href="<c:url value='/mypage_csh/MypageMain'/>">마이 페이지</a></li>
						<li><a href="<c:url value='/mypage_csh/MypageMain'/>">바로가기</a></li>
					</ul>	
				</div>
			</div>
			
		</div>
	</nav>
</div>