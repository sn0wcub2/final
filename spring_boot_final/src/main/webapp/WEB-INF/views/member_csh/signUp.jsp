<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원가입 화면</title>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/css_csh/signup.css'/>">
		<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
		<script src="<c:url value='/js/js_csh/signup.js'/>"></script>
		<script src="<c:url value='/js/js_csh/idCheck.js'/>"></script>
		<style type="text/css">
		.mybtn{
		  width:150px;
		  height:40px;
		  padding:0;
		  display:inline; 
		  border-radius: 4px; 
		  background: #212529;
		  color: #fff;
		  margin-top: 20px;
		  border: solid 2px #212529; 
		  transition: all 0.5s ease-in-out 0s;
		}
		.mybtn:hover .mybtn:focus {
		  background: white;
		  color: #212529;
		  text-decoration: none;
		}
		</style>
		
	</head>
	<body>
		<div id="wrap">
			<div class="w3-content w3-container w3-margin-top signUpbox">
				<div class="w3-container w3-card-4 w3-auto signUp" style="width: 600px;height: 1320px;">
				<div class="w3-center w3-large w3-margin-top">
				<h1>회원 가입</h1>
				</div>
					<form name="signUpForm" id="signUpForm" method="post" action="<c:url value='/member_csh/insert'/>">
					<input type="hidden" id="memBirth" name="memBirth" value="">
						<br>
						<label>아이디</label>
						<input type="hidden" name="checked_id" value="">
						<input type="button" id="idCheck"value="중복확인">
						<input class="w3-input" type="text" maxlength="13" name="memId" id="memId">
						<br><br>
						<label>비밀번호</label>
						<input class="w3-input" type="password" maxlength="25" name="memPwd" id="memPwd" 
						placeholder="영문자+숫자+특수문자 조합">
						<br><br>
						
						<label>비밀번호 확인</label>
						<input class="w3-input" type="password" maxlength="25" name="memPwd2" id="memPwd2">
						<label id="pwdResult"></label>
						<br><br>
						
						<label>이름</label>
						<input class="w3-input" type="text" maxlength="5" name="memName" id="memName">
						<br><br>
						
						<label>성별</label>
						<label><input type="radio" name="memGender" value="man">남자</label>
						<label><input type="radio" name="memGender" value="woman">여자</label>
						<br><br>
						<hr>
						
						<label>생년월일</label>
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
						<hr>
						
						<label>연락처</label>
						<input class="w3-input" type="tel" maxlength="11" name="memHP" id="memHP"
						placeholder="ex) 01011111111">
						<br><br>
						
						<label>긴급 연락처</label>
						<input class="w3-input" type="tel" maxlength="11" name="memEmgHP" id="memEmgHP"
						placeholder="ex) 01011111111">
						<br><br>
											
						<label>이메일</label>
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
							<hr>
						
						<label>우편번호</label>
						<span class="input_area"><input type="text" name="memZipcode" class="postcodify_postcode" id="memZipcode"
						readonly></span>
						<button type="button" id="postcodify_search_button">검색</button>
						<br><br>
						<hr>
						
						<label>도로명 주소</label>
						<span class="input_area"><input type="text" name="memAddress1" class="postcodify_address" id="memAddress1" readonly></span>
						<br><br>
						<hr>
						
						<label>상세주소</label>
						<span class="input_area"><input type="text" name="memAddress2" class="postcodify_details" id="memAddress2"></span>
						<br><br>
						<hr>
						<div class="w3-center btnArea">
							<button type="button" class="w3-button w3-hover-white w3-ripple w3-margin-top w3-round mybtn" id="joinBtn" onclick="signupCheck();">가입하기</button>
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