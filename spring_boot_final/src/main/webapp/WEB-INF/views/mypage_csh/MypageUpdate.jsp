<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원 정보 수정</title>
		<!--  head -->         
        	<c:import url="/WEB-INF/views/layout/header_main.jsp" />
		<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<link rel="stylesheet" href="<c:url value='/css/css_csh/MypageUpdate.css' />">
	</head>
	<body>
		<div id="wrap">
		<!--  top -->         
        	<c:import url="/WEB-INF/views/layout/top.jsp" />
			<div class="w3-content w3-container w3-margin-top Mypage" style="width:500px;">
				<div class="3-container w3-card-4 w3-auto mypageUpdate">
					<form id="myPageForm" class="myPageForm" method="post" action="<c:url value='/myPage_csh/updateMyPage'/>">
						<h1>회원 정보 수정</h1>
						<hr>
							<table>
                                <tr><td>회원아이디</td>
                                        <td colspan="2"><input class="w3-input" type="text" name="memId" value="${mem.memId }" readonly></td></tr>
                                <tr><td>회원명</td>
                                        <td colspan="2"><input class="w3-input" type="text" name="memName" value="${mem.memName }" readonly></td></tr>
                                <tr><td>성별</td>
                                        <td colspan="2"><input class="w3-input" type="text" name="memGender" value="${mem.memGender }" readonly></td></tr>
                                <tr><td>생년월일</td>
                                        <td colspan="2"><input class="w3-input" type="text" name="memBirth" value="<fmt:formatDate value="${mem.memBirth}"  pattern="yyyy-MM-dd" />" readonly></td></tr>                
                                <tr><td>전화번호</td>
                                        <td colspan="2"><input class="w3-input" type="text" name="memHP" value="${mem.memHP }"></td></tr>
                                <tr><td>긴급전화번호</td>
                                        <td colspan="2"><input class="w3-input" type="text" name="memEmgHP" value="${mem.memEmgHP }"></td></tr>        
                                <tr><td>이메일</td>
                                        <td colspan="2"><input class="w3-input" type="text" name="memEmail" value="${mem.memEmail}" ></td></tr>
                                <tr><td id="zipcode">우편번호 </td>
                                        <td><input class="w3-input" type="text" name="memZipcode" class="postcodify_postcode" id="memZipcode" value="${mem.memZipcode}" readonly></td>
                                    <td><button type="button" id="postcodify_search_button">검색</button></td></tr>
                                <tr><td>도로명주소</td>
                                    <td colspan="2"><input class="w3-input" type="text" name="memAddress1" class="postcodify_address" id="memAddress1" value="${mem.memAddress1}" readonly></td></tr>
                                <tr><td>상세주소</td>
                                    <td colspan="2"><input class="w3-input" type="text" name="memAddress2" class="postcodify_details" id="memAddress2" value="${mem.memAddress2}"></td></tr>
                                <tr><td colspan="3">
                                <input id="button" type="submit" value="수정">
                                <input id="button" type="reset" value="취소" onClick="history.back()"></td></tr>
                            </table>
					</form>
				</div>
			</div>
		</div>
			<!-- 주소 API 스크립트 -->
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
	<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
	
	<!-- "검색" 단추를 누르면 팝업 레이어가 열리도록 설정한다 -->
	<script> $(function() { $("#postcodify_search_button").postcodifyPopUp(); }); </script>
	</body>
	<footer>
        <!--  bottom -->         
        	<c:import url="/WEB-INF/views/layout/footer.jsp" />
    </footer>
</html>