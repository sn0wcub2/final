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
 		if ($('#result').text() == "") {
 			alert("이용 경로를 입력하세요");
 			return false;
 		}
 		location.href="/safe/safereturnsignup";
 	});
 });