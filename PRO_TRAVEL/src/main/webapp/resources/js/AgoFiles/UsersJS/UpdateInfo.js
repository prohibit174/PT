$(function(){
	$('.nlogin_join_center').click(function(){
		if($('#pwcheck').val()==""){
			alert('Please Check password.');
			$('#pwcheck').focus();
			return false;		
		}else if($('#u_address').val()==""){
			alert('Input address.');
			$('#u_address').focus();
			return false;			
		}else{
			alert('Modified');
			$(document.getElementsByClassName('join_form').submit());

		}
		
		return false;
	})
})