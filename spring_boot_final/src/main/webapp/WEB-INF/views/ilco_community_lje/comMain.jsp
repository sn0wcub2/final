<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<form id="boardForm" name="boardForm" method="post">
			<table>
				<thead>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>작성일</th>
						<th>조회수</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="result" items="${list }" varStatus="status">
						<tr>
							<td><c:out value="${result.code }" /></td>
							<td><a href='#' onClick='fn_view(${result.code})'><c:out
										value="${result.title }" /></a></td>
							<td><c:out value="${result.writer }" /></td>
							<td><c:out value="${result.reg_datetime }" /></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>

			<div>
				<a href='#' onClick='fn_write()'>글쓰기</a>
			</div>
		</form>
		<script>
//글쓰기
function fn_write(){
    
    var form = document.getElementById("boardForm");
    
    form.action = "<c:url value='/board/writeForm.do'/>";
    form.submit();
    
}
 
//글조회
function fn_view(code){
    
    var form = document.getElementById("boardForm");
    var url = "<c:url value='/board/viewContent.do'/>";
    url = url + "?code=" + code;
    
    form.action = url;    
    form.submit(); 
}
</script>
	</div>
	<div>
		<c:if test="${pagination.curRange ne 1 }">
			<a href="#" onClick="fn_paging(1)">[처음]</a>
		</c:if>
		<c:if test="${pagination.curPage ne 1}">
			<a href="#" onClick="fn_paging('${pagination.prevPage }')">[이전]</a>
		</c:if>
		<c:forEach var="pageNum" begin="${pagination.startPage }"
			end="${pagination.endPage }">
			<c:choose>
				<c:when test="${pageNum eq  pagination.curPage}">
					<span style="font-weight: bold;"><a href="#"
						onClick="fn_paging('${pageNum }')">${pageNum }</a></span>
				</c:when>
				<c:otherwise>
					<a href="#" onClick="fn_paging('${pageNum }')">${pageNum }</a>
				</c:otherwise>
			</c:choose>
		</c:forEach>
		<c:if
			test="${pagination.curPage ne pagination.pageCnt && pagination.pageCnt > 0}">
			<a href="#" onClick="fn_paging('${pagination.nextPage }')">[다음]</a>
		</c:if>
		<c:if
			test="${pagination.curRange ne pagination.rangeCnt && pagination.rangeCnt > 0}">
			<a href="#" onClick="fn_paging('${pagination.pageCnt }')">[끝]</a>
		</c:if>
	</div>

	<div>총 게시글 수 : ${pagination.listCnt } / 총 페이지 수 :
		${pagination.pageCnt } / 현재 페이지 : ${pagination.curPage } / 현재 블럭 :
		${pagination.curRange } / 총 블럭 수 : ${pagination.rangeCnt }</div>

</body>
</html>