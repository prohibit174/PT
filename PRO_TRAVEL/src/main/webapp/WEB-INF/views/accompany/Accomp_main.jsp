<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp" %>

<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>

<html>
<script src='https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.18.1/moment.js'></script>
<script src='${pageContext.request.contextPath}/resources/js/accompanyJs/fullcalendar.js'></script>
<script src='${pageContext.request.contextPath}/resources/js/accompanyJs/jquery-ui.min.js'></script>
<link rel='stylesheet' href='/resources/css/accompany/jquery-ui.min.css' />

<head>

 <style>
       #map {
        height: 400px;
        width: 50%;

       }
	/* 	#footer{
		height: 30%;
		}
 */
    </style>

</head>

<body>
<%@include file="../include/accompany_sidebar.jsp" %>

<div id="contents" class="city" style="margin-top: -200px;">
    <div class="conts-container">
        <div class="present">
           <div class="tabs-list"> 
                
                <div id="google-ad-sense" style="margin-top:228px; float:left; margin-left: -212px;" data-type="260x260">
                  <script type="text/javascript">
                    google_ad_client = "ca-pub-9419115827273897";
                    google_ad_slot = "3548612763";
                    google_ad_width = 260;
                    google_ad_height = 260;
                  </script>
                  <!-- search-260x260 -->
                  
                  <script type="text/javascript"
                          src="//pagead2.googlesyndication.com/pagead/show_ads.js">
                  </script>
                </div>
            
            </div> <!-- //tabs-list  -->
  	<!--   <div id="carpool_map"></div> -->
  	
    	<h3 id="carpool_title" style="margin-top: -80px;">My Trip Plan With Recomanding Other traveler</h3>
    	<br>
    	<div id="map" style="margin-top: 0px;"></div>
    
    <script type="text/javascript">
    var index=0;
    var tp_num=[];
    var region=[];
    var longi=[];
    var lati=[];
    var id=[];
    var travelDate=[];
    var map;
    var marker=[];
    var markerIndex=0;
    var latLngList=[];
    
    </script>
    <c:forEach var="accompany" items="${list}">
    
                  <c:set var="tp_num" value="${accompany.tp_num}"></c:set>
                  <c:set var="cor_region" value="${accompany.cor_region}"></c:set>
                  <c:set var="cor_longi" value="${accompany.cor_longi}"></c:set>
                  <c:set var="cor_lati" value="${accompany.cor_lati}"></c:set>
                  <c:set var="cor_u_id" value="${accompany.u_id}"></c:set>
                  <c:set var="tp_date" value="${accompany.tp_date}"></c:set>
                  <script type="text/javascript">
 				
                    tp_num[index]="${tp_num}";
 					region[index]="${cor_region}";
 					longi[index]="${cor_longi}";
 					lati[index]="${cor_lati}";
 					id[index]="${cor_u_id}";

 				 	var temp;
 					temp=String("${tp_date}");
 				 	travelDate[index]=temp.substr(2,8);
 				 	
 	index++;
 	</script>
 	
 </c:forEach>
 
