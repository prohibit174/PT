$(function(){
	$('#login-button').click(function(){
			if($('#login-button').text() === "LOGIN"){
				self.location ="${pageContext.request.contextPath}/login_form";
			}
			else if($('#login-button').text() === "LOGOUT"){
				self.location = "${pageContext.request.contextPath}/logout";
			}
		});
});

$(function(){

	$(".accompany").on("click", function(){
		if($('#login-button').text() === "LOGIN"){
			console.log("뷁");
			alert("로그인이 필요한 페이지 입니다.");
		}else{
			
		}
	});
});
