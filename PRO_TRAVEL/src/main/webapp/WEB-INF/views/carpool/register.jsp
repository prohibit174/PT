<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp"%>
<%@ include file="/WEB-INF/views/include/carpool_sidebar.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>
<style>
#map {
   height: 400px;
   width: 60%;
   margin-left: 300px;
}

</style>
</head>
<body>

    
   <script>

    var markerPosition;   
     var marker_zoom6=[];
     var movingPath=null;
     var latLngList=[];
     <!-- 경유지 찍을 때 지도 마커 모양 변경..-->
    var iconBase = "https://maps.google.com/mapfiles/kml/shapes/";
    var icons = {
          parking: {
             icon: iconBase + "parking_lot_maps.png"
          }
    }
     
     function createLine(latLngList, map){ 
       if(movingPath!=null){
          movingPath.setMap(null);   
       }
        
         movingPath = new google.maps.Polyline({
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
    
    
    function initMap() {
     // when zoom is 4, present location of france, belgium, germany, swiss.
     //zoom6 France cites
     var caen = {lat: 49.136500, lng: -0.303955};
     var le_havre = {lat: 49.494594, lng: 0.135498};
     var rouen = {lat: 49.394590, lng: 1.146240};
     var rennes = {lat: 48.134628, lng: -1.622314};
	 var nantes = {lat: 47.172600, lng: -1.578369};
     var paris = {lat: 48.833689, lng: 2.376709}; 
     var le_mans = {lat: 47.987777, lng: 0.223388};
     var tours = {lat: 47.396180, lng: 0.706786};
     var nancy = {lat: 48.659827, lng: 6.199950};
      //zoom6 Italy cites

     
       marker_zoom6[0] = new google.maps.Marker({//Ã«Â§Â Ã¬Â»Â¤Ã«Â¥Â¼ uluruÃ¬Â Â  Ã¬Â°Â Ã¬Â Â 
          position: caen,
          map: map,
          title:'caen'
        });
     marker_zoom6[1] = new google.maps.Marker({//Ã«Â§Â Ã¬Â»Â¤Ã«Â¥Â¼ uluruÃ¬Â Â  Ã¬Â°Â Ã¬Â Â 
          position: le_havre,
          map: map,
          title:'le_havre'
        });
     marker_zoom6[2] = new google.maps.Marker({//Ã«Â§Â Ã¬Â»Â¤Ã«Â¥Â¼ uluruÃ¬Â Â  Ã¬Â°Â Ã¬Â Â 
          position: rouen,
          map: map,
          title:'rouen'
        });
     marker_zoom6[3] = new google.maps.Marker({//Ã«Â§Â Ã¬Â»Â¤Ã«Â¥Â¼ uluruÃ¬Â Â  Ã¬Â°Â Ã¬Â Â 
          position: rennes,
          map: map,
          title:'rennes'
       });
     
      marker_zoom6[4] = new google.maps.Marker({//Ã«Â§Â Ã¬Â»Â¤Ã«Â¥Â¼ uluruÃ¬Â Â  Ã¬Â°Â Ã¬Â Â 
          position: nantes,
          map: map,
          title:'nantes'
        });
     marker_zoom6[5] = new google.maps.Marker({//Ã«Â§Â Ã¬Â»Â¤Ã«Â¥Â¼ uluruÃ¬Â Â  Ã¬Â°Â Ã¬Â Â 
          position: paris,
          map: map,
          title:'paris'
        });
     marker_zoom6[6] = new google.maps.Marker({//Ã«Â§Â Ã¬Â»Â¤Ã«Â¥Â¼ uluruÃ¬Â Â  Ã¬Â°Â Ã¬Â Â 
         position: le_mans,
         map: map,
         title:'le_mans'
       });
     marker_zoom6[7] = new google.maps.Marker({//Ã«Â§Â Ã¬Â»Â¤Ã«Â¥Â¼ uluruÃ¬Â Â  Ã¬Â°Â Ã¬Â Â 
         position: tours,
         map: map,
         title:'tours'
       });
     marker_zoom6[7] = new google.maps.Marker({//Ã«Â§Â Ã¬Â»Â¤Ã«Â¥Â¼ uluruÃ¬Â Â  Ã¬Â°Â Ã¬Â Â 
         position: nancy,
         map: map,
         title:'nancy'
       });
    /* 지도 좌표 정보 ajax */

 for(i=0;i<marker_zoom6.length;i++)
 {
    var count = 0;
    marker_zoom6[i].addListener('click', function() {
       count++;
       latLngList.push(this.getPosition());
         console.log(this.getTitle());
       createLine(latLngList, map);

       if(count == 1){
       $.ajax({
           url :   '${pageContext.request.contextPath}/ajax_register',
          type : 'post',
          data : {
             start : this.getTitle()
          },
          success: function sendHandler(data) {
              $('select.start option.start').text("");
              $('select.start option.start').text(data);
              $('select.start option.start').val(data);
              $('select.start option.start').text(data).attr("selected", "selected");
               
            }
       });
       alert("출발지가 추가 되었습니다.")
       return false;
       }else if(count == 2){
       
        $.ajax({
          url :   '${pageContext.request.contextPath}/ajax_register',
         type : 'post',
         data : {
            start : this.getTitle()
         },
         success: function sendHandler(data) {
             $('select.destination option.destination').text("");
             $('select.destination option.destination').text(data);
             $('select.destination option.destination').val(data);
             $('select.destination option.destination').text(data).attr("selected", "selected");
            }
      });
      alert("목적지가 추가 되었습니다.");
      return false;
       }else if(count == 3){
          if(confirm("경유지로 추가 하시겠습니까?") == true){
             this.setMap(null);
               marker_zoom6[i] = new google.maps.Marker({
                    position: this.getPosition(),
                    map: map,
                    title: this.getTitle(),
                    icon: icons.parking.icon
                  });
              $.ajax({
               url :   '${pageContext.request.contextPath}/ajax_register',
              type : 'post',
              data : {
                 start : this.getTitle()
              },
              success: function sendHandler(data) {
                  $('select.way_point option.way_point').text("");
                  $('select.way_point option.way_point').text(data);
                  $('select.way_point option.way_point').val(data);
                  $('select.way_point option.way_point').text(data).attr("selected", "selected");
      
                 }

           });


             }
             }
    });   
 }

      var map = new google.maps.Map(document.getElementById('map'), {
        zoom: 5,
        center: nantes
      });

      map.addListener('zoom_changed', function() {
          if(map.getZoom()>= 6){  
             for(i=0; i<marker_zoom6.length; i++){
             marker_zoom6[i].setMap(map);
             }
           }else if(map.getZoom() < 6){
               for(i=0; i<marker_zoom6.length; i++){
                   marker_zoom6[i].setMap(null);
                   }
           }
		
        });
    }/* ------------------------initMap() 종료 --------------------------------------------------------*/

   /* 지도 좌표 정보 ajax */
   
   /*이어진 경로 취소하기*/
         function revert(){

         movingPath.setMap(null);
         initVariables();
     }
      
      function initVariables(){
          //variables related to google maps
          latLngList=[];
          jsonEncode=null;
          movingPath = null;
     }

 
    </script>
    
   
    
    <div id="map"></div>
        
    <div style="font-size: 30px; font-weight: bold; margin-left: 100px;">
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBnrWQ2SHvedNrvdozheYo32pHwCbuvPgs&callback=initMap">
    </script>
    </div>
    <br><br>
   <div class="id-card-box" >
   <form role="form" method="post" class="calendar-form">

         <div class="item-list" style="width: 1200px; padding-right: 30px;">
         Register Your Carpool!
         
               <div class="row" style="font-size: 20px;">
               
                  <span class="label">Location</span> 
                   <select class="destination" name="dest_point">
                     <option class="destination"  value="">목적지를 지도에 마크하세요</option>
                  </select> 
                  <select  class="start"  name="start_point">
                     <option class="start" value="">출발지를 지도에 마크하세요</option>
                  </select>
               </div>
               <div class="row" style="font-size: 20px;">
                  <span class="label">WayPoint</span> 
                   <select class="way_point" name="way_point">
                     <option class="way_point"  value="">경유지를 지도에 마크하세요</option>
                  </select> 
               </div>               
               <div class="row" style="font-size: 20px;">
                  <span class="label">Date</span> 
                  <select class="day" name="c_date">
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
                  <select class="month" name="c_month">
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
                  <select class="year" name="c_year">
                     <option value="year">year</option>
                     <option value="2017">2017</option>
                     <option value="2018">2018</option>
                     <option value="2019">2019</option>
                  </select> 
               </div>

               <div class="row"  style="font-size: 20px;">
                  <span class="label">Time</span> 
                  <select class="minute" name="c_minute">
                     <option value="minute">MINUTE</option>
                     <option value="10">10</option>
                     <option value="20">20</option>
                     <option value="30">30</option>
                     <option value="40">40</option>
                     <option value="50">50</option>
                     <option value="00">00</option>
                  </select>
                  <select class="hour" name="c_hour">
                     <option value="hour">HOUR</option>
                     <option value="AM1">AM 1</option>
                     <option value="AM2">AM 2</option>
                     <option value="AM3">AM 3</option>
                     <option value="AM4">AM 4</option>
                     <option value="AM5">AM 5</option>
                     <option value="AM6">AM 6</option>
                     <option value="AM7">AM 7</option>
                     <option value="AM8">AM 8</option>
                     <option value="AM9">AM 9</option>
                     <option value="AM10">AM 10</option>
                     <option value="AM11">AM 11</option>
                     <option value="AM12">AM 12</option>
                     <option value="PM1">PM 1</option>
                     <option value="PM2">PM 2</option>
                     <option value="PM3">PM 3</option>
                     <option value="PM4">PM 4</option>
                     <option value="PM5">PM 5</option>
                     <option value="PM7">PM 7</option>
                     <option value="PM8">PM 8</option>
                     <option value="PM9">PM 9</option>
                     <option value="PM10">PM 10</option>
                     <option value="PM11">PM 11</option>
                     <option value="PM12">PM 12</option>
                  </select> 
               </div>
               <div class="row" style="font-size: 20px;">
                  <span class="label">Seat</span> 
                  <select class="person" name="c_person">
                     <option value="person">PERSON</option>
                     <option value="1">1</option>
                     <option value="2">2</option>
                     <option value="3">3</option>
                     <option value="4">4</option>
                     <option value="5">5</option>
                     <option value="6">6</option>
                     <option value="7">7</option>
                     <option value="8">8</option>
                  </select>
               </div>
               <div class="row" style="font-size: 20px;">
                  <span class="label">PRICE</span> 
                  <select class="price" name="c_price">
                     <option value="price">PRICE</option>
                     <option value="10">$10</option>
                     <option value="20">$20</option>
                     <option value="30">$30</option>
                     <option value="40">$40</option>
                     <option value="50">$50</option>
                     <option value="60">$60</option>
                  </select>
               </div>

               <div class="row"></div>
            </div>
            <div>
      <input class="btn-more" type="submit" value="register" style="margin-right: 50%; margin-top: 10px; width: 120px; height: 50px;" />
     <!--  <input type="button" value="clear" onclick="revert()" style="margin-right: 50%; margin-top: 10px; width: 120px; height: 50px;"/> -->
      </div>
   </form>
   </div>




   <%@ include file="/WEB-INF/views/include/footer.jsp"%>
</body>
</html>