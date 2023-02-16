<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>커뮤니티 글 상세 조회</title>
		
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/css_lje/comDetailView.css' />">
	<c:import url="/WEB-INF/views/layout/header_main.jsp"/> <!-- 헤더 -->
	</head>
	<body style="background-color:#eedfcb">
	<c:import url="/WEB-INF/views/layout/top.jsp"/> <!-- 탑 메뉴 -->
		<div id="wrap">
		<header><h3>커뮤니티 게시판</h3></header>
				<p>이웃들과 다양한 이야기를 나눠보세요</p>
			<div class="board_view_wrap">
			<div class="board_view">
			<div class="title">${com.comTitle }</div>
			<table class="info">
					<tr><td>번호 </td><td>${com.comNo}</td></tr>
					<tr><td>작성자  </td><td>${com.memId}</td></tr>
					<tr><td>작성일 </td><td><fmt:formatDate value="${com.comDate}"  pattern="yyyy-MM-dd" /></td></tr>				
					<tr><td>조회수 </td><td> ${com.comCnt }</td></tr>
			</table>
			<div class="cont">${com.comContent }</div>
			</div>	
				<div class="bt_wrap">
				<a href="<c:url value='/ilcocommunity/boardlist'/>" class="on">목록</a>
				
				<a class="a" href="<c:url value='/ilcocommunity/updateCommunityForm/${com.comNo }'/>">수정</a>
				
				<a class="a" href="javascript:deleteCheck();">삭제</a>
				</div>
				<!--  삭제 확인 메시지 출력 -->
				<script>
					function deleteCheck(){
						var answer = confirm("삭제하시겠습니까?");
						if(answer){
							location.href="/ilcocommunity/deleteCommunity/${com.comNo}";
						}
					}
				</script>
		</div>
	</div>
	<c:import url="/WEB-INF/views/layout/footer.jsp"/> <!-- 바텀 메뉴 -->
	</body>
</html>






