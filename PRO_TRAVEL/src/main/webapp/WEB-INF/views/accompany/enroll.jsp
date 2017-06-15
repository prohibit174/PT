<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp"%>


<!DOCTYPE html>
<html lang="en">
<head>
<title>Olympic Photos, Galleries &amp; Slideshows | Top Olympic
   Images</title>
<meta charset="utf-8" />
<meta name="googlepagetype" content="MediaLanding" />
<meta name="googlepageid"
   content="{B4C7581B-72EC-4637-A3ED-52F225BFE686}" />
<meta name="description"
   content="View the best photos from all past Olympic Games, including Rio 2016, Sochi 2014 and London 2012. Galleries of 52 Games and 56 Sports." />
<meta property="og:type" content="article" />
<meta property="og:url" content="https://www.olympic.org/photos" />
<meta property="article:published_time"
   content="2017-02-23T06:09:48+01:00" />
<meta property="article:modified_time"
   content="2017-02-23T06:09:48+01:00" />
<meta property="article:publisher" content="209361989215" />
<meta property="og:site_name" content="International Olympic Committee" />
<meta property="fb:admins" content="209361989215" />
<meta name="twitter:card" content="summary">
<meta name="twitter:site" content="@olympics">
<meta name="twitter:creator" content="@olympics">
<link rel="alternate" href="https://www.olympic.org/en/Home/Photos"
   hreflang="en" />
<link rel="alternate" href="https://www.olympic.org/fr-FR/Home/Photos"
   hreflang="fr" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<link rel="apple-touch-icon" sizes="57x57"
   href="/apple-touch-icon-57x57.png">
<link rel="apple-touch-icon" sizes="60x60"
   href="/apple-touch-icon-60x60.png">
<link rel="apple-touch-icon" sizes="72x72"
   href="/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon" sizes="76x76"
   href="/apple-touch-icon-76x76.png">
<link rel="apple-touch-icon" sizes="114x114"
   href="/apple-touch-icon-114x114.png">
<link rel="apple-touch-icon" sizes="120x120"
   href="/apple-touch-icon-120x120.png">
<link rel="apple-touch-icon" sizes="144x144"
   href="/apple-touch-icon-144x144.png">
<link rel="apple-touch-icon" sizes="152x152"
   href="/apple-touch-icon-152x152.png">
<link rel="apple-touch-icon" sizes="180x180"
   href="/apple-touch-icon-180x180.png">
<link rel="icon" type="image/png" href="/favicon-32x32.png"
   sizes="32x32">
<link rel="icon" type="image/png" href="/favicon-194x194.png"
   sizes="194x194">
<link rel="icon" type="image/png" href="/favicon-96x96.png"
   sizes="96x96">
<link rel="icon" type="image/png" href="/android-chrome-192x192.png"
   sizes="192x192">
<link rel="icon" type="image/png" href="/favicon-16x16.png"
   sizes="16x16">
<link rel="manifest" href="/manifest.json">
<link rel="mask-icon" href="/safari-pinned-tab.svg" color="#333333">
<meta name="msapplication-TileColor" content="#da532c">
<meta name="msapplication-TileImage" content="/mstile-144x144.png">
<meta name="theme-color" content="#ffffff">
<link media="all" rel="stylesheet" type="text/css"
   href="https://stillres.olympic.org/css/modules.css" />
<link media="all" rel="stylesheet" type="text/css"
   href="https://stillres.olympic.org/css/all.css" />

<link rel='stylesheet' href='/resources/css/accompany/fullcalendar.css' />
<script
   src='https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.18.1/moment.js'></script>
<script
   src='${pageContext.request.contextPath}/resources/js/accompanyJs/fullcalendar.js'></script>


<style>
#map {
   height: 600px;
   width: 50%;
   display: inline-block;
   float : left;
}
      /* css ㅅㅂ */
#calendar {
   width: 40%;
   display: inline-block;
   margin-left: 90px;
}

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
</style>


