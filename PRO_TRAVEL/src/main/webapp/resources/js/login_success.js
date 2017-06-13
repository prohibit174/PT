$(function() {
		if ($("span.session").text() != "null") {
			$("li.welcome").show();
			$("li#mypage").show();
			$("#login-button").text("LOGOUT");
		} else if ($('#login-button').text() === "LOGOUT") {
			$('#login-button').text("LOGIN");
			$('li.welcome').hide();
			$("li#mypage").hide();
		}
});