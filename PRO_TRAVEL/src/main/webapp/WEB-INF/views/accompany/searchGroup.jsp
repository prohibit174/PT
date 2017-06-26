<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%@include file="../include/header.jsp" %>
<%@include file="../include/accompany_sidebar.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<script src='${pageContext.request.contextPath}/resources/js/accompanyJs/jquery-ui.min.js'></script>
<link rel='stylesheet' href='/resources/css/accompany/jquery-ui.min.css' />
<%-- <script src='${pageContext.request.contextPath}/resources/js/accompanyJs/searchfunction.js'></script> --%>



<script type="text/javascript">
$(function(){
	var ct = 0;
	var frm = $('.ajaxform');

	$(document).on('submit', '.ajaxform', function(e){
		e.preventDefault();
	    	console.log("search.js log = "+frm.serialize());
	    	
	        	
	        $.ajax({
	            type: frm.attr('method'),
	            url: frm.attr('url'),
	            data: frm.serialize(),
	            success : function (data) {
	            	var eachCounter = 0;
	            	var htmlText = '<section class="results ajax-area" data-tmpl="athleteResults_tmpl" style="padding-top: 0px;">';
	            	htmlText += '<div class="heading" style="padding-top: 0px;width: 1300px;">';
	            	htmlText += '<h2>Group Searching accompanies</h2>';
	            	htmlText += '</div>';
	            	htmlText += '<ul class="table2 ajax-content">';
	            	htmlText += '<li>';
	            		htmlText += '<div class="th col1"> Number </div>';
	        				htmlText += '<div class="th col4"> Join </div>';
	        					htmlText += '<div class="th col4"> Date </div>';
	        						htmlText += '<div class="th col4"> Place </div>';
	        							/*htmlText += '<div class="th col4"> Birth </div>';*/
	        								htmlText += '<div class="th col4"> ID </div>'; 
	        									htmlText += '<div class="th col4"> Detail </div>';
	            									htmlText += '</li>';
	            								

	            	$(data).each(function(){
	        		htmlText += '<li>';
	            		htmlText += '<div class="th col1">'+(eachCounter+1)+'</div>';
	        				htmlText += '<div class="th col4"><a class="groupJoin" href="#">  Join </a></div>';
	        					htmlText += '<div class="th col4">'+data[eachCounter].tp_date+'</div>';
	        						htmlText += '<div class="th col4">'+data[eachCounter].cor_region+'</div>';
	        							/*htmlText += '<div class="th col4">'+data[eachCounter].u_birth+'</div>';*/
	        								htmlText += '<div class="th col4">'+data[eachCounter].u_id+'</div>'; 
	        									htmlText += '<div class="th col4"><a href=""> Detail </a></div>';
	        										htmlText += '<input type="hidden" class="accomp_group_num" name="accomp_group_num" value="'+data[eachCounter].accomp_group_num+'">';
	        											htmlText += '</li>';
	            		eachCounter++;
	            	})
	            		htmlText += '</ul>';
	            			htmlText += '</section>';	
	            	
	            	$('div.accompanyList').append(htmlText);
	            	
	            	
	            },
	            error: function (data) {
	                console.log('An error occurred.');
	            },
	        });
	    });






	/*when + button click, add search option  */
	 $(document).on('click','.appendcp',function() {
		if(ct <= 0){
			ct ++;
			$(this).parent('div')
			.append('<div class="row destination" style="font-size: 20px;height: 41px;padding-bottom: 0px;">'+
			'<span class="label" style="margin-right: 60px;">destination</span>'+
			'<select class="label ajaxCity" style="margin-top: -5px; width: 150px" name="trav['+
			ct+
			'].city"><option class="locationName" style="margin-bottom: 10px">name</option>'+
			'<option value="Zurich">Zurich</option><option value="France">France</option>'+
			'<option value="Nice">Nice</option><option value="Brussels">Brussels</option>'+
			'<option value="Berlin">Berlin</option><option value="Munich">Munich</option>'+
			'<option value="Bern">Bern</option><option value="France">France</option>'+
			'<option value="Belgium">Belgium</option><option value="Germany">Germany</option>'+
			'<option value="Swiss" selected="selected">Swiss</option></select>'+
			'<span class="label" style="margin-left: 20px;width: 74px;">begin</span>'+
			'<input class="datepick label ajaxStart" type="text" name="trav['+
			ct+
			'].sdate" value="start" style="margin-top: -5px; padding: 0px; width: 150px;"><span class="label" style="margin-left: 20px;margin-right: 13px;width: 50px;">end</span>'+
			'<input class="datepick label ajaxEnd" type="text"  name="trav['+
			ct+
			'].edate" value="end" style="margin-top: -5px; padding: 0px; width: 150px;">'+
			'<img class="appendcp" src="../resources/images/accompany/plus.png" width="30" height="30" style="margin-top: -5px;">'+
			'<img class="appendcm" src="../resources/images/accompany/miners.png" width="30" height="30" style="margin-top: -5px;margin-left: 8px;"></div>');
		}else{
			ct ++;
			$('div.destination')
			.before('<div class="row stops" style="font-size: 20px;padding-bottom: 0px;height: 40px;">'+
			'<span class="label" style="width: 70px;margin-right: 90px;margin-left: 0px;">stops</span>'+
			'<select class="label ajaxCity" style="margin-top: -5px; width: 150px" name="trav['+
			ct+
			'].city"><option class="locationName" style="margin-bottom: 10px">name</option>'+
			'<option value="Zurich">Zurich</option><option value="France">France</option>'+
			'<option value="Nice">Nice</option><option value="Brussels">Brussels</option>'+
			'<option value="Berlin">Berlin</option><option value="Munich">Munich</option>'+
			'<option value="Bern">Bern</option><option value="France">France</option>'+
			'<option value="Belgium">Belgium</option><option value="Germany">Germany</option>'+
			'<option value="Swiss" selected="selected">Swiss</option></select>'+
			'<span class="label" style="width: 70px;margin-right: 13px;margin-left: 20px;">begin</span>'+
			'<input class="datepick label ajaxStart" type="text" name="trav['+
			ct+
			'].sdate" value="start" style="margin-top: -5px; padding: 0px; width: 150px;">'+
			'<span class="label" style="margin-left: 20px;margin-right: 13px;width: 50px;">end</span>'+
			'<input class="datepick label ajaxEnd" type="text"  name="trav['+
			ct+
			'].edate" value="end" style="margin-top: -5px; padding: 0px; width: 150px;">'+
			'<img class="appendcp" src="../resources/images/accompany/plus.png" width="30" height="30" style="margin-top: -5px;">'+
			'<img class="appendcm" src="../resources/images/accompany/miners.png" width="30" height="30" style="margin-top: -5px;margin-left: 8px;"></div>');
		}
		
		console.log("plus");
		ct += 1;
	});
	 
	 
	/*when - button click, delete search option  */ 
	 $(document).on('click','.appendcm',function() {
	 		console.log($(this).parent('div.row').attr('class'));
	 		ct -= 1;
			$(this).parent('div.row').remove();
			
			
			console.log("minuse");
	});

	$('body').on('focus','.datepick', function(){
	    $(this).datepicker({
	    	changeYear : true,
	    	changeMonth : true,
	    	dateFormat : "yy/mm/dd",
	   		 });
	    });

	$(document).on('click','.groupJoin',function() {
		event.preventDefault();
		var conf = confirm("Join this Group?");
		if(conf == true){
			$.ajax({
				type : 'POST',
				url : 'requestGroup',
				data : {
					"accomp_group_num" : $(this).parent().siblings('.accomp_group_num').val(),
					/*"u_id" :  $('.welcome > span.session').val(),*/
				},
				 success : function (data) {
					 alert(data);
				 }
			})
		}	
	});
	});

