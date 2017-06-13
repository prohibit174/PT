$(function() {
	$('#login-button').click(function() {
		if ($('#login-button').text() === "LOGIN") {
			location.href = "/login_form";
		} else if ($('#login-button').text() === "LOGOUT") {
			location.href = "/logout";
		}
	});
});

$(function() {
	$(".accompany").on("click", function() {
		if ($('#login-button').text() === "LOGIN") {
			alert("로그인이 필요한 페이지 입니다.");
		} else {

		}
	});
});

$(function() {
	$(".carpool").on("click", function() {
		if ($('#login-button').text() === "LOGIN") {
			alert("로그인이 필요한 페이지 입니다.");
		} else {

		}
	});
});

$(function() {
	$("li#mypage").on("click", function() {
		if ($('#login-button').text() === "LOGIN") {
			alert("로그인이 필요한 페이지 입니다.");
		} else {

		}
	})
});