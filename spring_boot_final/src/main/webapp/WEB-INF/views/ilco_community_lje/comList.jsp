<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>커뮤니티 게시판</title>
<c:import url="/WEB-INF/views/layout/header_main.jsp"/> <!-- 헤더 -->
<link rel="stylesheet" type="text/css" href="<c:url value='/css/css_lje/comList.css' />">
</head>
<body>
<c:import url="/WEB-INF/views/layout/top.jsp"/> <!-- 탑 메뉴 -->
	<div id="wrap">
		<header><h3 id=title>커뮤니티 게시판</h3></header>
		<p>이웃들과 다양한 이야기를 나눠보세요</p>
		<section>
			<table class="board_list" id="comList">
				<thead>
					<tr class="top">
						<th class="num">번호</th>
						<th class="title">제목</th>
						<th class="writer">작성자</th>
						<th class="date">작성일</th>
						<th class="count">조회수</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="com" items="${comList }">
			            <tr>
			               <td class="num">${com.comNo}</td>
			               <td class="title"><a class="a" href="<c:url value='/ilco_community_lje/detailViewCommunity/${com.comNo}'/>" >${com.comTitle }</a></td>
			               <td class="writer">${com.memId}</td>
			               <td class="date"><fmt:formatDate value="${com.comDate}"  pattern="yyyy-MM-dd" /></td>
			               <td class="count">${com.comCnt}</td>			               
			            </tr>
			         </c:forEach>
				</tbody>
			</table>
	<br>
			<div class="board_page">
                <a href="#" class="bt first"><<</a>
                <a href="#" class="bt prev"><</a>
                <a href="#" class="num on">1</a>
                <a href="#" class="num">2</a>
                <a href="#" class="num">3</a>
                <a href="#" class="num">4</a>
                <a href="#" class="num">5</a>
                <a href="#" class="bt next">></a>
                <a href="#" class="bt last">>></a>
            </div>
			<div class="bt_wrap">
				<a href="<c:url value='/ilcocommunity/boardwriteform'/>" class="on">글쓰기</a>
			</div>
	
		</section>
	   </div>
	   <c:import url="/WEB-INF/views/layout/footer.jsp"/> <!-- 바텀 메뉴 -->
	</body>
</html>