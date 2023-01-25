<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div id="topBox" style="display:block; height:170px; background:skyblue;">
	<nav class="gtco-nav" role="navigation">
		<div class="gtco-container">
			
			<div id="menuBox" class="row">
				<div id="gtco-logo"><a href="/index"><img src='<c:url value="/image/main_images/아이콘_메인.png"/>' style="width:490px; height:110px;"></a></div>

				<div class="text-right menu-1" style="text-align: right;">
					<c:if test="${empty sessionScope.sid }">
					<ul>
						<li><a href="<c:url value='/member_csh/login'/>">로그인</a></li>
						<li><a href="<c:url value='/member_csh/signUp'/>">회원가입</a></li>
						<li class="has-dropdown">
                            <a href="#">바로가기</a>
                            <ul class="dropdown">
                                <li><a href="/ilcoeat/main">일코 푸트</a></li>
                                <li><a href="/safe/main">안심 귀가</a></li>
                                <li><a href="#">안심 동행</a></li>
                                <li><a href="#">세탁 서비스</a></li>
                                <li><a href="#">커뮤니티</a></li>
                            </ul>
                        </li>
						</ul>
					</c:if>
					<c:if test="${not empty sessionScope.sid }">
					<ul>
						<li><a href="<c:url value='/member_csh/logout'/>">로그아웃</a></li>
						<li><a href="<c:url value='/myPage_csh/MypageMain/${sessionScope.sid}'/>">마이 페이지</a></li>
						
						<li class="has-dropdown">
                            <a href="#">바로가기</a>
                            <ul class="dropdown">
                                <li><a href="/ilcoeat/main">일코 푸트</a></li>
                                <li><a href="/safe/main">안심 귀가</a></li>
                                <li><a href="#">안심 동행</a></li>
                                <li><a href="#">세탁 서비스</a></li>
                                <li><a href="#">커뮤니티</a></li>
                            </ul>
                        </li><br>
                        ${sessionScope.sid}님 환영합니다!
						</ul>
					</c:if>	
				</div>
			</div>
			
		</div>
	</nav>
</div>