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
	height: 500px;
	width: 75%;
	margin-left: 300px;
}

</style>
</head>
<body>

    <div id="map"></div>
   <script>

    var markerPosition;   
     var marker_zoom4=[];
     var marker_zoom5=[];
     var latLngList=[];
     
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
    
    
    function initMap() {
     // when zoom is 4, present location of france, belgium, germany, swiss.
      var franceLocation = {lat: 48.856667, lng: 2.350833};
      var belgiumLocation = {lat: 50.85, lng: 4.35};
      var germanyLocation = {lat: 52.500556, lng: 13.398889};
      var swissLocation = {lat: 46.95, lng: 7.45};
      
      // when zoom is 5, present marker of location of below cities.
      var parisLocation = {lat: 48.856667, lng: 2.350833};
      var niceLocation = {lat: 43.703333, lng: 7.266389};
      var brusselsLocation = {lat: 50.85, lng: 4.35};
      var berlinLocation = {lat: 52.518611, lng: 13.408056};
      var munichLocation = {lat: 48.133333, lng: 11.566667};
      var bernLocation = {lat: 46.95, lng: 7.45};
      var zurichLocation = {lat: 47.366667, lng: 8.55};
      
    
     
       marker_zoom4[0] = new google.maps.Marker({//Ã«Â§Â Ã¬Â»Â¤Ã«Â¥Â¼ uluruÃ¬Â Â  Ã¬Â°Â Ã¬Â Â 
          position: franceLocation,
          map: map,
          title:'france'
        });
     marker_zoom4[1] = new google.maps.Marker({//Ã«Â§Â Ã¬Â»Â¤Ã«Â¥Â¼ uluruÃ¬Â Â  Ã¬Â°Â Ã¬Â Â 
          position: belgiumLocation,
          map: map,
          title:'belguim'
        });
     marker_zoom4[2] = new google.maps.Marker({//Ã«Â§Â Ã¬Â»Â¤Ã«Â¥Â¼ uluruÃ¬Â Â  Ã¬Â°Â Ã¬Â Â 
          position: germanyLocation,
          map: map,
          title:'germany'
        });
     marker_zoom4[3] = new google.maps.Marker({//Ã«Â§Â Ã¬Â»Â¤Ã«Â¥Â¼ uluruÃ¬Â Â  Ã¬Â°Â Ã¬Â Â 
          position: swissLocation,
          map: map,
          title:'swiss'
       });
     
      marker_zoom5[0] = new google.maps.Marker({//Ã«Â§Â Ã¬Â»Â¤Ã«Â¥Â¼ uluruÃ¬Â Â  Ã¬Â°Â Ã¬Â Â 
          position: parisLocation,
          map: map,
          title:'paris'
        });
     marker_zoom5[1] = new google.maps.Marker({//Ã«Â§Â Ã¬Â»Â¤Ã«Â¥Â¼ uluruÃ¬Â Â  Ã¬Â°Â Ã¬Â Â 
          position: niceLocation,
          map: map,
          title:'nice'
        });
     marker_zoom5[2] = new google.maps.Marker({//Ã«Â§Â Ã¬Â»Â¤Ã«Â¥Â¼ uluruÃ¬Â Â  Ã¬Â°Â Ã¬Â Â 
          position: brusselsLocation,
          map: map,
          title:'brussels'
        });
     marker_zoom5[3] = new google.maps.Marker({//Ã«Â§Â Ã¬Â»Â¤Ã«Â¥Â¼ uluruÃ¬Â Â  Ã¬Â°Â Ã¬Â Â 
          position: berlinLocation,
          map: map,
          title:'berlin'
        });
     marker_zoom5[4] = new google.maps.Marker({//Ã«Â§Â Ã¬Â»Â¤Ã«Â¥Â¼ uluruÃ¬Â Â  Ã¬Â°Â Ã¬Â Â 
          position: munichLocation,
          map: map,
          title:'munich'
        });
     marker_zoom5[5] = new google.maps.Marker({//Ã«Â§Â Ã¬Â»Â¤Ã«Â¥Â¼ uluruÃ¬Â Â  Ã¬Â°Â Ã¬Â Â 
          position: bernLocation,
          map: map,
          title:'bern'
        });
     marker_zoom5[6] = new google.maps.Marker({//Ã«Â§Â Ã¬Â»Â¤Ã«Â¥Â¼ uluruÃ¬Â Â  Ã¬Â°Â Ã¬Â Â 
          position: zurichLocation,
          map: map,
          title:'zurich'
        });
     
    /* 지도 좌표 정보 ajax */
     for(i=0;i<marker_zoom4.length;i++)
    {
        var count = 0;
       marker_zoom4[i].addListener('click', function() {
          count ++;
          latLngList.push(this.getPosition());
          createLine(latLngList, map);
          console.log(this.getTitle());
          if(count%2 != 0){
              $.ajax({
                  url : '${pageContext.request.contextPath}/ajax_register',
                 type : 'post',
                 data : {
                    start : this.getTitle()
                 },
                 success: function sendHandler(data) {
                    $('select.start option.start').text("");
                   $('select.start option.start').text(data);
                   $('select.start option.start').text(data).attr("selected", "selected");
                    
                    }
              });
              alert("출발지가 추가 되었습니다.");
              return false;
               }else{
          
           $.ajax({
             url :   '${pageContext.request.contextPath}/ajax_register',
            type : 'post',
            data : {
               start : this.getTitle()
            },
            success: function sendHandler(data) {
                $('select.destination option.destination').text("");
                $('select.destination option.destination').text(data);
                $('select.destination option.destination').text(data).attr("selected", "selected");
                 
               
               }
         });
         alert("목적지가 추가 되었습니다.")
         return false;
          }
        });   
    }
 for(i=0;i<marker_zoom5.length;i++)
 {
    var count = 0;
    marker_zoom5[i].addListener('click', function() {
       count++;
       latLngList.push(this.getPosition());
         console.log(this.getTitle());
       createLine(latLngList, map);

       if(count%2 != 0){
       $.ajax({
           url :   '${pageContext.request.contextPath}/ajax_register',
          type : 'post',
          data : {
             start : this.getTitle()
          },
          success: function sendHandler(data) {
              $('select.start option.start').text("");
              $('select.start option.start').text(data);
              $('select.start option.start').text(data).attr("selected", "selected");
               
            }
       });
       alert("출발지가 추가 되었습니다.")
       return false;
       }else{
       
        $.ajax({
          url :   '${pageContext.request.contextPath}/ajax_register',
         type : 'post',
         data : {
            start : this.getTitle()
         },
         success: function sendHandler(data) {
             $('select.destination option.destination').text("");
             $('select.destination option.destination').text(data);
             $('select.destination option.destination').text(data).attr("selected", "selected");
            
            }
      });
      alert("목적지가 추가 되었습니다.")
      return false;
       }
    });   
 }

      var map = new google.maps.Map(document.getElementById('map'), {
        zoom: 4,
        center: parisLocation
      });

      map.addListener('zoom_changed', function() {
          if(map.getZoom()<5){

             if(marker_zoom5[0]!=null){
                for(i=0; i<7; i++){
                    marker_zoom5[i].setMap(null);
                 } 
             }
             for(i=0; i<4; i++){
             marker_zoom4[i].setMap(map);
             }
           }
          else if(map.getZoom()>=5){
             
          for(i=0; i<4; i++){
                marker_zoom4[i].setMap(null);
             }   
            for(i=0; i<7; i++){
                marker_zoom5[i].setMap(map);
             }
          }
        });
    }/* ------------------------initMap() 종료 --------------------------------------------------------*/

   /* 지도 좌표 정보 ajax */
   

    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBnrWQ2SHvedNrvdozheYo32pHwCbuvPgs&callback=initMap">
    </script>
    <br><br>
    <div style="font-size: 30px; font-weight: bold; margin-left: 130px;">Register Your Carpool !</div>
    <br><br>
	<div class="id-card-box" style="width: 100% ;border: black;">
	<form role="form" method="post" class="calendar-form">

			<div class="item-list" style="width: 1400px; padding-right: 30px;">
					<div class="row" style="font-size: 20px;">
						<span class="label">Location</span> 
						 <select class="destination" name="dest_point">
							<option class="destination">목적지를 지도에 마크하세요</option>
						</select> 
						<select  class="start"  name="start_point">
							<option class="start">출발지를 지도에 마크하세요</option>
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
							<option value="PM6">PM 6</option>
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
		</div>
	</form>
	</div>




	<%@ include file="/WEB-INF/views/include/footer.jsp"%>
</body>
</html>