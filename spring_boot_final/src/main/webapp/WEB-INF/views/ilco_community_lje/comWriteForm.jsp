<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>컴퓨니티 글쓰기</title>
<link rel="stylesheet" type="text/css" href="<c:url value='/css/css_lje/comList.css' />">
</head>
<body>
	<div id="wrap">
		<form id="writeForm" name="writeForm" method="post"  action="<c:url value='/ilcocommunity/insertCommunity' />">
			<div>
				<h2>글쓰기</h2>
				<div>
					<table>
						<tr>
							<th>제목</th>
							<td><input style="width: 500px" type="text" id="comTitle"
								name="comTitle" /></td>
						</tr>
						<tr>
							<th>내용</th>
							<td><textarea style="width: 500px" rows="10" cols="10"
									id="comContent"  name="comContent"></textarea></td>
						</tr>						
					</table>
					<div>
						<input type="submit" value="등록"> <input type="reset" value="취소">
					</div>
				</div>
			</div>
		</form>
	
	</div>
</body>
</html>