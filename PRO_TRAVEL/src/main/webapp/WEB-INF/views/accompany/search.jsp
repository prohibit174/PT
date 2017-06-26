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
        width: 65%;

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
              <script>
              
              document.styleSheets[0].addRule('.col4', 'float: left !important;');
              document.styleSheets[1].addRule('.th', 'text-align: center;');
              
       var marker =[];
       latLngList = [];
       var allEvent=[];
       var jsonEncode;
       var obj;
       var map;
       var cal =[];
       var movingPath = [];
       var c = 0;
       
       /* added variables when the number of marker added   */
       var cor_name=[];//region name from DB
      var cor_lati=[];//cor_lati from DB
      var cor_longi=[];//cor_longi from DB
      var cor_zoom_level=[];//zoom_level from DB
      var cor_index=0;//count of cordinates from DB
      
      var textbox_cityname=[];
      var index_textbox_cityname=0;
      function textClick(i)
      {
    	  index_textbox_cityname=i;
    	  console.log('id : ' +i);
      }
         </script>
         
         
 <c:forEach var="cordinates" items="${getCordinates}">

               <c:set var="cor_name" value="${cordinates.cor_region}"></c:set>
               <c:set var="cor_longi" value="${cordinates.cor_longi}"></c:set>
               <c:set var="cor_lati" value="${cordinates.cor_lati}"></c:set>
               <c:set var="cor_zoom_level" value="${cordinates.cor_zoom_level}"></c:set>

               <script type="text/javascript">
                  cor_name[cor_index] = "${cor_name}";
                  cor_longi[cor_index] = "${cor_longi}";
                  cor_lati[cor_index] = "${cor_lati}";
                  cor_zoom_level[cor_index] = "${cor_zoom_level}";
                  cor_index++;
               </script>

            </c:forEach>

<div id="contents" class="city" style="margin-top: -265px;">
    <div class="conts-container">
        <div class="present">
           <div class="tabs-list"> 
             <script>
             function initMap() {
                 var center = {
                       lat : 48.856667,
                       lng : 15.350833
                    };
                    map = new google.maps.Map(document
                          .getElementById('map'), {
                       zoom : 4,
                       center : center
                    });
                    
                    
                     for(var i=0; i<cor_index;i++){//making marker
                       var latlng = {
                             lat : Number(cor_lati[i]),
                             lng : Number(cor_longi[i])
                          };

                          
                          
                       marker[i] = new google.maps.Marker({
                       position : latlng,
                       map : map,
                       title : cor_name[i],
                       zoom : cor_zoom_level[i],
                       icon:"http://www.stubbyplanner.com/img_v8/selectcityICON_red.png",
                    });
                       
                        if(cor_zoom_level[i]!=4) 
                          marker[i].setMap(null);
                       
                    }
                    
                      map.addListener('zoom_changed', function() {
                         console.log(map.getZoom());
                         if(map.getZoom()==4){// if zoom = 4, then present marker(level 4)
                            for(var i=0; i<cor_index;i++){//making marker
                                if(marker[i].zoom==4){
                                   marker[i].setMap(map);
                                }
                                else{
                                   marker[i].setMap(null);
                                }
                          }
                         }
                         else if(map.getZoom()==5)
                         {// if zoom = 4, then present marker(level 4)
                            for(var i=0; i<cor_index;i++){//making marker
                                if(marker[i].zoom==5){
                                   marker[i].setMap(map);
                                }
                                else{
                                   marker[i].setMap(null);
                                }
                          }
                         }
                         else if(map.getZoom()==7)
                         {// if zoom = 4, then present marker(level 4)
                            for(var i=0; i<cor_index;i++){//making marker
                                if(marker[i].zoom==6){
                                   marker[i].setMap(map);
                                }
                                else{
                                   marker[i].setMap(null);
                                }
                          }
                         }
                            
                         });
                      
                      
                      
                for(i=0;i<marker.length;i++)
               {
                  marker[i].addListener('click', function() {
                	  console.log('marker is clicked');
                	  document.getElementById("trav["+index_textbox_cityname+"].city").value = this.getTitle();

                       });   //click event end

               }
                
              } 
             </script>
            
            </div> <!-- //tabs-list  -->
     <!--   <div id="carpool_map"></div> -->
     
       <h2 id="carpool_title" style="margin-top: -80px;font-size: large;border-left-width: 50px;padding-left: 250px;">   My Trip Plan With Recomanding Other traveler</h2>
       <br>
       <div id="map" style="margin-top: 0px;border-left-width: 50px;position: relative;overflow: hidden;left: 20px;"></div>
    

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

    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBnrWQ2SHvedNrvdozheYo32pHwCbuvPgs&callback=initMap">
    </script>
	

       <h2 id="carpool_title" style="font-size: large; margin-top: 40px;margin-left: 150px;padding-left: 105px;border-left-width: 50px;"> Search Other Traveler</h2>

