$(function(){
	$('#login-button').click(function(){
			if($('#login-button').text() === "LOGIN"){
				location.href="login_form";
			}
			else if($('#login-button').text() === "LOGOUT"){
				location.href = "logout";
			}
		});
});

