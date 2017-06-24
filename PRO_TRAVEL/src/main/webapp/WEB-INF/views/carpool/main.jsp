<%@page import="org.jsoup.select.Elements"%>
<%@page import="org.jsoup.Jsoup"%>
<%@page import="org.jsoup.nodes.Document"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/views/include/header.jsp"%>
<%@ include file="/WEB-INF/views/include/carpool_sidebar.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="stylesheet" href="http://www.alamo.co.kr/common/css/alamo_style.css?v=20170405" type="text/css" />
<link href="http://www.alamo.co.kr/common/css/reserv.css?v=20160621" rel="stylesheet" type="text/css">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">

function detailForm(u_id){
	 var popupX = (window.screen.width / 2) - (800 / 2);
	   var popupY= (window.screen.height /2) - (500 / 2);
	    window.open('about:blank','popup_window','width=350, height=250, left='+popupX+', top='+popupY);
	    var wantForm = 'detailForm'+u_id;
 	    var frm =document.getElementById(wantForm);
	    frm.submit(); 
	}
function applyLink(URL){
	if(confirm("신청하시겠습니까?") == true){
		location.href=URL;
		alert('신청되었습니다');

	}
	else{
		alert('Cancle');
	}
}
// 클릭하면 해당 div 로 이동...
$(function(){
	var offset = $(".web_parser").offset();
	$("#rental").on("click", function(){
		 $('html, body').animate({scrollTop : offset.top}, 400);
	});
	
	var offset2 = $(".list_view").offset();
	$("#waiting_carpool").on("click", function(){
		alert(offset2);
		$('html, body').animate({scrollTop : offset2.top}, 400);
	})
});
</script>

<script type="text/javascript">
 $(function(){
	var count = 2;
	var send = "count=" + count;
	$(".btn-more a:nth-child(1)").on("click", function(){
	$.ajax({
		url: "${pageContext.request.contextPath}/carpool/more_register",
		type: "post",
		data: send,
		success: function sendHandler(data) {
			location.reload();
		 }
		});
	});
	});
	
 $(function(){
	var count = 2;
	var send = "count=" + count;
	$(".btn-more a:nth-child(2)").on("click", function(){
	$.ajax({
		url: "${pageContext.request.contextPath}/carpool/fold_register",
		type: "post",
		data: send,
		success: function sendHandler(data) {
			location.reload();
		 }
		});
	});
	});

 	
 	$(function(){
 		 $(".btn-more a:nth-child(3)").on("click", function(){
 			 location.href= "${pageContext.request.contextPath}/carpool/listAll";
 		 });
 	});
</script>

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
<body onload = "startTime()">
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
            <h2>WATING CARPOOL</h2>
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
            
            <c:forEach items="${list}" var="carpool_ListVO" end="${count }">
                <li>

                <div class="td col1">
<%-- onclick="detailForm(${listMessage.m_num});" --%>

 <form id="detailForm${carpool_ListVO.u_id }" name="detailForm${carpool_ListVO.u_id }" method="post" action="/carpool/user?u_id=${carpool_ListVO.u_id }" target="popup_window">
    <a onclick = "detailForm(${carpool_ListVO.u_id });">
    
<picture class="picture">

<img src="/resources/upload/${carpool_ListVO.u_img }" width="50" height="50" >
<span class="mask"></span>
</picture>
        <div class="area">
            <strong class="name">${carpool_ListVO.u_name } </strong>
        </div>
  </a> </form>
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
                <span class="btn-more" >
                 <a style="cursor: pointer;">More</a>   
                 <a style="cursor: pointer;">Fold</a>  
                 <a style="cursor: pointer;">Go List Page</a>  
                </span>
    </section>
   	<div>
   	
   	
<script type="text/javascript">
	try {
		Document doc = Jsoup.connect("http://www.alamo.co.kr/rent/carInfo.php?vendor=AL").get();
		Elements contents = doc.select("div.body_contents");
		String result = contents.html();
		request.setAttribute("result", result);
	} catch (Exception e) {
		e.printStackTrace();
	}
	</script>
 <div class=web_parser>${result }</div> 
	</div>
</div>

	<%@ include file="/WEB-INF/views/include/footer.jsp"%>
</body>
</html>