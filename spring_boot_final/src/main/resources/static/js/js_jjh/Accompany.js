/**
 * Accompany.js
 */

function setAccompany() {
	var date = $("#date-picker").val();
	var start =$("#dong1").val() + " " +$('#bunji1').val() + "번지";
	var end = $("#dong2").val() + " " +$('#bunji2').val() + "번지";
	/*$("#companionBox").text("동행인 배정중 입니다.");
	$("#safeReturnResultBox").html("<h2>신청 내용</h2><table><tr><td>신청 날짜</td><td>"+date+"</td></tr>"+
									"<tr><td>시작 위치</td><td>"+start+"</td></tr>"+
									"<tr><td>도착 위치</td><td>"+end+"</td></tr></table>");*/
									
	
	
};

 $(document).ready(function() {
 	$("#safeReturnAddressForm").on("submit", function() {
 		event.preventDefault();
 		var srpay = $("#srpay").val();
 		if($("#safeReturnPay").text() == "") {
			alert("이용 경로를 선택해 주세요.");
			return false;
		}
		 		 
 		$.ajax({
 			type:"post",
 			url:"/safe/safereturnsignup",
 			data:{"srpay":srpay},
 			dateType:"text",
 			success:function(result) {
 				if(result == "success") { 
 					alert("신청 완료.\n메인 페이지로 이동합니다.");
 					location.href="/";
 				} else {
 					alert("포인트가 부족합니다.");
 				}
 			},
 			error:function() {
 				alert("로그인 후 다시 이용해주세요.");
 				location.href="/member_csh/login";
 			}
 		}); // ajax 끝
 	});
 });