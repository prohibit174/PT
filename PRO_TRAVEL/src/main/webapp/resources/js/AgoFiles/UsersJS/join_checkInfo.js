//암호확인
$(function(){ 
	//var regexp = "^(?=([a-zA-Z]+[0-9]+[a-zA-Z0-9]*|[0-9]+[a-zA-Z]+[a-zA-Z0-9]*)$)";
	//var regexp = "/[(\w)\w[`~!@@#$%^&*<>+-.]/";
	var regexp = "/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])[0-9a-zA-Z]{6,12}$/";
	//숫자, 영어 대/소문자 조합으로 6-12자리


	$('#u_pwd').keyup(function(){ 
		$('#PWerrorField').text(''); 

		if(($('#u_pwd').val().match(regexp)))
		/*	if( !regexp.test($('#u_pwd').val()))*/{ 
				$('.PWerrorField').text(''); 
				$('.PWerrorField').html('조건에 맞지않습니다'); 
			} 
		if($('#u_pwd').val().length <5 || $('#u_pwd').val().length >12){ 
			$('.PWerrorField').text(''); 
			$('.PWerrorField').html('적합하지 않은 길이입니다'); 
		} 
		alert('#u_pwd'.length);
	}); 

	$('#pwcheck').keyup(function(){ 
		if($('#u_pwd').val()!=$('#pwcheck').val()){ 
			$('.PWCerrorField').text(''); 
			$('.PWCerrorField').html('암호를 다시 확인하세요'); 
		} else{ 
			$('.PWCerrorField').text(''); 
			$('.PWCerrorField').html(''); 
		} 
	});
})



