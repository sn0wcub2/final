<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>커뮤니티 글 상세 조회</title>
		<style>
			#wrap{
				margin:0 auto;
				width: 100%;
				text-align: center;
			}
			
			table {
				margin:0 auto;
				width: 400px;
			}		
			
			table .tdTitle{
				width: 100px;
			}	
		</style>
	</head>
	<body>
		<div id="wrap">
			<h3>상세 조회</h3>
			<table border="1" width="600">
					<tr><td class="tdTitle">번호 </td><td>${com. comNo}</td></tr>
					<tr><td>작성자  </td><td>${com.memId}</td></tr>
					<tr><td>제목  </td><td>${com.comTitle }</td></tr>
					<tr><td>작성일 </td><td><fmt:formatDate value="${com.comDate}"  pattern="yyyy-MM-dd" /></td></tr>				
					<tr><td>조회수 </td><td> ${com.comCnt }</td></tr>
					<tr><td>내용 </td><td> ${com.comContent }</td></tr>
			</table><br><br>
					
				<a href="<c:url value='/'/>">메인 화면으로 이동</a><br><br>
				
				<a href="<c:url value='/ilcocommunity/boardViewForm/${com.comNo }'/>">글 수정</a><br><br>
				
				<a href="javascript:deleteCheck();">글 삭제</a><br><br>
				<!--  삭제 확인 메시지 출력 -->
				<script>
					function deleteCheck(){
						var answer = confirm("삭제하시겠습니까?");
						if(answer){
							location.href="/ilcocommunity/deleteCommunity/${com. comNo}";
						}
					}
				</script>
		</div>
	</body>
</html>






