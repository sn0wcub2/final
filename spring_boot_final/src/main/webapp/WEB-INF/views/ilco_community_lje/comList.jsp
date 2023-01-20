<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>커뮤니티 게시판</title>
<link rel="stylesheet" type="text/css" href="<c:url value='/css/css_lje/comList.css' />">
</head>
<body>
	<div id="wrap">
		<header><h3>커뮤니티 게시판</h3></header>
		<section>
			<table id="comList">
				<thead>
					<tr>
						<th>번호</th>
						<th>작성자</th>
						<th>제목</th>
						<th>작성일</th>
						<th>조회수</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="com" items="${comList }">
			            <tr>
			               <td><a href="<c:url value='/ilco_community_lje/detailViewCommunity/${com.comNo}'/>" >${com.comNo }</a></td>
			               <td>${com.memId}</td>
			               <td>${com.comTitle }</td>
			               <td><fmt:formatDate value="${com.comDate}"  pattern="yyyy-MM-dd" /></td>
			               <td>${com.comCnt}</td>			               
			            </tr>
			         </c:forEach>
				</tbody>
			</table>
	<br>
			<div><--이전  [1]  다음--></div>
			<div>
				<a href="<c:url value='/ilcocommunity/boardwriteform'/>">글쓰기</a>
			</div>
	
		</section>
	   </div>
	</body>
</html>