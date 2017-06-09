
$(function(){
	$('#leave').click(function(){
		if($('#leaveCheck').is(":checked")==false){
			alert('탈퇴 약관에 동의가 필요합니다.');
			return false;
		}else{
			alert('회원탈퇴가 완료되었습니다.');
			$(document.getElementsByClassName('#results_form').submit());
			
		}		
			return false;
		
	})
})