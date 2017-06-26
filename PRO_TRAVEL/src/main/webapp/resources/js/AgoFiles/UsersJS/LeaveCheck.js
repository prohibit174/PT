
$(function(){
	$('#leave').click(function(){
		if($('#leaveCheck').is(":checked")==false){
			alert('Please Accept withdrawal terms.');
			return false;
		}else{
			alert('Thanks for using our service.');
			$(document.getElementsByClassName('#results_form').submit());
			
		}		
			return false;
		
	})
})