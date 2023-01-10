<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>로그인 화면</title>
		<script src="<c:url value='/js/signup.js'/>"></script>
		<script src="<c:url value='/js/idCheck.js'/>"></script>
	</head>
	<body>
		<div id="wrap">
			<div class="wrap">
				<div id="signUp">
					<form name="signUpForm" id="signUpForm" method="post"  action="<c:url value='/user_csh/insert'/>">
						<h1>회원 가입</h1>
						<br>
						<h4>아이디</h4>
						<span class="input_area"><input type="text" maxlength="13" name="userId" id="userId"></span>
						<input type="hidden" name="checked_id" value="">
						<button type="button" id="idCheck">중복확인</button>
						<br><br>
						<h4>비밀번호</h4>
						<span class="input_area"><input type="password" maxlength="25" name="userPwd" id="userPwd" 
						placeholder="영문자+숫자+특수문자 조합"></span>
						<br><br>
						
						<h4>비밀번호 확인</h4>
						<span class="input_area"><input type="password" maxlength="25" name="userPwd2" id="userPwd2"></span>
						<label id="pwdResult"></label>
						<br><br>
						
						<h4>이름</h4>
						<span class="input_area"><input type="text" maxlength="5" name="userName" id="userName"></span>
						<br><br>
						
						<h4>생년월일</h4>
						<span class="input_area"><select class="box" id="birth-year">
						    <option disabled selected>출생 연도</option>
						  </select>
						  <select class="box" id="birth-month">
						    <option disabled selected>월</option>
						  </select>
						  <select class="box" id="birth-day">
						    <option disabled selected>일</option>
						  </select></span>
						<br><br>
						
						<h4>연락처</h4>
						<span class="input_area"><input type="tel" maxlength="11" name="userHP" id="userHP"
						placeholder="ex) 01012345678"></span>
						<br><br>
						
						<h4>긴급연락처</h4>
						<span class="input_area"><input type="tel" maxlength="11" name="userEmgHP" id="userEmgHP"
						placeholder="ex) 01012345678"></span>
						<br><br>
											
						<h4>이메일</h4>
						<span class="input_area"><input class="box" name="userEmail" id="userEmail" type="text"/>@
							<select class="box" id="email-list">
							  <option value="daum.net">daum.net</option>
							  <option value="naver.com">naver.com</option>
							  <option value="google.com">google.com</option>
							  <option value="hanmail.net">hanmail.net</option>
							  <option value="nate.com">nate.com</option>
							  <option value="kakao.com">kakao.com</option>
							</select>
							</span>
						
						<h4>우편번호</h4>
						<span class="input_area"><input type="text" name="userZipcode" class="postcodify_postcode" id="userZipcode"
						readonly></span>
						<button type="button" id="postcodify_search_button">검색</button>
						<br><br>
						
						<h4>도로명주소</h4>
						<span class="input_area"><input type="text" name="userAddress1" class="postcodify_address" id="userAddress1" readonly></span>
						<br><br>
						
						<h4>상세주소</h4>
						<span class="input_area"><input type="text" name="userAddress2" class="postcodify_details" id="userAddress2"></span>
						
						<h4>우편번호2</h4>
						<span class="input_area"><input type="text" name="user2Zipcode" class="postcodify_postcode" id="user2Zipcode"
						readonly></span>
						<button type="button" id="postcodify_search_button2">검색</button>
						<br><br>
						
						<h4>도로명주소2</h4>
						<span class="input_area"><input type="text" name="user2Address1" class="postcodify_address" id="user2Address1" readonly></span>
						<br><br>
						
						<h4>상세주소2</h4>
						<span class="input_area"><input type="text" name="user2Address2" class="postcodify_details" id="user2Address2"></span>
						
						<h4>우편번호3</h4>
						<span class="input_area"><input type="text" name="user3Zipcode" class="postcodify_postcode" id="user3Zipcode"
						readonly></span>
						<button type="button" id="postcodify_search_button3">검색</button>
						<br><br>
						
						<h4>도로명주소3</h4>
						<span class="input_area"><input type="text" name="user3Address1" class="postcodify_address" id="user3Address1" readonly></span>
						<br><br>
						
						<h4>상세주소3</h4>
						<span class="input_area"><input type="text" name="user3Address2" class="postcodify_details" id="user3Address2"></span>
						
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
	<script> $(function() { $("#postcodify_search_button2").postcodifyPopUp(); }); </script>
	<script> $(function() { $("#postcodify_search_button3").postcodifyPopUp(); }); </script>
	</body>
	<footer>
    </footer>
</html>