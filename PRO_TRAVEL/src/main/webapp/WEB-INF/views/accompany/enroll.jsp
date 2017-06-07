<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp"%>
<%@ include file="/WEB-INF/views/include/accompany_sidebar.jsp"%>

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
<!-- 
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
-->
<link rel='stylesheet' href='/resources/css/accompany/fullcalendar.css' />
<script
   src='https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.18.1/moment.js'></script>

<script
   src='${pageContext.request.contextPath}/resources/js/accompanyJs/fullcalendar.js'></script>

<style>
#map {
   height: 400px;
   width: 50%;
}
#calendar {
   width: 50%;
}
</style>


<!--[if lt IE 9]><link rel="stylesheet" type="text/css" href="https://stillres.olympic.org/css/ie.css" /><![endif]-->


 <!-- id confirm for map_callender_function.js-->
<script >
useridSu = '<%=session.getAttribute("login") %>'; 
console.log(useridSu);
</script>

</head>
<body>



   <div id="highlights-of-the-games"></div>
   <section class="text-post"
      itemscopeitemtype="http://schema.org/NewsArticle">
      <div class="main" style="margin-right: 150px;">
         <div class="main-holder photovideo">
            <section class="sets-section" style="background-color: white";>

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
               <div id="map"></div>
               <br>
               <div id='calendar'></div>

 <!-- function load -->
<script src='${pageContext.request.contextPath}/resources/js/accompanyJs/map_callender_function.js'></script>

 <!-- map load -->
<script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBnrWQ2SHvedNrvdozheYo32pHwCbuvPgs&callback=initMap">
    </script>   
    
   <form action="/accompany/enroll" method="post">
      <input type="hidden" name="json" value="" id="json">
      <input type="submit" value="send">
   </form>
   

            </section>
         </div>
      </div>
   </section>

   <%@include file="../include/footer.jsp"%>


</body>
</html>