<!-- <div style="margin-top: 50px; margin-left: 17px">
<h1 style="font-size: large;">Search Other Traveler</h1>
</div>
 -->
<form action="/accompany/cal" method="post" role="form" class="ajaxform">
<div class="id-card-box" style="width: 70%;border: black;margin-left: 235px;">

         <div class="item-list" style="width: 1400px; padding-right: 30px;">
               <div style="font-size: 20px;">
                     <span class="label" style="margin-right: 80px;"  >departure</span>

                  <input class="label ajaxCity" type="text" onclick="textClick(0)" name="trav[0].city" id="trav[0].city" value="France" style="margin-top: -5px; padding: 0px; width: 150px;">
                  
                  <span class="label" style="margin: 0 0px;">begin</span>
                  <input class="datepick label ajaxStart" type="text" name="trav[0].sdate" value="start" style="margin-top: -5px; padding: 0px; width: 150px;">
                  <span class="label" style="margin: 0 0px;">end</span>
                  <input class="datepick label ajaxEnd" type="text" name="trav[0].edate" value="end" style="margin-top: -5px; padding: 0px; width: 150px;">
                     <img class="appendcp" src="../resources/images/accompany/plus.png" width="30" height="30" style="margin-top: -5px;">
            </div>
      <div class="accompanyList row">
      </div>
      <div style="padding-left: 400px; float: none;" class="calendar-form">
      
      <input class="btn-more ajaxbtn" type="submit" value="search" style="margin-right: 20%; margin-top: 10px; width: 120px; height: 50px; font-size: medium; float: none;" />
      </div>
      </div>
   
   
   
   </div>
</form>
    </div>
       
            </div>
	</div>            	
	

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
      '<input class="label ajaxCity" type="text" id="trav['+
      ct+
      '].city" name="trav['+
      ct+
      '].city" onclick="textClick('+ct+')" value="" style="margin-top: -5px; padding: 0px; width: 150px;">'+
      '<span class="label" style="margin: 0 0px;">begin</span>'+
      '<input class="datepick label ajaxStart" type="text" name="trav['+
      ct+
      '].sdate" value="start" style="margin-top: -5px; padding: 0px; width: 150px;"><span class="label" style="margin: 0 0px;">end</span>'+
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
   '<input class="label ajaxCity" type="text" id="trav['+
   ct+'].city" name="trav['+ ct+
   '].city" onclick="textClick('+ct+')" value="" style="margin-top: -5px; padding: 0px; width: 150px;">'+
   '<span class="label" style="margin: 0 0px;">begin</span>'+
   '<input class="datepick label ajaxStart" type="text" name="trav['+
   ct+
   '].sdate" value="start" style="margin-top: -5px; padding: 0px; width: 150px;">'+
   '<span class="label" style="margin: 0 0px;">end</span>'+
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
                  	htmlText += '<div class="th col3"> Profile </div>';
                       htmlText += '<div class="th col4"> Date </div>';
                          htmlText += '<div class="th col4"> Place </div>';
                             htmlText += '<div class="th col3"> Birth </div>';
                                htmlText += '<div class="th col3"> Name </div>'; 
                                  	htmlText += '<div class="th col3"> Join </div>';
                                       htmlText += '</li>';
                                    

               $(data).each(function(){
              htmlText += '<li>';
                  htmlText += '<div class="th col1">'+(eachCounter+1)+'</div>';
                  	htmlText += '<div class="th col3"><a href=""> Profile </a></div>';
                       htmlText += '<div class="th col4">'+data[eachCounter].tp_date+'</div>';
                          htmlText += '<div class="th col4">'+data[eachCounter].cor_region+'</div>';
                             htmlText += '<div class="th col3">'+data[eachCounter].u_birth+'</div>';
                                htmlText += '<div class="th col3">'+data[eachCounter].u_name+'</div>'; 
                                   	htmlText += '<div class="th col3"><a href=""> Join </a></div>';
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