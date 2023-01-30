<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<c:url value='/css/css_lje/comViewForm.css' />">
<c:import url="/WEB-INF/views/layout/header_main.jsp"/> <!-- 헤더 -->
</head>
<body>
<c:import url="/WEB-INF/views/layout/top.jsp"/> <!-- 탑 메뉴 -->
	<div>
		<form id="viewForm" name="viewForm" method="post" >
			<div>
				<h2>글수정</h2>
				<div>
					<table>
						<tr>
							<th>제목</th>
							<td><input style="width: 500px" type="text" id="comTitle"
								name="comTitle" value="${result.title }" /></td>
						</tr>
						<tr>
							<th>내용</th>
							<td><textarea style="width: 500px" rows="10" cols="10"
									id="content" name="content"><c:out
										value="${result.content }" /></textarea></td>
						</tr>
						
					</table>
					<div>
						<input type="submit" value="등록">
					</div>
				</div>
			</div>
			<input type='hidden' id='code' name='code' value='${result.code }' />
		</form>
		<script>
//목록
function fn_cancel(){
    
    var form = document.getElementById("viewForm");
    
    form.action = "<c:url value='/board/boardList.do'/>";
    form.submit();
    
}
 
//수정
function fn_update(){
    
    var form = document.getElementById("viewForm");
    
    form.action = "<c:url value='/board/updateboard.do'/>";
    form.submit();
}
 
//답변
function fn_relay(){
    
    var form = document.getElementById("viewForm");
    
    form.action = "<c:url value='/board/relayForm.do'/>";
    form.submit();
    
}
</script>
	</div>
	<c:import url="/WEB-INF/views/layout/footer.jsp"/> <!-- 바텀 메뉴 -->
</body>
</html>