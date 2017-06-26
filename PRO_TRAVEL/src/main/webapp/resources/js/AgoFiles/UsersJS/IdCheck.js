//id확인
$(function(){
	
	var regexp = "^[a-z0-9]"
	
	$("#u_idcheck").click(function(){
		$.ajax({
			url : "IdCheckAction",
			type : "post",
			data : $("#u_id").serialize(),
			success : function(data){
				if(data>0){
					alert("Duplicated ID")
				}else if($("#u_id").val().length<5 || $("#u_id").val().length>12){
					alert('Make ID from 4 to 12 length.');
				}else if(!$("#u_id").val().match(regexp)){
					alert('Make ID with small character and number.');
				}else{
					$('#idcheck').text(''); 
					$('#idcheck').html('Available ID.'); 
				}
			}
		
		})
	})
	
	
})