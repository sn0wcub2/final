<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>커뮤니티 글쓰기</title>
<link rel="stylesheet" type="text/css" href="<c:url value='/css/css_lje/comWriteForm.css' />">
</head>
<body>
	<div id="wrap">
		<form id="writeForm" name="writeForm" method="post"  action="<c:url value='/ilcocommunity/insertCommunity' />">
			<div>
			<header><h3>커뮤니티 게시판</h3></header>
				<h4>글작성</h4>
				<div class="board_write_wrap">
					<table class="board_write">
						<tr class="title">
							
							<td><input type="text" id="comTitle"
								name="comTitle" placeholder="제목을 입력하세요"/></td>
						</tr>
						<tr class="cont">
							
							<td><textarea rows="10" cols="10"
									id="comContent"  name="comContent" placeholder="내용을 입력하세요"></textarea></td>
						</tr>						
					</table>
					<div class="bt_wrap">
						<input type="submit" value="등록">
						<a href="<c:url value='/ilcocommunity/boardlist'/>" class="on">취소</a> 
						<input type="reset" value="취소">
					</div>
				</div>
			</div>
		</form>
	
	</div>
</body>
</html>