<script type="text/javascript">
    var accom_index=0;
    var accom_tp_num=[];
    var accom_region=[];
    var accom_longi=[];
    var accom_lati=[];
    var accom_id=[];
    var accom_tp_date=[];
    
    var accom_name=[];
    var accom_birth=[];
    var accom_address=[];
    var accom_job=[];
    var accom_lang=[];
    var accom_img=[];
    var accom_religion=[];
    var accom_license=[];
    var accom_u_style=[];
    var accom_sex=[];
       
    var infowindow=[];
    
    </script>
    
    
    <c:forEach var="accompany" items="${allAccompanyList}">
    
                  <c:set var="tp_num" value="${accompany.tp_num}"></c:set>
                  <c:set var="cor_region" value="${accompany.cor_region}"></c:set>
                  <c:set var="cor_longi" value="${accompany.cor_longi}"></c:set>
                  <c:set var="cor_lati" value="${accompany.cor_lati}"></c:set>
                  <c:set var="cor_u_id" value="${accompany.u_id}"></c:set>
                  <c:set var="tp_date" value="${accompany.tp_date}"></c:set>
                  
                  <c:set var="u_name" value="${accompany.u_name}"></c:set>
                  <c:set var="u_birth" value="${accompany.u_birth}"></c:set>
                  <c:set var="u_address" value="${accompany.u_address}"></c:set>
                  <c:set var="u_job" value="${accompany.u_job}"></c:set>
                  <c:set var="u_lang" value="${accompany.u_lang}"></c:set>
                  <c:set var="u_img" value="${accompany.u_img}"></c:set>
                  <c:set var="u_religion" value="${accompany.u_religion}"></c:set>
                  <c:set var="u_license" value="${accompany.u_license}"></c:set>
                  <c:set var="u_style" value="${accompany.u_style}"></c:set>
                  <c:set var="u_sex" value="${accompany.u_sex}"></c:set>
                  
                  
                  
                  <script type="text/javascript">
 				
                  accom_tp_num[accom_index]="${tp_num}";
                  accom_region[accom_index]="${cor_region}";
                  accom_longi[accom_index]="${cor_longi}";
                  accom_lati[accom_index]="${cor_lati}";
                  accom_id[accom_index]="${cor_u_id}";
                  
                  accom_name[accom_index]="${u_name}";
                  accom_birth[accom_index]="${u_birth}";
                  accom_address[accom_index]="${u_address}";
                  accom_job[accom_index]="${u_job}";
                  accom_lang[accom_index]="${u_lang}";
                  accom_img[accom_index]="${u_img}";
                  accom_religion[accom_index]="${u_religion}";
                  accom_license[accom_index]="${u_license}";
                  accom_u_style[accom_index]="${u_style}";
                  accom_sex[accom_index]="${u_sex}";
                  
 				 	var accom_temp;
 				 	accom_temp=String("${tp_date}");
 				 	accom_tp_date[accom_index]=accom_temp.substr(2,8);
 				 	
 				 	accom_index++;
 		        	
 	</script>
 </c:forEach>
 
 
    
     
     
    
    <script>
    function showRightAccom(rightIndex, markerIndex){
    	console.log('Index : '+ rightIndex);
    	console.log('accom_index : '+ accom_index);
    	
    	var index=rightIndex+1;
    	var lati=accom_lati[rightIndex]; // lati value to find 
    	var longi=accom_longi[rightIndex];// langi value to find
    	var isFind=false;
 
    	for(;index<accom_index;index++)
    		{	
    		console.log('for문'+' index : '+index+ ' /  lati : '+accom_lati[index]);
        	console.log('accom_index : '+ accom_index);
        	
        	var totalCount=0;
        	var currentCount=0;
        	
        	for(i=0;i<accom_index;i++){
        		if(accom_lati[i]==lati && accom_longi[i]==longi)
        			totalCount++;
        	}
        	
        	for(i=0;i<=index;i++){
        		if(accom_lati[i]==lati && accom_longi[i]==longi)
        			currentCount++;		
        	}
        	
        	if(accom_lati[index]==lati && accom_longi[index]==longi && isFind==false)
    				{
    				 var tmpdate=new Date();
    	     		 thisYear=tmpdate.getFullYear();
    	     		 var age=parseInt(thisYear)-parseInt(accom_birth[index].substr(0,4));
    	     		 
    	     		 var gender;
    	     		 if( accom_sex[index]=='man')
    	     			 gender="<img src='../resources/images/accompany/man.png' width='10' height='10'>"
    	     			 else
    	     				gender="<img src='/resources/images/accompany/woman.png' width='10' height='10'>"
    	     				
    					var newContent=
        	    		     gender
         	    		     +accom_name[index]+'&nbsp'
         	    		  	 +'<br>'
         	    		     +'<img src="/resources/images/accompany/cal.png" width="10" height="10">'
             	    		 +accom_tp_date[index]+'<br>'
             	    	     +'<img src="/resources/images/accompany/age.png" width="10" height="10">'
             	    		 +age+'살'+'<br>'
             	    		 + "<button onclick='showLeftAccom("+index+","+markerIndex+" )' style='font-size:8px'>&lt</button>"  
             	    		 +'<button style="font-size:8px">'+currentCount+'/'+totalCount+'</button>'
             	    		 + "<button onclick='showRightAccom("+index+","+markerIndex+" )' style='font-size:8px'>&gt</button>"  
             	    		 infowindow[markerIndex].close();
             	    		 infowindow[markerIndex] = new google.maps.InfoWindow({
             	    			 content:newContent/* newContent */
             	    		  });
       	    			
       	    		//alert(infowindow[markerIndex].content);
             	    infowindow[markerIndex].open(map, marker[markerIndex]);
             	   		isFind=true;
    				}
    		}
    	}
    
    
