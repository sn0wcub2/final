/**
 * signup.js
 */
function signupCheck() {
	var userId = document.getElementById("userId");
	var userPwd = document.getElementById("userPwd");
	var userPwd2 = document.getElementById("userPwd2");
	var userName = document.getElementById("userName");
	var userBirth = document.getElementById("userBirth");
	var userEmail = document.getElementById("userEmail");
	var userHP = document.getElementById("userHP");
	var userEmgHP = document.getElementById("userEmgHP");
	var userZipcode = document.getElementById("userZipcode");
	var user2Zipcode = document.getElementById("user2Zipcode");
	var user3Zipcode = document.getElementById("user3Zipcode");

	if (userId.value == "") {
		alert("아이디를 입력하세요.")
		userId.focus();
		return false;
	};
	
	if($("input[name='checked_id']").val()==''){
        alert('아이디중복 확인을 해주세요.');
        $("input[name='checked_id']").eq(0).focus();
        return false;
    	}

	if (userPwd.value == "") {
		alert("비밀번호를 입력하세요.")
		userPwd.focus();
		return false;
	};

	var pwdCheck = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,25}$/;

	if (!pwdCheck.test(userPwd.value)) {
		alert("비밀번호는 영문자+숫자+특수문자 조합으로 8~25자리 사용해야 합니다.");
		userPwd.focus();
		return false;
	};

	if (userPwd2.value !== userPwd.value) {
		alert("비밀번호가 일치하지 않습니다.")
		userPwd2.focus();
		return false;
	};

	if (userName.value == "") {
		alert("이름을 입력하세요.")
		userName.focus();
		return false;
	};

	var num = /^[0-9]+/g;

	if (!num.test(userHP.value)) {
		alert("전화번호는 숫자만 입력하세요.")
		userHP.focus();
		return false;
	};

	if (userEmail.value == "") {
		alert("이메일을 입력하세요.")
		userEmail.focus();
		return false;
	};
	
	if (userZipcode.value == "") {
		alert("주소를 입력하세요.")
		userZipcode.focus();
		return false;
	};
	if (user2Zipcode.value == "") {
		alert("주소를 입력하세요.")
		user2Zipcode.focus();
		return false;
	};
	if (user3Zipcode.value == "") {
		alert("주소를 입력하세요.")
		user3Zipcode.focus();
		return false;
	};

	document.signUpForm.submit();
};