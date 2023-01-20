/**
 * signup.js 
 */
function signupCheck() {
	var memId = document.getElementById("memId");
	var memPwd = document.getElementById("memPwd");
	var memPwd2 = document.getElementById("memPwd2");
	var memName = document.getElementById("memName");
	var memGender = document.getElementById("memGender");
	var memBirth = document.getElementById("birth-year")+"-"+document.getElementById("birth-month")+"-"+document.getElementById("birth-day");
	var memHP = document.getElementById("memHP");
	var memEmgHP = document.getElementById("memEmgHP");
	var memEmail = document.getElementById("memEmail");
	var memZipcode = document.getElementById("memZipcode");

	if (memId.value == "") {
		alert("아이디를 입력하세요.")
		memId.focus();
		return false;
	};
	
	if($("input[name='checked_id']").val()==''){
        alert('아이디중복 확인을 해주세요.');
        $("input[name='checked_id']").eq(0).focus();
        return false;
    	}

	if (memPwd.value == "") {
		alert("비밀번호를 입력하세요.")
		memPwd.focus();
		return false;
	};

	var pwdCheck = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,25}$/;

	if (!pwdCheck.test(memPwd.value)) {
		alert("비밀번호는 영문자+숫자+특수문자 조합으로 8~25자리 사용해야 합니다.");
		memPwd.focus();
		return false;
	};

	if (memName.value == "") {
		alert("이름을 입력하세요.")
		memName.focus();
		return false;
	};
	
	if($("input[name=memGender]:radio:checked").length < 1){

		alert("성별을 선택하세요.");

		return false;
	};
	
	if($('#birth-year option:selected').val() == ""||$('#birth-month option:selected').val() == ""||$('#birth-day option:selected').val() == ""){
    alert("생년월일을 입력하세요.");
    $("#birth-year").focus();
    return false;
    
	};
	
		

	var num = /^[0-9]+/g;

	if (!num.test(memHP.value)) {
		alert("전화번호를 입력하세요")
		memHP.focus();
		return false;
	};
	
	var num = /^[0-9]+/g;
	
	if (!num.test(memEmgHP.value)) {
		alert("긴급전화번호를 입력하세요")
		memEmgHP.focus();
		return false;
	};

	if (memEmail.value == "") {
		alert("이메일을 입력하세요.")
		memEmail.focus();
		return false;
	};
	
	if (memZipcode.value == "") {
		alert("주소를 입력하세요.")
		memZipcode.focus();
		return false;
	};

	document.signUpForm.submit();
};