function showLeftAccom(leftIndex, markerIndex){
    	
    	console.log('Index : '+ leftIndex);
    	console.log('accom_index : '+ accom_index);
    	
    	var index=leftIndex-1;
    	var lati=accom_lati[leftIndex]; // lati value to find 
    	var longi=accom_longi[leftIndex];// langi value to find
    	var isFind=false;
 
    	for(;0<=index;index--)
    		{	
    		console.log('for문'+' index : '+index+ ' /  lati : '+accom_lati[index]);
        	console.log('accom_index : '+ accom_index);
        	
        	var totalCount=0;
        	var currentCount=0;
        	
        	for(i=0;i<accom_index;i++){
        		if(accom_lati[i]==lati && accom_longi[i]==longi)
        			totalCount++;
        	}
        	
        	for(i=0;i<=index;i++){
        		if(accom_lati[i]==lati && accom_longi[i]==longi)
        			currentCount++;		
        	}
        	if(accom_lati[index]==lati && accom_longi[index]==longi && isFind==false)
    				{
    				 var tmpdate=new Date();
    	     		 thisYear=tmpdate.getFullYear();
    	     		 var age=parseInt(thisYear)-parseInt(accom_birth[index].substr(0,4));
    	     		 
    	     		 var gender;
    	     		 if( accom_sex[index]=='man')
    	     			 gender="<img src='/resources/images/accompany/man.png' width='10' height='10'>"
    	     			 else
    	     				gender="<img src='/resources/images/accompany/woman.png' width='10' height='10'>"
    	     				
    					var newContent=
        	    		     gender
         	    		     +accom_name[index]+'&nbsp'
         	    		  	 +'<br>'
         	    		     +'<img src="/resources/images/accompany/cal.png" width="10" height="10">'
             	    		 +accom_tp_date[index]+'<br>'
             	    	     +'<img src="/resources/images/accompany/age.png" width="10" height="10">'
             	    		 +age+'살'+'<br>'
             	    		 + "<button onclick='showLeftAccom("+index+","+markerIndex+" )' style='font-size:8px'>&lt</button>"  
             	    		 +'<button style="font-size:8px">'+currentCount+'/'+totalCount+'</button>'
             	    		 + "<button onclick='showRightAccom("+index+","+markerIndex+" )' style='font-size:8px'>&gt</button>"  
             	    		 infowindow[markerIndex].close();
             	    		 infowindow[markerIndex] = new google.maps.InfoWindow({
             	    			 content:newContent/* newContent */
             	    		  });
       	    			
       	    		//alert(infowindow[markerIndex].content);
             	    infowindow[markerIndex].open(map, marker[markerIndex]);
             	   		isFind=true;
    				}
    		}
    	}
    	
      function initMap() {
        var paris = {lat: 48.856667, lng: 2.350833};
        map = new google.maps.Map(document.getElementById('map'), {
          zoom: 5,
          center: paris
        });
        
        
        
        function containsLatlng(latlng){
        	if(latLngList==null)
				return false; 
        	
         	for(x=0;x<latLngList.length;x++)
        		{	
         			if(latlng.lat==latLngList[x].lat &&latlng.lng==latLngList[x].lng)
         			{
         				return true; 
         			}
        		}
        	return false; 
        }
        
        for(i=0;i< index  ;i++)
        	{
        		
        		 var latlng={lat: Number(lati[i]), lng: Number(longi[i])};
        		 if(containsLatlng(latlng)==false)//if the lat,lng which want to add marker already exist in latLnglist, dont add a marker
        		 {	
        			 latLngList.push(latlng);
        		 
        		 /* alert('latlng.lat : '+ latlng.lat+ ' / '+ 'longi[i] : '+longi[i]); */ 
        		 marker[markerIndex] = new google.maps.Marker({  
                 position: latlng,
                 map: map,
                 title: region[markerIndex],
                 hasInfoWindow : false// one marker, one InfoWindow. So If a marker has window, it is prohibited to make Infowindow
        		/*  date : travelDate[i] */
               });
        		 marker[markerIndex].setMap(map);
        		 
        		 for(j=0;j<accom_index ;j++)
      	    	{
        			 if(i==0)
        			 console.log(accom_tp_date[j]+'의 '+accom_region[j]+'동행은 ' +accom_name[j]+' / index : '+j);
        			 
        			    var totalCount=0;        	        	
        	        	for(x=0;x<accom_index;x++){
        	        		if(latlng.lat==accom_lati[x] && latlng.lng==accom_longi[x])
        	        			totalCount++;
        	        	}        	        	
        	        	
        			 
        	     	 if(latlng.lat==accom_lati[j] && latlng.lng==accom_longi[j] && marker[markerIndex].hasInfoWindow==false)
        	    	 {
        	     		 
        	     		 var tmpdate=new Date();
        	     		 thisYear=tmpdate.getFullYear();
        	     		 var age=parseInt(thisYear)-parseInt(accom_birth[j].substr(0,4));
        	     		 
        	     		 var gender;
        	     		 if( accom_sex[j]=='man')
        	     			 gender="<img src='/resources/images/accompany/man.png' width='10' height='10'>"
        	     			 else
        	     				gender="<img src='/resources/images/accompany/woman.png' width='10' height='10'>"
        	     			 
        	    		 infowindow[markerIndex] = new google.maps.InfoWindow({
     	    		    content: 
     	    		     gender
     	    		     +accom_name[j]+'&nbsp'
     	    		   +'<br>'
     	    		    +'<img src="/resources/images/accompany/cal.png" width="10" height="10">'
         	    		 +accom_tp_date[j]+'<br>'
         	    	     +'<img src="/resources/images/accompany/age.png" width="10" height="10">'
         	    		 +age+'살'+'<br>'
         	    		 + "<button onclick='showLeftAccom("+j+","+markerIndex+" )' style='font-size:8px'>&lt</button>"  
         	    		 +'<button style="font-size:8px">'+'1'+'/'+totalCount+'</button>'
         	    		 + "<button onclick='showRightAccom("+j+","+markerIndex+" )' style='font-size:8px'>&gt</button>"  
/*          	    		+ "<button onclick='showRightAccom(1,0)' style='font-size:8px'>&gt</button>"
 *//*          	    		 +'<button onclick=\"showRightAccom('j','markerIndex')\" style="font-size:8px">&lt</button>'
 */

   	    				  });
           			  	infowindow[markerIndex].open(map, marker[markerIndex]);
           				marker[markerIndex].hasInfoWindow=true;
        	    	 }
      	    	} 
        		
        		 createLine(latLngList, map);
        		 markerIndex++;
	     		 /* alert(parseInt(thisYear)-parseInt(accom_tp_date[j].substr(0,4))); */
        		 }
        	}

           
        	
       // alert(parseInt(thisYear));
      // alert(parseInt(accom_birth[0].substr(0,4)));
       // alert(parseInt(thisYear)-parseInt(accom_birth[0].substr(0,4)));
        //alert(accom_tp_date[0].substr(0,4));
      	  function createLine(latLngList, map){ 
            var movingPath = new google.maps.Polyline({
             path: latLngList,
             geodesic: true,
             strokeColor: '#000000',
             strokeOpacity: 10.0,
             strokeWeight: 1
           });
            if(latLngList.length>1){
            movingPath.setMap(map);
            }
         }
      	  
      }
      
      function hideAccom(){
    	   	 for(i=0;i<markerIndex;i++){
    	   		 if(typeof infowindow[i] == 'undefined'){
    	   			 continue;}
    	   	/* 	 console.log(markerIndex);
    	   		 console.log(i+"번째"+typeof infowindow[i]); */
    	   		  infowindow[i].close();  
    	   		
    	   	 }
    	   	 }

    	   function showAccom(){
    	  	 for(i=0;i<markerIndex;i++){
    	  		 if(typeof infowindow[i] == 'undefined'){
    	   			 continue;}
    	  		 infowindow[i].open(map, marker[i]);
    	  	 }
    	  }
    </script> 
    
    
    
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBnrWQ2SHvedNrvdozheYo32pHwCbuvPgs&callback=initMap">
    </script>
   
	<div style="margin-left: 50.5%;">
      <input id="aaa" type="button" onclick="showAccom()" value="recommend show">
      <input id="aaa" type="button" onclick="hideAccom()" value="recommend hide" style="position: absolute,
        top: 10px,
        left: 25%,
        z-index: 5,
        background-color: #fff,
        padding: 5px,
        border: 1px solid #999,
        text-align: center,
        font-family: 'Roboto','sans-serif',
        line-height: 30px,
        padding-left: 10px">
  	</div>
    </div>
            </div>
            
