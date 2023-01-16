<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원가입 화면</title>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/css_csh/signup.css'/>">
		<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
		<script src="<c:url value='/js/js_csh/signup.js'/>"></script>
		<script src="<c:url value='/js/js_csh/idCheck.js'/>"></script>
	</head>
	<body>
		<div id="wrap">
			<div class="wrap">
				<div id="signUp">
					<form name="signUpForm" id="signUpForm" method="post" action="<c:url value='/member_csh/insert'/>">
					<input type="hidden" id="memBirth" name="memBirth" value="">
						<h1>회원 가입</h1>
						<br>
						<h4>* 아이디</h4>
						<span class="input_area"><input type="text" maxlength="13" name="memId" id="memId"></span>
						<input type="hidden" name="checked_id" value="">
						<input type="button" id="idCheck"value="중복확인">
						<br><br>
						<h4>* 비밀번호</h4>
						<span class="input_area"><input type="password" maxlength="25" name="memPwd" id="memPwd" 
						placeholder="영문자+숫자+특수문자 조합"></span>
						<br><br>
						
						<h4>* 비밀번호 확인</h4>
						<span class="input_area"><input type="password" maxlength="25" name="memPwd2" id="memPwd2"></span>
						<label id="pwdResult"></label>
						<br><br>
						
						<h4>* 이름</h4>
						<span class="input_area"><input type="text" maxlength="5" name="memName" id="memName"></span>
						<br><br>
						
						<h4>성별</h4>
						<span class="input_area">
						<label><input type="radio" name="memGender" value="man">남자</label>
						<label><input type="radio" name="memGender" value="woman">여자</label>
						</span>
						<br><br>
						
						<h4>생년월일</h4>
						<span class="input_area"><select class="box" name="birth-year"id="birth-year">
						     <option value="">년</option>
  						<c:forEach var="i" begin="1950" end="2022">
    					<option value="${i}">${i}</option>
  						</c:forEach>
						</select>
					  	<select class="box" name="birth-month"id="birth-month">
					  	<option value="">월</option>
					    <c:forEach var="i" begin="1" end="12">
 							<c:choose>
					      <c:when test="${i lt 10 }">
					          <option value="0${i}">0${i}</option>
					      </c:when>
					      <c:otherwise>
					          <option value="${i}">${i}</option>
					      </c:otherwise>
						  </c:choose>
						  </c:forEach>
						  </select>
						  <select class="box" name="birth-day"id="birth-day">
						    <option value="">일</option>
						  <c:forEach var="i" begin="1" end="31">
						  <c:choose>
						      <c:when test="${i lt 10 }">
						          <option value="0${i}">0${i}</option>
						      </c:when>
						      <c:otherwise>
						          <option value="${i}">${i}</option>
						      </c:otherwise>
						  </c:choose>
						  </c:forEach>
						  </select></span>
						<br><br>
						
						<h4>연락처</h4>
						<span class="input_area"><input type="tel" maxlength="11" name="memHP" id="memHP"
						placeholder="ex) 01011111111"></span>
						<br><br>
						
						<h4>긴급연락처</h4>
						<span class="input_area"><input type="tel" maxlength="11" name="memEmgHP" id="memEmgHP"
						placeholder="ex) 01011111111"></span>
						<br><br>
											
						<h4>이메일</h4>
						<span class="input_area"><input class="box" name="memEmail" id="memEmail" type="text"/>@
							<select class="box" id="email-list" name="email-list">
							  <option value="daum.net">daum.net</option>
							  <option value="naver.com">naver.com</option>
							  <option value="google.com">google.com</option>
							  <option value="hanmail.net">hanmail.net</option>
							  <option value="nate.com">nate.com</option>
							  <option value="kakao.com">kakao.com</option>
							</select>
							</span>
						
						<h4>* 우편번호</h4>
						<span class="input_area"><input type="text" name="memZipcode" class="postcodify_postcode" id="memZipcode"
						readonly></span>
						<button type="button" id="postcodify_search_button">검색</button>
						<br><br>
						
						<h4>도로명주소</h4>
						<span class="input_area"><input type="text" name="memAddress1" class="postcodify_address" id="memAddress1" readonly></span>
						<br><br>
						
						<h4>상세주소</h4>
						<span class="input_area"><input type="text" name="memAddress2" class="postcodify_details" id="memAddress2"></span>
						<br><br>
						<div class="btnArea">
							<button type="button" id="joinBtn" onclick="signupCheck();">가입하기</button>
						</div>
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
    </footer>
</html>