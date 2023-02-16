/**
 *  
 */
 
 $(document).ready(function(){
 	$('#myPageForm').on('submit', function(){
 	//폼이 submit 되지 않도록 기본 기능 중단
 		event.preventDefault();
 		var formdata = $(this).serialize();
 		console.log(formdata);
 		// 서버에 전송하고 결과 받아서 처리
 		$.ajax({
 			type:"post",
 			url:"/mypage_csh/deleteMyPage",
 			data: {formdata
 			       },
 			dataType:'text',
 			success:function(result){
 				if(result == "success"){
 					alert("탈퇴 되었습니다.");
 					location.href="/myPage_csh/deleteMyPage";
 				}else{
 					alert("비밀번호가 일치하지않습니다.");
 				}
 			},
 			error:function(){
 				alert("비밀번호를 확인해주세요.");
 			},
 			complete:function(){
 				//alert("작업 완료");
 			}
 		}); // ajax 종료 	
 	});// submit 종료
});