<div style="margin-top: 50px; margin-left: 17px">
<h1 style="font-size: large;">Search Other Traveler</h1>
</div>

<form action="/accompany/cal" method="post" role="form" class="ajaxform">
<div class="id-card-box" style="width: 100% ;border: black;">

			<div class="item-list" style="width: 1400px; padding-right: 30px;">
					<div style="font-size: 20px;">
							<span class="label" style="margin-right: 80px;"  >departure</span>
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
<option value="Germany">Germany</option>
<option value="Swiss" selected="selected">Swiss</option>
						</select>
						
						<span class="label" style="margin: 0 40px;">begin</span>
						<input class="datepick label ajaxStart" type="text" name="trav[0].sdate" value="start" style="margin-top: -5px; padding: 0px; width: 150px;">
						<span class="label" style="margin: 0 40px;">end</span>
						<input class="datepick label ajaxEnd" type="text" name="trav[0].edate" value="end" style="margin-top: -5px; padding: 0px; width: 150px;">
							<img class="appendcp" src="../resources/images/accompany/plus.png" width="30" height="30" style="margin-top: -5px;">
				</div>
		<div class="accompanyList row">
		</div>
		<div style="padding-left: 45%; float: none;" class="calendar-form">
		
		<input class="btn-more ajaxbtn" type="submit" value="search" style="margin-right: 20%; margin-top: 10px; width: 120px; height: 50px; font-size: medium; float: none;" />
		</div>
		</div>
	
	
	
	</div>