</script>




<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Search Group</title>
</head>
<body>
<div id="contents" class="city" style="margin-top: -265px;">
    <div class="conts-container">
        <div class="present">
           <div class="tabs-list"> 
<form action="" method="post" class="ajaxform">
	
			<div class="item-list" style="width: 1400px;padding-right: 30px;margin-left: 260px;">
					<div style="font-size: 20px;">
							<span class="label" style="margin-right: 60px;">departure</span>
						 <select class="label ajaxCity" style="margin-top: -5px; width: 150px" name="trav[0].city">
						<option class="locationName" style="margin-bottom: 10px">name</option>
						<option value="Zurich">Zurich</option>
<option value="France">France</option>
<option value="Nice">Nice</option>
<option value="Brussels">Brussels</option>
<option value="Berlin">Berlin</option>
<option value="Munich">Munich</option>
<option value="Bern">Bern</option>
<option value="France">France</option>
<option value="Belgium">Belgium</option>
<option value="Germany" selected="selected">Germany</option>
<option value="Swiss">Swiss</option>
						</select>
						
							<span class="label" style="width: 70px;margin-right: 13px;margin-left: 20px;">begin</span>
						<input class="datepick label ajaxStart" type="text" name="trav[0].sdate" value="start" style="margin-top: -5px; padding: 0px; width: 150px;">
						<span class="label" style="margin-left: 20px;margin-right: 13px;width: 50px;">end</span>
						<input class="datepick label ajaxEnd" type="text" name="trav[0].edate" value="end" style="margin-top: -5px; padding: 0px; width: 150px;">
							<img class="appendcp" src="../resources/images/accompany/plus.png" width="30" height="30" style="margin-top: -5px;">
				</div>
		<div class="accompanyList row"	>
		</div>
		<div style="padding-left: 350px;float: none;padding-bottom: 50px;" class="calendar-form" style="padding-left: 350px;float: none; ">
		
		<input class="btn-more ajaxbtn" type="submit" value="search" style="margin-right: 20%; margin-top: 10px; width: 120px; height: 50px; font-size: medium; float: none;" />
		</div>
		</div>
	
	
	
	</div>
</form>
</div></div>
   <%@include file="../include/footer.jsp"%>
</body>
</html>
