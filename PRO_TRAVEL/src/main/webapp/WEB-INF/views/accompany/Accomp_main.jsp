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
   /*    #footer{
      height: 30%;
      }
 */
.results-form{
    margin-right: 550px;
}

input[type="button"] {
      float:right;
      width:110px;
      height:45px;
      border:2px solid #e62644;
      font-size:14px;
      line-height:16px;
      color:#e62644;
      outline:none;
      cursor:pointer;
      background:none;
      padding:0;
      margin:10px 0 0 10px;
      font-weight:bold;
   }
    input[type="button"]:hover {
      border:2px solid #0081c8;
      background-color: #0081c8;
      color:#fff;
    }
    
input[type="submit"] {
  float: right;
  width: 110px;
  height: 45px;
  border: 2px solid #acacac;
  font-size: 14px;
  line-height: 16px;
  color: #959595;
  outline: none;
  cursor: pointer;
  background: none;
  padding: 0;
  margin: 10px 0 0 10px;
  font-weight: bold; }
input[type="submit"]:hover {
  border: 2px solid #0081c8;
  background-color: #0081c8;
  color: #fff; }
    
    </style>

</head>

<body>
<%@include file="../include/accompany_sidebar.jsp" %>

<div id="contents" class="city" style="margin-top: -265px;">
    <div class="conts-container">
        <div class="present">
           <div class="tabs-list"> 
             
            
            </div> <!-- //tabs-list  -->
     <!--   <div id="carpool_map"></div> -->
     
       <h2 id="carpool_title" style="margin-top: -80px;margin-left: 150px;padding-left: 105px;border-left-width: 50px; font-size: x-large; ">   My Trip Plan With Recomanding Other traveler</h2>
       <br>
       <div id="map" style="margin-top: 0px; left: 30px;"></div>
    
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
                           +age+'years old'+'<br>'
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
                           +age+'years old'+'<br>'
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
                 icon:"http://www.stubbyplanner.com/img_v8/selectcityICON_red.png",
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
                       +age+'years old'+'<br>'
                       + "<button onclick='showLeftAccom("+j+","+markerIndex+" )' style='font-size:8px'>&lt</button>"  
                       +'<button style="font-size:8px">'+'1'+'/'+totalCount+'</button>'
                       + "<button onclick='showRightAccom("+j+","+markerIndex+" )' style='font-size:8px'>&gt</button>"  
/*                       + "<button onclick='showRightAccom(1,0)' style='font-size:8px'>&gt</button>"
 *//*                        +'<button onclick=\"showRightAccom('j','markerIndex')\" style="font-size:8px">&lt</button>'
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
             /*     console.log(markerIndex);
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
	

	   
  <!--  <div style="margin-left: 50.5%;">
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
     </div> -->
         <div class="tab-section" style="padding-right: 640px";>
                                <div class="row">
                                       <input type="hidden" name="json" value="" id="json">
                                          <input type="submit" value="Show" onclick="showAccom()">
                                   <input type="button" value="Hide" onclick="hideAccom()">
                                

                                </div>
                        </div>
                        <br><br><br><br><br><br>
    </div>
       
            </div>
            	
	
</body>
<%@include file="../include/footer.jsp" %>
</html>