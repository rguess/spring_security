function refresh(o) {
	// 重载验证码
	var timenow = new Date().getTime();
	o.src = "kaptcha?d=" + timenow;

	// 超时执行;
	setTimeout(function() {
		o.src = "kaptcha?d=" + timenow;
	}, 20);
}

function showReturned(meta) {
	if(meta == "auth code error"){
		alert("验证码不正确！")
	}else if(meta == "pass error"){
		alert("用户名密码不正确");
	}else if(meta == "success"){
		window.location.href="index.jsp"
	}
}

$(document).ready(function() {

	$("#submit_btn").click(function() {
		var username = $("#username").val();
		var password = $("#password").val();
		$('#login_form').submit();
	});
	// bind to the form's submit event
	$('#login_form').submit(function() {
		// ajax 上传文件
		var option = {
			success : showReturned, // post-submit callback
			type : 'POST',
			url : 'rest/login',
			clearForm : true
		};
		$("#login_form").ajaxSubmit(option);
		return false;
	});

});