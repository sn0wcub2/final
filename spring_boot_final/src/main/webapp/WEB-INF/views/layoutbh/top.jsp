<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">

        <nav class="navbar navbar-expand-lg navbar-fixed-top navbar-light bg-light">
            <div class="container px-4 px-lg-5">
                    <a class="navbar-brand" href="<c:url value='/'/>">일코노미</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                        <li class="nav-item"><a class="nav-link" href="<c:url value='/'/>">마이페이지</a></li>
                        <li class="nav-item"><a class="nav-link" href="<c:url value='/'/>">세탁</a></li>
                        <li class="nav-item"><a class="nav-link" href="<c:url value='/'/>">음식</a></li>
                        <li class="nav-item"><a class="nav-link" href="<c:url value='/'/>">커뮤니티</a></li>
                        <li class="nav-item"><a class="nav-link" href="<c:url value='/'/>">동행</a></li>
                        <li class="nav-item"><a class="nav-link" href="<c:url value='/'/>">안심길찾기</a></li>
                        </li>
                    </ul>
               <!-- 로그인 하기 전에 보여줄 메뉴 항목 -->
              <c:if test="${empty sessionScope.sid }">
              <a class ="btn btn-outline-dark mx-1" href ="<c:url value='/member/loginForm'/>" type="submit">로그인</a>
              <a class ="btn btn-outline-dark mx-1"  href ="<c:url value='/member/joinForm'/>" type="submit">회원가입</a>
              </c:if>	
              
           <!-- 로그인 성공 후 보여줄 메뉴 항목 -->
			<c:if test="${not empty sessionScope.sid }">
			${sessionScope.sid}님 환영합니다! 
			
			<a class ="btn btn-outline-dark mx-1" href="<c:url value='/member/logout'/>">로그아웃</a> 
			<a class ="btn btn-outline-dark mx-1" href="<c:url value='/member/myPage'/>">My Page</a>
		</c:if>
                </div>
            </div>
        </nav>