</form>

<script type="text/javascript">
var city = [];
var sdate = [];
var edate = [];
var ct = 0;

 $(document).on('click','.appendcp',function() {
	if(ct <= 0){
		ct ++;
		$(this).parent('div')
		.append('<div class="row destination" style="font-size: 20px;">'+
		'<span class="label" style="margin-right: 80px;">destination</span>'+
		'<select class="label ajaxCity" style="margin-top: -5px; width: 150px" name="trav['+
		ct+
		'].city"><option class="locationName" style="margin-bottom: 10px">name</option>'+
		'<option value="Zurich">Zurich</option><option value="France">France</option>'+
		'<option value="Nice">Nice</option><option value="Brussels">Brussels</option>'+
		'<option value="Berlin">Berlin</option><option value="Munich">Munich</option>'+
		'<option value="Bern">Bern</option><option value="France">France</option>'+
		'<option value="Belgium">Belgium</option><option value="Germany">Germany</option>'+
		'<option value="Swiss" selected="selected">Swiss</option></select>'+
		'<span class="label" style="margin: 0 40px;">begin</span>'+
		'<input class="datepick label ajaxStart" type="text" name="trav['+
		ct+
		'].sdate" value="start" style="margin-top: -5px; padding: 0px; width: 150px;"><span class="label" style="margin: 0 40px;">end</span>'+
		'<input class="datepick label ajaxEnd" type="text"  name="trav['+
		ct+
		'].edate" value="end" style="margin-top: -5px; padding: 0px; width: 150px;">'+
		'<img class="appendcp" src="../resources/images/accompany/plus.png" width="30" height="30" style="margin-top: -5px;">'+
		'<img class="appendcm" src="../resources/images/accompany/miners.png" width="30" height="30" style="margin-top: -5px;"></div>');
	}else{
		ct ++;
	$('div.destination')
	.before('<div class="row stops" style="font-size: 20px; padding-bottom: 0px;">'+
	'<span class="label" style="margin-right: 80px;">stops</span>'+
	'<select class="label ajaxCity" style="margin-top: -5px; width: 150px" name="trav['+
	ct+
	'].city"><option class="locationName" style="margin-bottom: 10px">name</option>'+
	'<option value="Zurich">Zurich</option><option value="France">France</option>'+
	'<option value="Nice">Nice</option><option value="Brussels">Brussels</option>'+
	'<option value="Berlin">Berlin</option><option value="Munich">Munich</option>'+
	'<option value="Bern">Bern</option><option value="France">France</option>'+
	'<option value="Belgium">Belgium</option><option value="Germany">Germany</option>'+
	'<option value="Swiss" selected="selected">Swiss</option></select>'+
	'<span class="label" style="margin: 0 40px;">begin</span>'+
	'<input class="datepick label ajaxStart" type="text" name="trav['+
	ct+
	'].sdate" value="start" style="margin-top: -5px; padding: 0px; width: 150px;">'+
	'<span class="label" style="margin: 0 40px;">end</span>'+
	'<input class="datepick label ajaxEnd" type="text"  name="trav['+
	ct+
	'].edate" value="end" style="margin-top: -5px; padding: 0px; width: 150px;">'+
	'<img class="appendcp" src="../resources/images/accompany/plus.png" width="30" height="30" style="margin-top: -5px;">'+
	'<img class="appendcm" src="../resources/images/accompany/miners.png" width="30" height="30" style="margin-top: -5px;"></div>');
	}
	
	console.log("plus and ct value = "+ct);
});
 
 $(document).on('click','.appendcm',function() {
 		console.log($(this).parent('div.row').attr('class'));
 		ct -= 1;
		$(this).parent('div.row').remove();
		
		
		console.log("minuse and ct value = "+ct);
});

