<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<%@ include file="/WEB-INF/views/include/carpool_sidebar.jsp" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src='${pageContext.request.contextPath}/resources/js/accompanyJs/jquery-ui.min.js'></script>
<link rel='stylesheet' href='/resources/css/accompany/jquery-ui.min.css' />

<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<script type="text/javascript">
function applyLink(URL){
	if(confirm("신청하시겠습니까?") == true){
		location.href=URL;
		alert('신청되었습니다');

	}
	else{
		alert('Cancle');
	}
}
</script>

<script type="text/javascript">
$(function(){
	var ct = 0;
	var frm = $('.ajaxform');

	$(document).on('submit', '.ajaxform', function(e){
		e.preventDefault();
	    	console.log("search.js log = "+frm.serialize());
	    	/* console.log("url = "+frm.attr('url')); */
	    	
	    	
	        	
	        $.ajax({
	            type: frm.attr('method'),
	            url: frm.attr('url'),
	            data: frm.serialize(),
	            success : function (data) {
	            	var eachCounter = 0;
	            	var htmlText = '<section class="results ajax-area" data-tmpl="athleteResults_tmpl">';
	            	htmlText += '<div class="heading">';
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
	            		htmlText += '<div class="th col1">''</div>';
	        				htmlText += '<div class="th col4"><a class="groupJoin" href="#">  Join </a></div>';
	        					htmlText += '<div class="th col4">''</div>';
	        						htmlText += '<div class="th col4">'+'</div>';
	        							/*htmlText += '<div class="th col4">'+data[eachCounter].u_birth+'</div>';*/
	        								htmlText += '<div class="th col4">''</div>'; 
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

	$('body').on('focus','.datepick', function(){
	    $(this).datepicker({
	    	changeYear : true,
	    	changeMonth : true,
	    	dateFormat : "yy/mm/dd",
	   		 });
	    });

/* 	$(document).on('click','.groupJoin',function() {
		event.preventDefault();
		var conf = confirm("Join this Group?");
		if(conf == true){
			$.ajax({
				type : 'POST',
				url : 'requestGroup',
				data : {
					"accomp_group_num" : $(this).parent().siblings('.accomp_group_num').val(),
					"u_id" :  $('.welcome > span.session').val(),
				},
				 success : function (data) {
					 alert(data);
				 }
			})
		}	
	}); */
	});

</script>



<style>
@CHARSET "EUC-KR";
.wrapper {
  margin: 0 auto;
  padding-left: 20px;
  max-width: 800px;
}
</style>


</head>
<body>
<div class=wrapper>
	<img srcset="${pageContext.request.contextPath}/resources/images/carpool/list.png">
</div>	

          <form action="/carpool/listAll" method="post" class="ajaxform">
<div class="id-card-box" style="width: 100% ;border: black;">
	
			<div class="item-list" style="width: 1400px; padding-right: 30px;">
					<div style="font-size: 20px;">
							<span class="label" style="margin-right: 80px;"  >departure</span>
						 <select class="label ajaxCity" style="margin-top: -5px; width: 150px" name="start_point">
							<option class="locationName" style="margin-bottom: 10px">name</option>
							<option value="Zurich">Zurich</option>
							<option value="Paris" >Paris</option>
							<option value="Rouen" selected="selected">Rouen</option>
							<option value="France">France</option>
							<option value="Nice">Nice</option>
							<option value="Brussels">Brussels</option>
							<option value="Berlin">Berlin</option>
							<option value="Munich">Munich</option>
							<option value="Bern">Bern</option>
							<option value="France">France</option>
							<option value="Belgium">Belgium</option>
							<option value="Germany">Germany</option>
							<option value="Swiss">Swiss</option>
						</select>
						
							<span class="label" style="margin-right: 80px;"  >destination</span>
						 <select class="label ajaxCity" style="margin-top: -5px; width: 150px" name="dest_point">
							<option class="locationName" style="margin-bottom: 10px">name</option>
							<option value="Zurich">Zurich</option>
							<option value="Paris" selected="selected">Paris</option>
							<option value="Rouen">Rouen</option>
							<option value="France">France</option>
							<option value="Nice">Nice</option>
							<option value="Brussels">Brussels</option>
							<option value="Berlin">Berlin</option>
							<option value="Munich">Munich</option>
							<option value="Bern">Bern</option>
							<option value="France">France</option>
							<option value="Belgium">Belgium</option>
							<option value="Germany" >Germany</option>
							<option value="Swiss">Swiss</option>
						</select>
						
							<span class="label" style="margin: 0 40px;">begin</span>
						<input class="datepick label ajaxStart" type="text" name="c_hour" value="start" style="margin-top: -5px; padding: 0px; width: 150px;">
								
		
				</div>
		<div class="accompanyList row">
		
		</div>
			<div style="padding-left: 45%; float: none;" class="calendar-form">
		<input class="btn-more ajaxbtn" type="submit" value="search" style="margin-right: 20%; margin-top: 10px; width: 120px; height: 50px; font-size: medium; float: none;" />
		</div>
		</div>
		
				<div class="accompanyList row">
		</div>
	
	
	
	</div>
</form>


        <section class="results ajax-area" data-tmpl="athleteResults_tmpl">
        <div class="heading">
            <h2>recommend list</h2>
            <ul class="add-links">

            </ul>
        </div>

        <ul class="table2 ajax-content">
            <li>
                    
                    <div class="th col1"> DRIVER </div>
                    <div class="th col2"> DATE</div>
                    <div class="th col2"> CITY </div> 
                    <div class="th col3"> SEAT </div>
                    <div class="th col3"> PRICE </div>
                    <div class="th col4"> SIGN UP </div>
            </li>
            
            <c:forEach items="${recommend}" var="carpool_ListVO">
                <li>

                <div class="td col1">

    <a href = '/carpool/read?c_num=${carpool_ListVO.c_num }'>
<picture class="picture">

<img src="/resources/upload/${carpool_ListVO.u_img }" width="50" height="50" >
<span class="mask"></span>
</picture>
        <div class="area">
            <strong class="name">${carpool_ListVO.u_name } </strong>
        </div>
    </a>
                </div>

                
                
                <div class="td col2">

        <div class="area">
            <strong> ${carpool_ListVO.c_month }, ${carpool_ListVO.c_date }th, ${carpool_ListVO.c_year}
            ${carpool_ListVO.c_hour }:${carpool_ListVO.c_minute }   </strong>
        </div>
                </div>
                
                 <div class="td col2">

        <div class="area">
            <strong>     ${carpool_ListVO.start_point } ->  ${carpool_ListVO.way_point } -> ${carpool_ListVO.dest_point}</strong>
        </div>
                </div>
               


                
                
                
                        <div class="td col3">

        <div class="area">
            <strong> ${carpool_ListVO.c_person} </strong>
        </div>
                </div>        
                
                         <div class="td col3">

        <div class="area">
            <strong> ${carpool_ListVO.c_price}$ </strong>
        </div>
                </div>   
                
                <div class="td col4">


                <div class="area">
                    <ul class="medal-box">

                        <li>
                            <a href="javascript:applyLink('/carpool/request?c_num=${carpool_ListVO.c_num}')" class="btn-calendar">GO</a>
                        </li>

                    </ul>
                </div>
                </div>
    </li>
            </c:forEach>


    

   
        </ul>
    </section>

    <section class="results ajax-area" data-tmpl="athleteResults_tmpl">
        <div class="heading">
            <h2>carpool list</h2>
  
            
            
            <ul class="add-links">

            </ul>
        </div>

        <ul class="table2 ajax-content">
            <li>
                    
                    <div class="th col1"> DRIVER </div>
                    <div class="th col2"> DATE</div>
                    <div class="th col2"> CITY </div> 
                    <div class="th col3"> SEAT </div>
                    <div class="th col3"> PRICE </div>
                    <div class="th col4"> SIGN UP </div>
            </li>
            
            <c:forEach items="${carpoolAll}" var="carpool_ListVO">
                <li>

                <div class="td col1">

    <a href = '/carpool/read?c_num=${carpool_ListVO.c_num }'>
<picture class="picture">

<img src="/resources/upload/${carpool_ListVO.u_img }" width="50" height="50" >
<span class="mask"></span>
</picture>
        <div class="area">
            <strong class="name">${carpool_ListVO.u_name } </strong>
        </div>
    </a>
                </div>

                
                
                <div class="td col2">

        <div class="area">
            <strong> ${carpool_ListVO.c_month }, ${carpool_ListVO.c_date }th, ${carpool_ListVO.c_year}
            ${carpool_ListVO.c_hour }:${carpool_ListVO.c_minute }   </strong>
        </div>
                </div>
                
                 <div class="td col2">

        <div class="area">
            <strong>     ${carpool_ListVO.start_point } ->  ${carpool_ListVO.way_point } -> ${carpool_ListVO.dest_point}</strong>
        </div>
                </div>
               


                
                
                
                        <div class="td col3">

        <div class="area">
            <strong> ${carpool_ListVO.c_person} </strong>
        </div>
                </div>        
                
                         <div class="td col3">

        <div class="area">
            <strong> ${carpool_ListVO.c_price}$ </strong>
        </div>
                </div>   
                
                <div class="td col4">


                <div class="area">
                    <ul class="medal-box">

                        <li>
                            <a href="javascript:applyLink('/carpool/request?c_num=${carpool_ListVO.c_num}')" class="btn-calendar">GO</a>
                        </li>

                    </ul>
                </div>
                </div>
    </li>
            </c:forEach>
        </ul>
    </section>
    

    

    
   
    

<%@ include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>