<!--[if lt IE 9]><link rel="stylesheet" type="text/css" href="https://stillres.olympic.org/css/ie.css" /><![endif]-->
</head>
<body>
   


   <div id="highlights-of-the-games"></div>
   <section class="text-post"
      itemscopeitemtype="http://schema.org/NewsArticle">
      <div class="main" style="margin-right: 150px;">
         <div class="main-holder photovideo">
            <section style="background-color: white";>

               <div id="wrapper">
                  <section class="banner-home alt "
                     itemtype="http://schema.org/Event" itemscope="">

                     <div class="bg-image">
                        <picture>

                        <source
                           srcset="http://d3b39vpyptsv01.cloudfront.net/photo/7/1/39cd2e0583595d057b00c7d40fba7218.jpg?interpolation=lanczos-none&fit=around|1024:350&crop=1024:350;*,*, https://stillmed.olympic.org/media/Images/OlympicOrg/Games/Winter/PyeongChang_2018/PyeongChang-2018-banner-2.jpg?interpolation=lanczos-none&fit=around|2048:700&crop=2048:700;*,* 2x"
                           media="(min-width: 768px)">
                        <!--[if IE 9]></video><![endif]--> <img
                           srcset="https://http://d3b39vpyptsv01.cloudfront.net/photo/7/1/39cd2e0583595d057b00c7d40fba7218.jpg?interpolation=lanczos-none&fit=around|1536:500&crop=1536:500?interpolation=lanczos-none&fit=around|768:250&crop=768:250;*,*, https://http://d3b39vpyptsv01.cloudfront.net/photo/7/1/39cd2e0583595d057b00c7d40fba7218.jpg?interpolation=lanczos-none&fit=around|1536:500&crop=1536:500;*,* 2x"
                           alt=""></picture>

                     </div>
                     <div class="text-box no-bg">

                        <div class="holder">
                           <strong class="title" itemprop="name">Have a nice trip with ProTravel!</strong>
                           <br> <br> <br> <br> <br> <br> <br> <br> <br>

                        </div>
                     </div>
                  </section>
               </div>
               <br>
               <div class="fc-toolbar fc-header-toolbar">
                  <div class="fc-left">
                     <h2>
                        Set my trip Plan2
                        <H2>
                  </div>
               </div>
               <br><br>
         <div id="map">   </div>
            <!-- css ㅅㅂ -->
                  <div id='calendar'></div>
<br>

              <script>
       var marker =[];
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
       
       /* added variables when the number of marker added   */
       var cor_name=[];//region name from DB
      var cor_lati=[];//cor_lati from DB
      var cor_longi=[];//cor_longi from DB
      var cor_zoom_level=[];//zoom_level from DB
      var cor_index=0;//count of cordinates from DB
         </script>
         <!-- this is codes for getting cordinates of cities from DB  -->
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
         <script>
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
                for(var a=0; a < marker.length; a++){
                   if(marker[a].title == cal[i].title){
                      latLngList.push(marker[a].getPosition());
                   }
                 }
             }
             
/*              for(var a=0; a < movingPath.length; a++){
                 console.log(movingPath[a].lat(), movingPath[a].lng() );
                 
               } */
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
        
      }  // initmap end
      
      
      //createLine Start 
      function createLine(latLngList, map){
         var bounds = new google.maps.LatLngBounds();
         var lineSymbol = {
                path: google.maps.SymbolPath.FORWARD_CLOSED_ARROW
              };
         
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
          icons: [{
               icon: lineSymbol,
               offset: '100%'
             }],
          geodesic: true,
          strokeColor: '#000000',
          strokeOpacity: 1.0,
          strokeWeight: 1
        });
            movingPath[c].setMap(map);
             c++;
             
             
         } // calcRoute End
      } // createLine End
      
      function revert(){
         //revert polylines
         for(var i=0; i<movingPath.length;i++){
            if(movingPath[i]!=null){
                movingPath[i].setMap(null);
            }
           }
         //revert calendar events
          $('#calendar').fullCalendar('removeEventSources');
         initVariables();
     }
      
      function initVariables(){
          //variables related to google maps
          latLngList=[];
          jsonEncode=null;
          movingPath = [];
          c = 0;
          //variables related to calendar(Fullcalendar)
          susDay = null;
          susEnd = null;
          allEvent=[];
          cal =[];
     }
    
      /* ------------------------Calendar ÃªÂ´ï¿½ Ã«Â Â¨ Ã¬ï¿½ Â¤ï¿½ ï¿½ Â¸Ã«Â¦Â½ï¿½ ï¿½ Â¸ Ã¬ï¿½ ï¿½ Ã¬ï¿½ ï¿½  ------------------------------------------------*/
      
   
      
        $(document).ready(function(){
       // page is now ready, initialize the calendar...
       $('#calendar').fullCalendar({
           // put your options and callbacks here
               defaultDate : todayDate,
               aspectRatio: 0.8
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
            </section>
         </div>
      </div>
   </section>
   <br>
       <div class="tab-section">
                            <form id="results-form" action="/accompany/enroll"  method="post" class="results-form">
                                <div class="row">
                                       <input type="hidden" name="json" value="" id="json">
                                   <input type="button" value="cancel" onclick="revert()">
                                   <input type="submit" value="send">

                                </div>
                            </form>
                        </div>
   <br>
   
   

   <%@include file="../include/footer.jsp"%>



</body>
</html>   