$('body').on('focus','.datepick', function(){
    $(this).datepicker({
    	changeYear : true,
    	changeMonth : true,
    	dateFormat : "yy/mm/dd",
   		 });
    });

    var frm = $('.ajaxform');

    frm.submit(function (e) {
        e.preventDefault();

        $.ajax({
            type: frm.attr('method'),
            url: frm.attr('action'),
            data: frm.serialize(),
            success : function (data) {
            	var eachCounter = 0;
            	var htmlText = '<section class="results ajax-area" data-tmpl="athleteResults_tmpl">';
            	htmlText += '<div class="heading">';
            	htmlText += '<h2>Other Traveler</h2>';
            	htmlText += '</div>';
            	htmlText += '<ul class="table2 ajax-content">';
            	htmlText += '<li>';
            		htmlText += '<div class="th col1"> Number </div>';
        				htmlText += '<div class="th col4"> Join </div>';
        					htmlText += '<div class="th col4"> Date </div>';
        						htmlText += '<div class="th col4"> Place </div>';
        							htmlText += '<div class="th col4"> Birth </div>';
        								htmlText += '<div class="th col4"> Name </div>'; 
        									htmlText += '<div class="th col4"> Profile </div>';
            									htmlText += '</li>';
            								

            	$(data).each(function(){
        		htmlText += '<li>';
            		htmlText += '<div class="th col1">'+(eachCounter+1)+'</div>';
        				htmlText += '<div class="th col4"><a href=""> Join </a></div>';
        					htmlText += '<div class="th col4">'+data[eachCounter].tp_date+'</div>';
        						htmlText += '<div class="th col4">'+data[eachCounter].cor_region+'</div>';
        							htmlText += '<div class="th col4">'+data[eachCounter].u_birth+'</div>';
        								htmlText += '<div class="th col4">'+data[eachCounter].u_name+'</div>'; 
        									htmlText += '<div class="th col4"><a href=""> Profile </a></div>';
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
    
</script>

</body>
<%@include file="../include/footer.jsp" %>
</html>