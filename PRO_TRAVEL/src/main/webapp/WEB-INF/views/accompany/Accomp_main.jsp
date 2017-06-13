<%-- <%@page import="kosta.travel.service.AccompanyService"%>
<%@page import="javax.servlet.jsp.tagext.TryCatchFinally"%>
<%@page import="java.util.HashMap"%>
<%@page import="kosta.travel.domain.AccompanyVO"%>
<%@page import="kosta.travel.persistence.AccompanyDao"%>
<%@page import="kosta.travel.domain.RouteVO"%>
<%@ page import="java.util.*" %> --%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp" %>
<%@include file="../include/accompany_sidebar.jsp" %>


<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>

<html>
<script type="text/javascript" src="http://www.nowarch.com/resources/js/jquery-1.10.2.min.js"></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.18.1/moment.js'></script>
<script src='${pageContext.request.contextPath}/resources/js/accompanyJs/fullcalendar.js'></script>
<script src='${pageContext.request.contextPath}/resources/js/accompanyJs/jquery-ui.min.js'></script>
<link rel='stylesheet' href='/resources/css/accompany/fullcalendar.css' />
<link rel='stylesheet' href='/resources/css/accompany/jquery-ui.theme.min.css' />


<%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/css/carpool_css/city-main-styles.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/carpool_css/carpoolJoin.css" />--%>
<%--  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/carpool_css/carpoolJoin2.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/carpool_css/carpoolJoin3.css" />
 <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/carpool_css/carpoolJoin4.css" />--%>

<%-- <script data-main="/js/page/city" src="/js/lib/bower_components/requirejs/require.js"></script>
 <script type="text/javascript" src="${pageContext.request.contextPath}/JS/carpool_javascript/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/JS/carpool_javascript/carpool_JoinEvent.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/JS/carpool_javascript/carpool_JoinEvent2.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/JS/carpool_javascript/tests.js"></script> --%>
<%--  <script src='${pageContext.request.contextPath}/GoogleAPI/lib/jquery.min.js'></script> --%>


<%-- <script src="${pageContext.request.contextPath}/JS/loginPopup/loginPopup.js"></script> --%>

<head>

 <style>
       #map {
        height: 400px;
        width: 50%;

       }
       #calendar {
        height:600px;
        width: 50%;
       }
		#carpool_map{
		margin-left: 300px;
		}
		#footer{
		height: 30%;
		}

    </style>

</head>

<body>


<div id="contents"  class="city">
    <div class="conts-container">
        <div class="present">
            <div class="tabs-list">
                
          <!--       <ul class="tabs-list">
            <li><a href="main.accompany" class="first-tag active"><span>Accompany</span></a></li>
            <li><a href="enroll" class="accomp_createRoute"><span>여행 일정 등록</span></a></li>     
            <li><a href="list.carpool" data-id="2d8eef384cefda06" class=""><span>동행 검색</span></a></li>
            
		</ul> -->

                <div id="google-ad-sense" style="margin-top:20px;float:left;" data-type="260x260">
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
            
            </div><!-- e//tabs-list -->
<form action="" method="post">	
  	  <div id="carpool_map"></div>
    	<h3 id="carpool_title">추천 동행인</h3>
    	<br>
    	<div id="map"></div>
  </form>
    
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
   
    
      <input id="aaa" type="button" onclick="showAccom()" value="동행 추천 보이기">
      <input id="aaa" type="button" onclick="hideAccom()" value="동행 추천 숨기기"
      	 style="position: absolute,
        top: 10px,
        left: 25%,
        z-index: 5,
        background-color: #fff,
        padding: 5px,
        border: 1px solid #999,
        text-align: center,
        font-family: 'Roboto','sans-serif',
        line-height: 30px,
        padding-left: 10px" >
    </div>
            </div>


<div class="id-card-box" style="width: 100% ;border: black;">
	<form
		action="/accompany/searchPeople"
		class="calendar-form" method="post" role="form">

			<div class="item-list" style="width: 1400px; padding-right: 30px;">
					<div class="row depature" style="font-size: 20px;">
						<span class="label">departure</span>
						 <select class="city" name="city">
							<option class="locationName" style="margin-bottom: 10px">name</option>
						<option value="Zurich">Zurich</option>
<option value="Paris">Paris</option>
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
						
						<span class="label">begin</span> 
						<input type="text" name="sdate" class="label" value="">
						 <div id="datepicker"></div>
						 <!-- <select class="label" name="sdate">
							<option class="start" style="margin-bottom: 10px">date</option>
<option value="17/06/01" selected="selected">17/06/01</option>
<option value="17/06/02">17/06/02</option>
<option value="17/06/03">17/06/03</option>
<option value="17/06/04">17/06/04</option>
<option value="17/06/05">17/06/05</option>
<option value="17/06/06">17/06/06</option>
<option value="17/06/07">17/06/07</option>
<option value="17/06/08">17/06/08</option>
<option value="17/06/09">17/06/09</option>
<option value="17/06/10">17/06/10</option>
<option value="17/06/11">17/06/11</option>
<option value="17/06/12">17/06/12</option>
<option value="17/06/13">17/06/13</option>
<option value="17/06/14">17/06/14</option>
<option value="17/06/15">17/06/15</option>
<option value="17/06/16">17/06/16</option>
<option value="17/06/17">17/06/17</option>
<option value="17/06/18">17/06/18</option>
<option value="17/06/19">17/06/19</option>
<option value="17/06/20">17/06/20</option>
<option value="17/06/21">17/06/21</option>
<option value="17/06/22">17/06/22</option>
<option value="17/06/23">17/06/23</option>
<option value="17/06/24">17/06/24</option>
<option value="17/06/25">17/06/25</option>
<option value="17/06/26">17/06/26</option>
<option value="17/06/27">17/06/27</option>
<option value="17/06/28">17/06/28</option>
<option value="17/06/29">17/06/29</option>
<option value="17/06/30">17/06/30</option>
<option value="17/06/31">17/06/31</option>

							
							
						</select>  -->
						
						<span class="label">end</span> 
						<select  class="label" name="edate">
							<option class="destination">date</option>
							<option value="17/06/01"></option>
