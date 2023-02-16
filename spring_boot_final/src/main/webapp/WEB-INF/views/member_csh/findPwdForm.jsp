<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
<!--  head -->         
        	<c:import url="/WEB-INF/views/layout/header_main.jsp" />
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
<script>
	$(document).ready(function(){
		$("#findBtn").on('click',function(){
		//폼이 submit 되지 않도록 기본 기능 중단
 		event.preventDefault();
		
 	// 서버에 전송하고 결과 받아서 처리
			$.ajax({
				type : "post",
				url : "/member_csh/findpw",
				data : {"id":$('#id').val(),
						"email":$('#email').val()},
				success : function(result) {
					alert(result);
				},
			});
		});
	});
</script>
<style type="text/css">
.w3-card-4, .w3-hover-shadow:hover {
	box-shadow: 0 4px 10px 0 rgb(135, 206, 235), 0 4px 20px 0
		rgb(135, 206, 235);
}

.w3-input:focus {
	border-bottom: 2px solid orange;
	outline: none;
}

h1 {
	color: #87ceeb;
	font-family: "Lato", Arial, sans-serif;
	font-weight: 400;
	margin: 0 0 20px 0;
}

.mybtn {
	width: 150px;
	height: 40px;
	padding: 0;
	display: inline;
	border-radius: 4px;
	background: #87ceeb;
	color: #fff;
	margin-top: 20px;
	transition: all 0.5s ease-in-out 0s;
}

.mybtn:hover .mybtn:focus {
	border-color: #87ceeb;
	border-radius: 4px;
	border: solid 2px #000;
	background: white;
	color: #212529;
	text-decoration: none;
}
</style>
<title>비밀번호 찾기</title>
</head>
<body>
	<div id="wrap">
	<!--  top -->         
        	<c:import url="/WEB-INF/views/layout/top.jsp" />
		<div class="w3-content w3-container w3-margin-top">
			<div class="w3-container w3-card-4 w3-auto"
				style="width: 382px; height: 456.3px;">
				<div class="w3-center w3-large w3-margin-top">
					<h3>비밀번호 찾기</h3>
				</div>
				<form class = "content" action="pw_auth.me" method="post">
				<div>
					<p>
						<label>아이디</label> <input class="w3-input" type="text" id="id"
							name="id" placeholder="회원가입한 아이디를 입력하세요" required>
					</p>
					<p>
						<label>이메일</label> <input class="w3-input" type="text" id="email"
							name="email" placeholder="회원가입한 이메일주소를 입력하세요" required>
					</p>
					<p class="w3-center">
						<button type="button" id="findBtn"
							class="w3-button w3-hover-white w3-ripple w3-margin-top w3-round mybtn">찾기</button>
						<button type="button" onclick="history.go(-1);"
							class="w3-button w3-hover-white w3-ripple w3-margin-top w3-round mybtn">로그인으로</button>
					</p>
				</div>
				</form>
			</div>
		</div>
	</div>
	<footer>
        <!--  bottom -->         
        	<c:import url="/WEB-INF/views/layout/footer.jsp" />
    </footer>
</body>
</html>
