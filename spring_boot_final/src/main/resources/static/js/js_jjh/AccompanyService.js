/**
 * AccompanyService.js // 안심 동행 서비스
 */
 
function setCharge() {
	var tokens = $("#timepicker").val().split(":");
	var tokens2 = $("#timepicker2").val().split(":");
	
	if(tokens[0] > tokens2[0]) {
		$("#accompanyPay").html("시간을 잘 못 선택하셨습니다.");
	} else if (tokens[0] == tokens2[0] && tokens[1] == tokens2[1]) {
		$("#accompanyPay").html("시간을 잘 못 선택하셨습니다.");
	} else if(tokens[0] == tokens2[0] && tokens[1] > tokens2[1]) {
		$("#accompanyPay").html("시간을 잘 못 선택하셨습니다.");
	} else { 
		$("#accompanyPay").html(((tokens2[0]-tokens[0])*4000 + (tokens2[1]-tokens[1])/15*1000) + "원");
	}
}; 

 
$(document).ready(function() {
	$("#AccompanyForm").on("submit", function() {
 		event.preventDefault();
 		var formData = $(this).serialize();
 		console.log(formData);
 		var chkDate = $("#date-picker").val();
 		var chkTime = $("#timepicker").val();
 		var chkTime2 = $("#timepicker2").val();
 		var chkBunji1 = $("#bunji1").val();
 		var chkDes = $("#destination").val();
 		
 		if(chkDate == "") {
		 	alert("서비스 사용 날짜를 선택해 주세요.");
		 	return false;
		}
		if(chkTime == "") {
			alert("서비스 시작 시간을 선택해 주세요.");
			return false;
		}
		if(chkTime2 == "") {
			alert("서비스 종료 시간을 선택해 주세요.");
			return false;
		}
		if(chkBunji1 == "") {
			alert("출발지 및 귀가지를 선택해 주세요.");
			return false;
		}
		if(chkDes == "") {
			alert("목적지를 입력해 주세요.");
			return false;
		}
		
		$.ajax({
 			type:"post",
 			url:"/safe/accompanysignup",
 			data:formData,
 			dateType:"text",
 			success:function(result) {
 				if(result == "success") { 
 					alert("신청 완료.\n메인 페이지로 이동합니다.");
 					location.href="/";
 				} else if (result == "timeerror") {
 					alert("시간을 잘 못 선택하셨습니다.");
 				} else {
 					alert("포인트가 부족합니다.");
 				}
 			},
 			error:function() {
 				alert("로그인 후 다시 이용해주세요.");
 				location.href="/member_csh/login";
 			}
 		}); // ajax 끝
		
 	}); // submit 끝
 	
 	
});