<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>메뉴 확인</title>
	<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
	<link rel="stylesheet" type="text/css" href='<c:url value="/css/css_cjh/MypageSub.css"/>'>
		<c:import url="/WEB-INF/views/layout/header_main.jsp"/>
	</head>
	<body>
		<c:import url="/WEB-INF/views/layout/top.jsp"/>
	<div class="allmenuWrap">
		<div class="allMenuTitle">
			구독 정보
		</div>
			
		<div class="box" id="ListBox">
					<div class="menu_row">
							<div class="topelmt" ><div class="elmt1">날짜</div><div class="elmt2">타입</div><div class="elmt3">결제일</div><div class="elmt4">결제 포인트</div></div>
					</div>
			<c:forEach var="sub" items="${subList}" >
				<section>
					<c:choose>
						<c:when test="${sub.menu_type == 'Day-A'}">
							<c:set var="type" value="점심 A-타입"/>
							<c:set var="price" value="6000"/>
						</c:when>
						<c:when test="${sub.menu_type == 'Day-B'}">
							<c:set var="type" value="점심 B-타입"/>
							<c:set var="price" value="8000"/>
						</c:when>
						<c:when test="${sub.menu_type == 'Night-A'}">
							<c:set var="type" value="저녁 A-타입"/>
							<c:set var="price" value="6000"/>
						</c:when>
						<c:when test="${sub.menu_type == 'Night-B'}">
							<c:set var="type" value="저녁 B-타입"/>
							<c:set var="price" value="8000"/>
						</c:when>
						<c:otherwise>
							<div class="row">
								관리자가 일을 안하네요^^;;
							</div>
						</c:otherwise>
					</c:choose>
			
					<div class="menu_row" id="${ sub.menu_type}">
						<div class="elmt" >
							<div class="elmt1">${sub.order_date}</div><div class="elmt2">${type }</div><div class="elmt3"> ${sub.disDate} </div><div class="elmt4"> ${price} </div>
						</div>
					</div>
				</section>
			</c:forEach>
		</div>
		
		
		
		<div class="allMenuTitle2" id="SecTitle">
			지난 구독 정보
		</div>
		<div class="box" id="ListBox">
					<div class="menu_row">
							<div class="topelmt" ><div class="elmt1">날짜</div><div class="elmt2">타입</div><div class="elmt3">결제일</div><div class="elmt4">결제 포인트</div></div>
					</div>
			<c:forEach var="subOver" items="${subListOver}" >
				<section>
					<c:choose>
						<c:when test="${subOver.menu_type == 'Day-A'}">
							<c:set var="type" value="점심 A-타입"/>
							<c:set var="price" value="6000"/>
						</c:when>
						<c:when test="${subOver.menu_type == 'Day-B'}">
							<c:set var="type" value="점심 B-타입"/>
							<c:set var="price" value="8000"/>
						</c:when>
						<c:when test="${subOver.menu_type == 'Night-A'}">
							<c:set var="type" value="저녁 A-타입"/>
							<c:set var="price" value="6000"/>
						</c:when>
						<c:when test="${subOver.menu_type == 'Night-B'}">
							<c:set var="type" value="저녁 B-타입"/>
							<c:set var="price" value="8000"/>
						</c:when>
						<c:otherwise>
							<div class="row">
								관리자가 일을 안하네요^^;;
							</div>
						</c:otherwise>
					</c:choose>
			
					<div class="menu_row" id="${ subOver.menu_type}">
						<div class="elmt" id="overElmt">
							<div class="elmt1">${subOver.order_date}</div><div class="elmt2">${type }</div><div class="elmt3"> ${subOver.disDate} </div><div class="elmt4"> ${price} </div>
						</div>
					</div>
				</section>
			</c:forEach>
		</div>
	</div>
		<div class="line">
			<hr>
		</div>
	<c:import url="/WEB-INF/views/layout/footer.jsp"/>
	</body>
</html>