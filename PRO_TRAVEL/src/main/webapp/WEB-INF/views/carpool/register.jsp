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
    <div id='calendar'></div>
    
    <script>
       var markerPosition;   
       var marker_zoom4=[];
       var marker_zoom5=[];
       latLngList = [];
       susDay = null;
       susEnd = null;
       var allEvent=[];
       var jsonEncode;
       var obj;
       var map;
       var cal =[];
       var movingPath = [];
       var c = 0;
      
       function collectEventForLine(map){
          
          if(cal != null){
            cal = $('#calendar').fullCalendar( 'clientEvents');
           cal.sort(function(a,b){
             return a.start < b.start ? -1 : a.start > b.start ? 1 : 0;  
                       });
          }else{
             cal = $('#calendar').fullCalendar( 'clientEvents');
          }
             if(cal.length > 0){
            latLngList.splice(0, latLngList.length);
             for(var i=0; i < cal.length; i++){
                for(var a=0; a < marker_zoom4.length; a++){
                   if(marker_zoom4[a].title == cal[i].title){
                      latLngList.push(marker_zoom4[a].getPosition());
                   }
                 }
                for(var a=0; a < marker_zoom5.length; a++){
                   if(marker_zoom5[a].title == cal[i].title){
                      latLngList.push(marker_zoom5[a].getPosition());
                   }
                 }
             }
              createLine(latLngList, map);
              
              collectEvent();
               jsonEncode = JSON.stringify(allEvent);
               obj.value = jsonEncode;
               console.log(obj);
             }
            
         };  //collectEventForLine End
       
       
       function collectEvent(){
           var useridSu = '<%=session.getAttribute("login") %>'; 
        	 
           var cal=[];
           allEvent=[];
           cal=$('#calendar').fullCalendar( 'clientEvents');
           /* var id = session.getid(); */
           
           for(var i=0;i<cal.length;i++){
            
               var valDate = cal[i].start.format("YYYY-MM-DD");
                    var sdate = new moment(cal[i].start).format("YYYY-MM-DD");

                    var newDate = moment(sdate);
                    var edate = new moment(cal[i].end).format("YYYY-MM-DD");
                    var newEndDate = moment(edate);
                    
                    var duration = moment.duration(newDate.diff(newEndDate));   //ì°¨ï¿½ ï¿½ï¿½ 
                   var durationdays = (-duration.asDays());      //ì°¨ï¿½ ï¿½ï¿½  ï¿½ ï¿½ï¿½  ï¿½  ï¿½ ï¿½ ï¿½ ï¿½ï¿½  
                   
                    for(var a=0; a < durationdays;a++){
                      allEvent.push(new storeEvent(useridSu ,cal[i].title, moment(valDate).format("YYYY-MM-DD")));
                      valDate = new moment(valDate).add(1, 'days');
                    }  //event store in arry
              }//event store in var End
         /*   for(var b=0; b < allEvent.length; b++){
              alert(allEvent[b].title + allEvent[b].eventdate);
           } */
       /*     jsonEncode = JSON.stringify(allEvent);
           obj.value = jsonEncode; */
              
       } //collectEvent method End
       
       function storeEvent (id ,title, eventdate) {
          this.id = id;
          this.title = title;
          this.eventdate = eventdate;
       }
       
        function LongDateToShortDate(longDate){
            var todayYear= longDate.getFullYear();
            longDate.setDate(longDate.getDate()+1);
            var todayMonth= longDate.getMonth()+1;

               var todayday= longDate.getDate();
               if(todayMonth<10)
               {
                  todayMonth='0'+todayMonth;   
               }
               if(todayday<10)
               {
               todayday='0'+todayday;   
               }
         
               longDate=String(todayYear+'-'+todayMonth+'-'+todayday);
               shortDate=longDate;
               return shortDate;
         }
         
          function ShortDateToLongDate(shortDate){
            tempDate=new Date();
            var temp=String(shortDate);
            var strArr=temp.split('-');
            tempDate.setFullYear(strArr[0]);
            tempDate.setMonth(strArr[1]-1);
            tempDate.setDate(strArr[2]);

            var LongDate=tempDate;
            return LongDate;
         } 
          
       
     /* Calendar ÃªÂ´ï¿½ Ã«Â Â¨ Ã«Â³ï¿½ Ã¬ï¿½ ï¿½  */  
      var todayDate = new Date(); //ï¿½ ï¿½ ï¿½ Ã¬ï¿½ Â¬ Ã«ï¿½ Â Ã¬Â§ï¿½ 
      var currentDate=new Date();      
      
      var calEventColor=[];
      calEventColor=["#CEFFC7","#FFFF5A","#D7FF6C","#FFD6FD","#B5B2FF", "#B6FFFF", "FFEDA2", "notReachable"];
      var indexOfCalEventColor=0;
      function nextEventColor(){
         if(indexOfCalEventColor==calEventColor.length-1)
            indexOfCalEventColor=0;
         return calEventColor[indexOfCalEventColor++]; 
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
        
         marker_zoom4[0] = new google.maps.Marker({//ï¿½ ï¿½ ï¿½ Â«ï¿½ ï¿½ ï¿½ Â§ï¿½ ï¿½  ï¿½ ï¿½ ï¿½ Â¬ï¿½ ï¿½ ï¿½ Â»ï¿½ ï¿½ ï¿½ Â¤ï¿½ ï¿½ ï¿½ Â«ï¿½ ï¿½ ï¿½ Â¥ï¿½ ï¿½ ï¿½ Â¼ uluruï¿½ ï¿½ ï¿½ Â¬ï¿½ ï¿½  ï¿½ ï¿½   ï¿½ ï¿½ ï¿½ Â¬ï¿½ ï¿½ ï¿½ Â°ï¿½ ï¿½  ï¿½ ï¿½ ï¿½ Â¬ï¿½ ï¿½  ï¿½ ï¿½  
            position: franceLocation,
            map: map,
            title:'France'
          });
       marker_zoom4[1] = new google.maps.Marker({//ï¿½ ï¿½ ï¿½ Â«ï¿½ ï¿½ ï¿½ Â§ï¿½ ï¿½  ï¿½ ï¿½ ï¿½ Â¬ï¿½ ï¿½ ï¿½ Â»ï¿½ ï¿½ ï¿½ Â¤ï¿½ ï¿½ ï¿½ Â«ï¿½ ï¿½ ï¿½ Â¥ï¿½ ï¿½ ï¿½ Â¼ uluruï¿½ ï¿½ ï¿½ Â¬ï¿½ ï¿½  ï¿½ ï¿½   ï¿½ ï¿½ ï¿½ Â¬ï¿½ ï¿½ ï¿½ Â°ï¿½ ï¿½  ï¿½ ï¿½ ï¿½ Â¬ï¿½ ï¿½  ï¿½ ï¿½  
            position: belgiumLocation,
            map: map,
            title:'Belgium'
          });
       marker_zoom4[2] = new google.maps.Marker({//ï¿½ ï¿½ ï¿½ Â«ï¿½ ï¿½ ï¿½ Â§ï¿½ ï¿½  ï¿½ ï¿½ ï¿½ Â¬ï¿½ ï¿½ ï¿½ Â»ï¿½ ï¿½ ï¿½ Â¤ï¿½ ï¿½ ï¿½ Â«ï¿½ ï¿½ ï¿½ Â¥ï¿½ ï¿½ ï¿½ Â¼ uluruï¿½ ï¿½ ï¿½ Â¬ï¿½ ï¿½  ï¿½ ï¿½   ï¿½ ï¿½ ï¿½ Â¬ï¿½ ï¿½ ï¿½ Â°ï¿½ ï¿½  ï¿½ ï¿½ ï¿½ Â¬ï¿½ ï¿½  ï¿½ ï¿½  
            position: germanyLocation,
            map: map,
            title:'Germany'
          });
       marker_zoom4[3] = new google.maps.Marker({//ï¿½ ï¿½ ï¿½ Â«ï¿½ ï¿½ ï¿½ Â§ï¿½ ï¿½  ï¿½ ï¿½ ï¿½ Â¬ï¿½ ï¿½ ï¿½ Â»ï¿½ ï¿½ ï¿½ Â¤ï¿½ ï¿½ ï¿½ Â«ï¿½ ï¿½ ï¿½ Â¥ï¿½ ï¿½ ï¿½ Â¼ uluruï¿½ ï¿½ ï¿½ Â¬ï¿½ ï¿½  ï¿½ ï¿½   ï¿½ ï¿½ ï¿½ Â¬ï¿½ ï¿½ ï¿½ Â°ï¿½ ï¿½  ï¿½ ï¿½ ï¿½ Â¬ï¿½ ï¿½  ï¿½ ï¿½  
            position: swissLocation,
            map: map,
            title:'Swiss'
         });
       
        marker_zoom5[0] = new google.maps.Marker({//ï¿½ ï¿½ ï¿½ Â«ï¿½ ï¿½ ï¿½ Â§ï¿½ ï¿½  ï¿½ ï¿½ ï¿½ Â¬ï¿½ ï¿½ ï¿½ Â»ï¿½ ï¿½ ï¿½ Â¤ï¿½ ï¿½ ï¿½ Â«ï¿½ ï¿½ ï¿½ Â¥ï¿½ ï¿½ ï¿½ Â¼ uluruï¿½ ï¿½ ï¿½ Â¬ï¿½ ï¿½  ï¿½ ï¿½   ï¿½ ï¿½ ï¿½ Â¬ï¿½ ï¿½ ï¿½ Â°ï¿½ ï¿½  ï¿½ ï¿½ ï¿½ Â¬ï¿½ ï¿½  ï¿½ ï¿½  
            position: parisLocation,
            map: map,
            title:'Paris'
          });
       marker_zoom5[1] = new google.maps.Marker({//ï¿½ ï¿½ ï¿½ Â«ï¿½ ï¿½ ï¿½ Â§ï¿½ ï¿½  ï¿½ ï¿½ ï¿½ Â¬ï¿½ ï¿½ ï¿½ Â»ï¿½ ï¿½ ï¿½ Â¤ï¿½ ï¿½ ï¿½ Â«ï¿½ ï¿½ ï¿½ Â¥ï¿½ ï¿½ ï¿½ Â¼ uluruï¿½ ï¿½ ï¿½ Â¬ï¿½ ï¿½  ï¿½ ï¿½   ï¿½ ï¿½ ï¿½ Â¬ï¿½ ï¿½ ï¿½ Â°ï¿½ ï¿½  ï¿½ ï¿½ ï¿½ Â¬ï¿½ ï¿½  ï¿½ ï¿½  
            position: niceLocation,
            map: map,
            title:'Nice'
          });
       marker_zoom5[2] = new google.maps.Marker({//ï¿½ ï¿½ ï¿½ Â«ï¿½ ï¿½ ï¿½ Â§ï¿½ ï¿½  ï¿½ ï¿½ ï¿½ Â¬ï¿½ ï¿½ ï¿½ Â»ï¿½ ï¿½ ï¿½ Â¤ï¿½ ï¿½ ï¿½ Â«ï¿½ ï¿½ ï¿½ Â¥ï¿½ ï¿½ ï¿½ Â¼ uluruï¿½ ï¿½ ï¿½ Â¬ï¿½ ï¿½  ï¿½ ï¿½   ï¿½ ï¿½ ï¿½ Â¬ï¿½ ï¿½ ï¿½ Â°ï¿½ ï¿½  ï¿½ ï¿½ ï¿½ Â¬ï¿½ ï¿½  ï¿½ ï¿½  
            position: brusselsLocation,
            map: map,
            title:'Brussels'
          });
       marker_zoom5[3] = new google.maps.Marker({//ï¿½ ï¿½ ï¿½ Â«ï¿½ ï¿½ ï¿½ Â§ï¿½ ï¿½  ï¿½ ï¿½ ï¿½ Â¬ï¿½ ï¿½ ï¿½ Â»ï¿½ ï¿½ ï¿½ Â¤ï¿½ ï¿½ ï¿½ Â«ï¿½ ï¿½ ï¿½ Â¥ï¿½ ï¿½ ï¿½ Â¼ uluruï¿½ ï¿½ ï¿½ Â¬ï¿½ ï¿½  ï¿½ ï¿½   ï¿½ ï¿½ ï¿½ Â¬ï¿½ ï¿½ ï¿½ Â°ï¿½ ï¿½  ï¿½ ï¿½ ï¿½ Â¬ï¿½ ï¿½  ï¿½ ï¿½  
            position: berlinLocation,
            map: map,
            title:'Berlin'
          });
       marker_zoom5[4] = new google.maps.Marker({//ï¿½ ï¿½ ï¿½ Â«ï¿½ ï¿½ ï¿½ Â§ï¿½ ï¿½  ï¿½ ï¿½ ï¿½ Â¬ï¿½ ï¿½ ï¿½ Â»ï¿½ ï¿½ ï¿½ Â¤ï¿½ ï¿½ ï¿½ Â«ï¿½ ï¿½ ï¿½ Â¥ï¿½ ï¿½ ï¿½ Â¼ uluruï¿½ ï¿½ ï¿½ Â¬ï¿½ ï¿½  ï¿½ ï¿½   ï¿½ ï¿½ ï¿½ Â¬ï¿½ ï¿½ ï¿½ Â°ï¿½ ï¿½  ï¿½ ï¿½ ï¿½ Â¬ï¿½ ï¿½  ï¿½ ï¿½  
            position: munichLocation,
            map: map,
            title:'Munich'
          });
       marker_zoom5[5] = new google.maps.Marker({//ï¿½ ï¿½ ï¿½ Â«ï¿½ ï¿½ ï¿½ Â§ï¿½ ï¿½  ï¿½ ï¿½ ï¿½ Â¬ï¿½ ï¿½ ï¿½ Â»ï¿½ ï¿½ ï¿½ Â¤ï¿½ ï¿½ ï¿½ Â«ï¿½ ï¿½ ï¿½ Â¥ï¿½ ï¿½ ï¿½ Â¼ uluruï¿½ ï¿½ ï¿½ Â¬ï¿½ ï¿½  ï¿½ ï¿½   ï¿½ ï¿½ ï¿½ Â¬ï¿½ ï¿½ ï¿½ Â°ï¿½ ï¿½  ï¿½ ï¿½ ï¿½ Â¬ï¿½ ï¿½  ï¿½ ï¿½  
            position: bernLocation,
            map: map,
            title:'Bern'
          });
       marker_zoom5[6] = new google.maps.Marker({//ï¿½ ï¿½ ï¿½ Â«ï¿½ ï¿½ ï¿½ Â§ï¿½ ï¿½  ï¿½ ï¿½ ï¿½ Â¬ï¿½ ï¿½ ï¿½ Â»ï¿½ ï¿½ ï¿½ Â¤ï¿½ ï¿½ ï¿½ Â«ï¿½ ï¿½ ï¿½ Â¥ï¿½ ï¿½ ï¿½ Â¼ uluruï¿½ ï¿½ ï¿½ Â¬ï¿½ ï¿½  ï¿½ ï¿½   ï¿½ ï¿½ ï¿½ Â¬ï¿½ ï¿½ ï¿½ Â°ï¿½ ï¿½  ï¿½ ï¿½ ï¿½ Â¬ï¿½ ï¿½  ï¿½ ï¿½  
            position: zurichLocation,
            map: map,
            title:'Zurich'
          });
      
 
         map = new google.maps.Map(document.getElementById('map'), {
          zoom: 4,
          center: parisLocation
        });

             window.setTimeout(function(){
                marker_zoom4[0].setAnimation(google.maps.Animation.DROP);
                 marker_zoom4[0].setMap(map);
            },200);
             window.setTimeout(function(){
                 marker_zoom4[1].setAnimation(google.maps.Animation.DROP);
                  marker_zoom4[1].setMap(map);
             },400);
             window.setTimeout(function(){
                 marker_zoom4[2].setAnimation(google.maps.Animation.DROP);
                  marker_zoom4[2].setMap(map);
             },600);
             window.setTimeout(function(){
                 marker_zoom4[3].setAnimation(google.maps.Animation.DROP);
                  marker_zoom4[3].setMap(map);
             },800);
             
             
            

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
        
        
        /* marker_zoom4 ï¿½ ï¿½ Â´Ã«Â¦ï¿½  Ã¬ï¿½ Â´Ã«Â²Â¤ï¿½ ï¿½ Â¸*/
        for(i=0;i<marker_zoom4.length;i++)
       {
          marker_zoom4[i].addListener('click', function() {
 
             if(susDay == null || susEnd == null){
                  if(susDay == null ){
                alert("select start date")
                }
                  else{
                alert("select end date")
                }
             }else{
           
                var temp = susEnd;
                 susEnd=LongDateToShortDate(ShortDateToLongDate(susEnd));
               
             var title=this.getTitle();
             var date=currentDate;
             
           //start, end day style default
             $('.fc-day[data-date="'+susDay+'"]').css('background-color', 'white').text("");
             $('.fc-day[data-date="'+temp+'"]').css('background-color', 'white').text("");
             
               var eventColor=nextEventColor();
             
              $('#calendar').fullCalendar( 'addEventSource', {
                 events: [
                       {
                           title: title,
                           start: susDay,
                           end : susEnd
                       }
                   ],
                   allDay:true,
                   color: eventColor,   
                   textColor: 'black'
               } );
                 susDay = null;
               susEnd = null;
                collectEventForLine(map);/*  line create, if want mark click */
               }      //else end
           
               });   //click event end

       }
        /* marker_zoom5 ï¿½ ï¿½ Â´Ã«Â¦ï¿½  Ã¬ï¿½ Â´Ã«Â²Â¤ï¿½ ï¿½ Â¸*/
            for(i=0;i<marker_zoom5.length;i++)
       {
          marker_zoom5[i].addListener('click', function() {
             
             if(susDay == null || susEnd == null){
                  if(susDay == null ){
                alert("select start date")
                }
                  else{
                alert("select end date")
                }
             }else{
           
                var temp = susEnd;
                 susEnd=LongDateToShortDate(ShortDateToLongDate(susEnd));
               
             var title=this.getTitle();
             var date=currentDate;
             
           //start, end day style default
             $('.fc-day[data-date="'+susDay+'"]').css('background-color', 'white').text("");
             $('.fc-day[data-date="'+temp+'"]').css('background-color', 'white').text("");
             
               var eventColor=nextEventColor();
             
              $('#calendar').fullCalendar( 'addEventSource', {
                 events: [
                       {
                           title: title,
                           start: susDay,
                           end : susEnd
                       }
                   ],
                   allDay:true,
                   color: eventColor,   
                   textColor: 'black'
               } );
                 susDay = null;
               susEnd = null;
                collectEventForLine(map); /* line create, if want mark click*/
               }      //else end
           
               });   //click event end
       }
        
        
      }  // initmap end
      
      
      //createLine Start 
      function createLine(latLngList, map){
         var bounds = new google.maps.LatLngBounds();
        
         for(var i=0; i<latLngList.length;i++){
            if(i+1 == latLngList.length){
              break; 
            }
            calcRoute(latLngList[i], latLngList[i+1]);
            bounds.extend(latLngList[i]);
            bounds.extend(latLngList[i+1]);
         }
         function calcRoute(source, destination){
       movingPath[c] = new google.maps.Polyline({
          path: [source, destination],
          geodesic: true,
          strokeColor: '#000000',
          strokeOpacity: 1.0,
          strokeWeight: 1
        });
         movingPath[c].setMap(map);
       c++;
         } // calcRoute End
      } // createLine End
    
    
       /* ------------------------initMap() start --------------------------------------------------------*/
      /* ------------------------Calendar ÃªÂ´ï¿½ Ã«Â Â¨ Ã¬ï¿½ Â¤ï¿½ ï¿½ Â¸Ã«Â¦Â½ï¿½ ï¿½ Â¸ Ã¬ï¿½ ï¿½ Ã¬ï¿½ ï¿½  ------------------------------------------------*/
      
   
      
        $(document).ready(function(){
       // page is now ready, initialize the calendar...
       $('#calendar').fullCalendar({
           // put your options and callbacks here
               defaultDate : todayDate
              
               , eventDrop: function() {
                 
                    for(abcd = 0; abcd < movingPath.length;abcd++){
                      if(movingPath[abcd] != null){
                          movingPath[abcd].setMap(null);
                          movingPath[abcd] = null;
                          /* alert('in for'+abcd); */
                          
                        }
               }
                  allEvent = [];
                  collectEventForLine(map);
                    /* alert("event drop"); */
                    collectEvent();
                 }
       
       
               , editable : true
               , eventStartEditable : true
                , resizable: true
                , eventLimit : true
                
                , dayClick: function(date, jsEvent, view) {
                   if(susDay == null){
                    susDay = String(date.format())
                    $(this).css('background-color', 'green').text('start');
                    
                   }
                    else if(susEnd == null){
                   susEnd = String(date.format())
                   $(this).css('background-color', 'red').text('end');
                    
                    };
                /*    alert('Clicked on: ' + date.format());
                    alert('Coordinates: ' + jsEvent.pageX + ',' + jsEvent.pageY);
                    alert('Current view: ' + view.name); */

                    // change the day's background color just for fun
                    /*  $(this).css('background-color', 'green'); */
                },
       });
   });

        $( document).ready(function() {
        	obj = document.getElementById('json'); 
        });   
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBnrWQ2SHvedNrvdozheYo32pHwCbuvPgs&callback=initMap">
    </script>  
    <br><br>
    <div style="font-size: 30px; font-weight: bold; margin-left: 130px;">Register Your Carpool !</div>
    <br><br>
	<div class="id-card-box" style="width: 100%">
	<form
		action="/ioc/what we do/celebrate olympic games/from candidate to host city/calendareventlisting"
		class="calendar-form">

			<div class="item-list" style="width: 1400px; padding-right: 30px;">
					<div class="row" style="font-size: 20px;">
						<span class="label">Location</span> 
						 <select class="destination">
							<option>목적지를 지도에 마크하세요</option>
						</select> 
						<select  class="start">
							<option>출발지를 지도에 마크하세요</option>
						</select>
					</div>
					<div class="row" style="font-size: 20px;">
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
					</div>

					<div class="row"  style="font-size: 20px;">
						<span class="label">Time</span> 
						<select class="minute">
							<option value="minute">MINUTE</option>
							<option value="10">10</option>
							<option value="20">20</option>
							<option value="30">30</option>
							<option value="40">40</option>
							<option value="50">50</option>
							<option value="00">00</option>
						</select>
						<select class="hour">
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
						<select class="person">
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
						<select class="price">
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