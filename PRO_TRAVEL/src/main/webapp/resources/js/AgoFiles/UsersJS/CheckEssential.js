
$(function(){
	$('#validate_order').click(function(){
		if($('#u_id').val()==""){
			alert('Please Input ID.');
			$('#u_id').focus();
			return false;
		}else if($('#pwcheck').val()==""){
			alert('Please Check Password.');
			$('#pwcheck').focus();
			return false;
		}else if($('#u_name').val()==""){
			alert('Please Input Nick Name');
			$('#u_name').focus();
			return false;
		}else if($('#u_birth').val()==""){
			alert('Please Input Birthday');
			$('#u_birth').focus();
			return false;			
		}else if($('#u_address').val()==""){
			alert('Please Input Address.');
			$('#u_address').focus();
			return false;			
		}else if($('#law_agree').is(":checked")==false){
			alert('Please Agree with terms and conditions.');
			return false;
		}else if($('#privacy_policy').is(':checked')==false){
			alert('Please Agree with Private Policy.');
			return false;
		}else{
			alert('Welcome Join.');
			$(document.getElementsByClassName('join_form').submit());
			
		}		
			return false;
		
	})
})