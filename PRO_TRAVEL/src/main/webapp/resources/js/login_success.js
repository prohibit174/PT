$(function() {
	$("#login-button").on("click", function() {
		if ($("span.session").text() != "null") {
			console.log($("span.session").text());
			$("li.welcome").show();
			$("li#mypage").show();
			$("#login-button").text("LOGOUT");
		} else if ($('#login-button').text() === "LOGOUT") {
			$('#login-button').text("LOGIN");
			$('li.welcome').hide();
			$("li#mypage").hide();
		}

	});
});