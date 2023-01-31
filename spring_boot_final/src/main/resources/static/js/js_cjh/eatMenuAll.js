$(document).ready(function() {
	alert("first");

	function search(){
		alert("sec");
	}
	// $("#type").on("click", function() {
	// 	alert("성공");
	// 	event.preventDefault();
	// 	var formData = $(this).serialize();
	// 	console.log(formData);
	// 	if($("#safeReturnPay").text() == "") {
	// 	   alert("이용 경로를 선택해 주세요.");
	// 	   return false;
	//    }
				 
	// 	$.ajax({
	// 		type:"post",
	// 		url:"/safe/safereturnsignup",
	// 		data:formData,
	// 		dateType:"text",
	// 		success:function(result) {
	// 			if(result == "success") { 
	// 				alert("신청 완료.\n메인 페이지로 이동합니다.");
	// 				location.href="/";
	// 			} else {
	// 				alert("포인트가 부족합니다.");
	// 			}
	// 		},
	// 		error:function() {
	// 			alert("로그인 후 다시 이용해주세요.");
	// 			location.href="/member_csh/login";
	// 		}
	// 	}); // ajax 끝
	// });
});