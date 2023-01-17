

$(document).ready(function(){
		$("#findBtn").on('click',function(){
		//폼이 submit 되지 않도록 기본 기능 중단
 		event.preventDefault();
			
	 	// 서버에 전송하고 결과 받아서 처리
			$.ajax({
				type : "post",
				url : "/member_csh/findpw",
				data: {"id":$('#id').val(),
	 			       "email":$('#email').val()},
				success : function(result) {
					alert(result);
				},
			});
		});
	});