<option value="17/06/01">17/06/01</option>
<option value="17/06/02">17/06/02</option>
<option value="17/06/03">17/06/03</option>
<option value="17/06/04">17/06/04</option>
<option value="17/06/05">17/06/05</option>
<option value="17/06/06">17/06/06</option>
<option value="17/06/07">17/06/07</option>
<option value="17/06/08">17/06/08</option>
<option value="17/06/09">17/06/09</option>
<option value="17/06/10">17/06/10</option>
<option value="17/06/11">17/06/11</option>
<option value="17/06/12">17/06/12</option>
<option value="17/06/13">17/06/13</option>
<option value="17/06/14">17/06/14</option>
<option value="17/06/15" selected="selected">17/06/15</option>
<option value="17/06/16">17/06/16</option>
<option value="17/06/17">17/06/17</option>
<option value="17/06/18">17/06/18</option>
<option value="17/06/19">17/06/19</option>
<option value="17/06/20">17/06/20</option>
<option value="17/06/21">17/06/21</option>
<option value="17/06/22">17/06/22</option>
<option value="17/06/23">17/06/23</option>
<option value="17/06/24">17/06/24</option>
<option value="17/06/25">17/06/25</option>
<option value="17/06/26">17/06/26</option>
<option value="17/06/27">17/06/27</option>
<option value="17/06/28">17/06/28</option>
<option value="17/06/29">17/06/29</option>
<option value="17/06/30">17/06/30</option>
<option value="17/06/31">17/06/31</option>

							
							
							
						</select>
							<img class="appendcp" src="../resources/images/accompany/plus.png" width="30" height="30">
					</div>
					<!-- <div class="row" style="font-size: 20px;">
						<span class="label">Date</span> 
						<select class="day">
							<option value="day">day</option>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							<option value="6">6</option>
							<option value="7">7</option>
							<option value="8">8</option>
							<option value="9">9</option>
							<option value="10">10</option>
							<option value="11">11</option>
							<option value="12">12</option>
							<option value="13">13</option>
							<option value="14">14</option>
							<option value="15">15</option>
							<option value="16">16</option>
							<option value="17">17</option>
							<option value="18">18</option>
							<option value="19">19</option>
							<option value="20">20</option>
							<option value="21">21</option>
							<option value="22">22</option>
							<option value="23">23</option>
							<option value="24">24</option>
							<option value="25">25</option>
							<option value="26">26</option>
							<option value="27">27</option>
							<option value="28">28</option>
							<option value="29">29</option>
							<option value="30">30</option>
							<option value="31">31</option>
						</select>
						<select class="month">
							<option value="month">month</option>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							<option value="6">6</option>
							<option value="7">7</option>
							<option value="8">8</option>
							<option value="9">9</option>
							<option value="10">10</option>
							<option value="11">11</option>
							<option value="12">12</option>
						</select>
						<select class="year">
							<option value="year">year</option>
							<option value="2017">2017</option>
							<option value="2018">2018</option>
							<option value="2019">2019</option>
						</select> 
					</div> -->
					

				</div>
		<div>
		<input class="btn-more" type="submit" value="search" style="margin-right: 50%; margin-top: 10px; width: 120px; height: 50px;" />
		</div>
	</form>
	
	</div>
<script type="text/javascript">
var ct = 0;

 $(document).on('click','.appendcp',function() {
	if(ct <= 0){
	$(this).parent('div').append('<div class="row destination" style="font-size: 20px;"><span class="label">destination</span><select class="label"><option class="locationName" style="margin-bottom: 10px">name</option></select> <span class="label">begin</span> <select class="label"><option class="start" style="margin-bottom: 10px">date</option></select> <span class="label">end</span> <select  class="label"><option class="destination">date</option></select><img class="appendcp" src="../resources/images/accompany/plus.png" width="30" height="30"><img class="appendcm" src="../resources/images/accompany/miners.png" width="30" height="30"></div>');
	}else{
	$('div.destination').before('<div class="row stops" style="font-size: 20px;"><span class="label">stops</span><select class="label"><option class="locationName" style="margin-bottom: 10px">name</option></select> <span class="label">begin</span> <select class="label"><option class="start" style="margin-bottom: 10px">date</option></select> <span class="label">end</span> <select  class="label"><option class="destination">date</option></select><img class="appendcp" src="../resources/images/accompany/plus.png" width="30" height="30"><img class="appendcm" src="../resources/images/accompany/miners.png" width="30" height="30"></div>');
	}
	
	console.log("plus");
	ct += 1;
});
 
 $(document).on('click','.appendcm',function() {
 		console.log($(this).parent('div').attr('class'));
 		ct -= 1;
		$(this).parent('div').remove();
		
		
		console.log("minuse");
});
</script>


<%@include file="../include/footer.jsp" %>
</body>
</html>