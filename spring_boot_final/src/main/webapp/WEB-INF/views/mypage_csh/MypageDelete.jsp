<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원탈퇴</title>
		<!--  head -->         
        	<c:import url="/WEB-INF/views/layout/header_main.jsp" />
        	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
			<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        	<script src="<c:url value='/js/js_csh/mypagedelete.js' />"></script>
		<style type="text/css">
		.w3-card-4, .w3-hover-shadow:hover {
		box-shadow: 0 4px 10px 0 rgb(135, 206, 235), 0 4px 20px 0
		rgb(135, 206, 235);
}
			#wrap{
				margin:0 auto;
				width: 100%;
				height: 100%;
				text-align: center;
			}
			
			.myPageForm h1 {
			 margin-top:70px;
			 padding-top:20px;
			}
			.myPageForm{
			padding-bottom:30px;
			}
			
			table{
				margin:0 auto;
				width: 400px;
			}
			h1 {
				color: #87ceeb;
				font-family: "Lato", Arial, sans-serif;
				font-weight: 400;
				margin: 0 0 20px 0;
			}
			#button{
			  width:100px;
			  height:40px;
			  padding:0;
			  display:inline;
			  border:1.5px solid white; 
			  border-radius: 4px; 
			  background: #87ceeb;
			  color: #fff;
			  margin-top: 20px;
			  transition: all 0.5s ease-in-out 0s;
			}
			#button:hover{
			  border-color:  #87ceeb; 
	  		  border-radius: 4px; 
	   		  border: solid 2px skyblue;
			  background: white;
			  color: #212529;
			  text-decoration: none;
			  box-shadow: 0 4px 10px 0 rgb(135, 206, 235), 0 4px 20px 0
				rgb(135, 206, 235);
			}
			#userreset{
			width:100px;
			  height:40px;
			  padding:0;
			  display:inline;
			  border:1.5px solid white; 
			  border-radius: 4px; 
			  background: #87ceeb;
			  color: #fff;
			  margin-top: 20px;
			  transition: all 0.5s ease-in-out 0s;
			}
			#userreset:hover{
			  border-color:  #87ceeb; 
	  		  border-radius: 4px; 
	   		  border: solid 2px skyblue;
			  background: white;
			  color: #212529;
			  text-decoration: none;
			  box-shadow: 0 4px 10px 0 rgb(135, 206, 235), 0 4px 20px 0
				rgb(135, 206, 235);
			}
			.w3-input:focus{
			outline: none;
			border-color: skyblue; 
	   		border-bottom: solid 2px skyblue;
			}
		</style>
	</head>
	<body>
	<div id="wrap">
	<!--  top -->         
        	<c:import url="/WEB-INF/views/layout/top.jsp" />
	<div class="w3-content w3-container w3-margin-top mypagedeletebox"style="width:500px;">
	<div class="mypagedelete 3-container w3-card-4 w3-auto">
					<form id="myPageForm" class="myPageForm" method="post">
						<h1>회원 탈퇴</h1>
						<hr>
						
						<table>
							<tr><td>회원명</td>
									<td><input class="w3-input" type="text" name="memName" value="${mem.memName}" readonly></td></tr>	
							<tr><td>회원아이디</td>
									<td><input class="w3-input" type="text" name="memId" value="${mem.memId}" readonly></td></tr>
							<tr><td>비밀번호</td>
									<td><input class="w3-input" type="password" name="memPwd" required></td></tr>
							<tr><td>비밀번호 확인</td>
									<td><input class="w3-input" type="password" name="memPwd2" required></td></tr>								
							<tr><td colspan="2">
								<input id="button" onclick="return confirm('※보유한 포인트가 모두 소멸됩니다.\n탈퇴하시겠습니까?')" type="submit" value="탈퇴 확인">

							    <input id="userreset" type="reset" value="취소"></td></tr>
						</table>
					</form>
				</div>
			</div>
			<br><br>
	</div>
	<footer>
        <!--  bottom -->         
        	<c:import url="/WEB-INF/views/layout/footer.jsp" />
    </footer>	
	</body>
</html>
