<%@page import="org.jsoup.select.Elements"%>
<%@page import="org.jsoup.Jsoup"%>
<%@page import="org.jsoup.nodes.Document"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
   response.setHeader("P3P", "CP='CAO PSA CONi OTR OUR DEM ONL'");
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="/WEB-INF/views/include/header.jsp"%>
<%
   String id = (String) session.getAttribute("login");
   if (id != null) {
      request.setAttribute("id", id);
   }
%>

<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
#img_size{
width:200px;
height: 250px;}
</style>
</head>
<body onload="startTime()">

   <%-- <br><br><br><br><br><br><br>
<br><br><br><br><br><br><br>
<br><br><br><br><br><br><br>

<input type="text" id="id" value="${id }">

<c:set var="u_id" value="${id }"></c:set>

<c:if test="${id!=null}">
                              
<iframe width="500" height="500" src="http://127.0.0.1:5000?username=${id }" frameborder="1">
</iframe>                              

</c:if> --%>

   <script>
      var dataLayer = [ {
         "language" : "en",
         "section" : "Olympic Games",
         "subsection" : "",
         "newstopic" : "",
         "games" : "Sochi 2014",
         "season" : "Winter",
         "parentsport" : "",
         "sport" : "",
         "sportevent" : ""
      } ]
   </script>

   <!-- Google Tag Manager -->
   <noscript>
      <iframe src="//www.googletagmanager.com/ns.html?id=GTM-NTJZ3D"
         height="0" width="0" style="display: none; visibility: hidden"></iframe>
   </noscript>
   <script>
      (
            function(w, d, s, l, i) {
               w[l] = w[l] || [];
               w[l].push({
                  'gtm.start' : new Date().getTime(),
                  event : 'gtm.js'
               });
               var f = d.getElementsByTagName(s)[0], j = d
                     .createElement(s), dl = l != 'dataLayer' ? '&l='
                     + l : '';
               j.async = true;
               j.src = '//www.googletagmanager.com/gtm.js?id=' + i + dl;
               f.parentNode.insertBefore(j, f);
            })(window, document, 'script', 'dataLayer', 'GTM-NTJZ3D');
   </script>

   <script type="text/javascript">
      function startTime() {
         var today = new Date();
         var year = 2017;
         var month = today.getMonth() + 1;
         var day = today.getDate();
         var hour = today.getHours();
         var minute = today.getMinutes();
         var seconds = today.getSeconds();
         minute = checkTime(minute);
         seconds = checkTime(seconds);
         month = changeMonth(month);
         document.getElementById('today').innerHTML = month + " " + day
               + ", " + year + ", " + hour + ":" + minute + ":" + seconds;
         var time = setTimeout(startTime, 500);
      }

      function checkTime(i) {
         if (i < 10) {
            i = "0" + i
         }
         ; // 숫자가 10보다 작을 경우 앞에 0을 붙여줌
         return i;
      }

      function changeMonth(m) {
         if (m == 1) {
            m = 'Jan';
         } else if (m == 2) {
            m = 'Fed';
         } else if (m == 3) {
            m = 'Mar';
         } else if (m == 4) {
            m = 'Apr';
         } else if (m == 5) {
            m = 'May';
         } else if (m == 6) {
            m = 'Jun';
         } else if (m == 7) {
            m = 'Jul';
         } else if (m == 8) {
            m = 'Aug';
         } else if (m == 9) {
            m = 'Sep';
         } else if (m == 10) {
            m = 'Oct';
         } else if (m == 11) {
            m = 'Nov';
         } else {
            m = 'Dec';
         }

         return m;
      }
   </script>


   <!-- End Google Tag Manager -->

   <noscript>
      <div>Javascript must be enabled for the correct page display</div>
   </noscript>
   <a href="#main" class="accessibility">skip to content</a>


   <div id="wrapper">
      <section class="banner-gallery" style="height: 500px;">
      <div class="gallery-holder" style="bottom: 146px;">
         <span class="mask-l"></span> <span class="mask-r"></span> <a
            class="btn-prev" href="#"
            style="padding-top: 10px; padding-top: 10px; top: 390px; z-index: 10;"><span
            class="icon-arrow-left"><span class="hide">prev</span></span></a> <a
            class="btn-next" href="#"
            style="padding-top: 10px; top: 390px; z-index: 10;"><span
            class="icon-arrow-right"><span class="hide">next</span></span></a>
         <ul style="position: relative; height: 80%; margin-left: -1060px;">
            <li>

               <div class="box-holder">
                  <a class="cta-link" href="/accompany/enroll" target="_blank"
                     style="padding-top: 29px; top: 460px; z-index: 10; padding-right: 0px; padding-left: 70px;">
                     &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspRegister
                     Your Trip-Plan <em class="icon-arrow-right"><span
                        class="hide">arrow right</span></em>
                  </a>
                  <div class="box ">
                     <a href="/resources/upload/Italy.JPG"> <picture class="image">
                        <!--[if IE 9]><video style="display: none;"><![endif]--> <source
                           srcset="/resources/upload/Italy.png" media="(min-width: 768px)">
                        <!--[if IE 9]></video><![endif]--> <!--    <img srcset="/resources/upload/italy.jpg" width="50" height="50" >
 --> <img srcset="/resources/upload/Italy.png" alt="FISCHER Birgit"></picture>
                        <div
                           style="position: relative; top: -370px; text-align: center; z-index: 9; padding-left: 0px; padding-right: 0px;">
                           <img src="/resources/upload/Italy_logo.gif"
                              style="width: 500px; display: inline-block;">
                        </div>
                        <div class="title-row"
                           style="height: 35px; top: 460px; padding-top: 10px;">
                           <div class="profile-row">
                              <div class="flag-image">
                                 <div class="flag18 ita">
                                    <div class="mask"></div>
                                 </div>
                              </div>
                              <span>Italy</span>
                           </div>
                           <strong class="name">Vatican Museums</strong>
                        </div>
                     </a>
                  </div>
               </div>
            </li>
            <li>
               <div class="box-holder">
                  <a class="cta-link" href="/accompany/enroll" target="_blank"
                     style="padding-top: 29px; top: 460px; z-index: 10; padding-right: 0px; padding-left: 70px;">
                     &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspRegister
                     Your Trip-Plan <em class="icon-arrow-right"><span
                        class="hide">arrow right</span></em>
                  </a>
                  <div class="box ">
                     <a href="/resources/upload/spain.JPG"> <picture class="image">
                        <!--[if IE 9]><video style="display: none;"><![endif]--> <source
                           srcset="/resources/upload/spain.JPG" media="(min-width: 768px)">
                        <!--[if IE 9]></video><![endif]--> <!--    <img srcset="/resources/upload/italy.jpg" width="50" height="50" >
 --> <img srcset="/resources/upload/spain.JPG" alt="FISCHER Birgit"></picture>
                        <div
                           style="position: relative; top: -370px; text-align: center; z-index: 9; padding-left: 0px; padding-right: 0px;">
                           <img src="/resources/upload/spain_logo.gif"
                              style="width: 500px; display: inline-block;">
                        </div>
                        <div class="title-row"
                           style="height: 35px; top: 460px; padding-top: 10px;">
                           <div class="profile-row">
                              <div class="flag-image">
                                 <div class="flag18 esp">
                                    <div class="mask"></div>
                                 </div>
                              </div>
                              <span>Spain</span>
                           </div>
                           <strong class="name">Spain Gaudi</strong>
                        </div>
                     </a>
                  </div>
               </div>
            </li>
            <li>
               <div class="box-holder">
                  <a class="cta-link" href="/accompany/enroll" target="_blank"
                     style="padding-top: 29px; top: 460px; z-index: 10; padding-right: 0px; padding-left: 70px;">
                     &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspRegister
                     Your Trip-Plan <em class="icon-arrow-right"><span
                        class="hide">arrow right</span></em>
                  </a>
                  <div class="box ">
                     <a href="/usain-bolt"> <picture class="image"> <!--[if IE 9]><video style="display: none;"><![endif]-->

                        <source srcset="/resources/upload/europe.JPG"
                           media="(min-width: 768px)"> <!--[if IE 9]></video><![endif]-->

                        <img srcset="/resources/upload/europe.JPG" alt="BOLT Usain"></picture>
                        <div
                           style="position: relative; top: -370px; text-align: center; z-index: 9; padding-left: 0px; padding-right: 0px;">
                           <img src="/resources/upload/europe_logo.gif"
                              style="width: 500px; display: inline-block;">
                        </div>
                        <div class="title-row"
                           style="height: 35px; top: 460px; padding-top: 10px;">
                           <div class="profile-row">
                              <div class="flag-image">
                                 <div class="flag18 cze">
                                    <div class="mask"></div>
                                 </div>
                              </div>
                              <span>Czech republic</span>
                           </div>
                           <strong class="name">Skydiving in Czech republic</strong>
                        </div>
                     </a>
                  </div>
               </div>
            </li>

         </ul>
      </div>
      </section>

      <article class="profile-box"> </article>
      <section class="id-card gallery-js-ready games2014-2">
      <div class="holder">

         <div class="frame">
            <ul>
               <li>
                  <div class="text-box">
                     <strong class="title">TODAY</strong> <a id="today"
                        style="cursor: pointer; font-size: 30px;"></a>
                  </div>
               </li>
               <li>
                  <div class="text-box">
                     <strong class="title">ACCOMPANY</strong> <a
                        href="/accompany/searchGroup">${accompanycount }</a>
                  </div>
               </li>
               <li>
                  <div class="text-box">
                     <strong class="title">CARPOOL</strong> <a href="/carpool/listAll">${carpoolcount }</a>
                  </div>
               </li>
               <li>
                  <div class="text-box">
                     <strong class="title">TRAVEL ITEM</strong> <a
                        href="/product/product_list">${productAll }</a>
                  </div>
               </li>
               <li>
                  <div class="text-box">
                     <strong class="title">BLOG</strong> <a href="/blog/blogMain">${blogcount}</a>
                  </div>
               </li>
            </ul>
         </div>
         <div class="switcher"></div>
      </div>
      </section>

   </div>

   <section class="cta-carousel-news">
   <div class="holder">
      <div class="heading">
         <h2>ACCOMPANY</h2>
         <ul class="add-links">

         </ul>
      </div>
   </div>
   <div class="frame2">
      <span class="mask-l" style="width: 91.5px;">mask left</span> <span
         class="mask-r" style="width: 91.5px;">mask right</span>
      <div class="holder">
         <div class="frame">
            <a class="btn-prev disabled" style="border-top-width: 10px;"
               href="#"> <span class="icon-arrow-left"> <span
                  class="hide">prev</span>
            </span>
            </a> <a class="btn-next" href="#" style="border-top-width: 10px;"> <span
               class="icon-arrow-right"> <span class="hide">next</span>
            </span>
            </a>
            <ul class="cta-carousel-list" data-slides=""
               style="margin-left: 0px; width: 5760px;">

               <li class=""><article>
						<div id="map1"
							style="margin-top: 0px; left: 0px; height: 191px; width: 340px"></div>
						<span class="news-topic-label sochi2014"> <script>
							
						</script> <c:set var="doneLoop" value="false" /> <c:forEach
								items="${map1}" var="list">
								<c:if test="${not doneLoop}">
									<c:if test="${1 == 1}"> 
							${list.title}
							<c:set var="doneLoop" value="true" />
									</c:if>
								</c:if>
							</c:forEach></span> <br>
						<h2>
							<a href="/news/sochi-2014-bids-farewell"> <c:set
									var="doneLoop" value="false" /> <c:forEach items="${map1}"
									var="list">
									<c:if test="${not doneLoop}">
										<c:if test="${1 == 1}"> 
							${list.content}
							<c:set var="doneLoop" value="true" />
										</c:if>
									</c:if>
								</c:forEach></a>
						</h2>
						<time datetime="23 Feb 2014"></time> <c:set var="doneLoop"
							value="false" /> <c:forEach items="${map1}" var="list">
							<c:if test="${not doneLoop}">
								<c:if test="${1 == 1}"> 
							${list.u_id}
							<c:set var="doneLoop" value="true" />
								</c:if>
							</c:if>
						</c:forEach> </time> </article></li>

					<li class=""><article>
						<div id="map2"
							style="margin-top: 0px; left: 0px; height: 191px; width: 340px"></div>
						<span class="news-topic-label sochi2014"> <script>
							
						</script> <c:set var="doneLoop" value="false" /> <c:forEach
								items="${map2}" var="list">
								<c:if test="${not doneLoop}">
									<c:if test="${1 == 1}"> 
							${list.title}
							<c:set var="doneLoop" value="true" />
									</c:if>
								</c:if>
							</c:forEach></span> <br>
						<h2>
							<a href="/news/sochi-2014-bids-farewell"> <c:set
									var="doneLoop" value="false" /> <c:forEach items="${map2}"
									var="list">
									<c:if test="${not doneLoop}">
										<c:if test="${1 == 1}"> 
							${list.content}
							<c:set var="doneLoop" value="true" />
										</c:if>
									</c:if>
								</c:forEach></a>
						</h2>
						<time datetime="23 Feb 2014"></time> <c:set var="doneLoop"
							value="false" /> <c:forEach items="${map2}" var="list">
							<c:if test="${not doneLoop}">
								<c:if test="${1 == 1}"> 
							${list.u_id}
							<c:set var="doneLoop" value="true" />
								</c:if>
							</c:if>
						</c:forEach> </time> </article></li>

					<li class=""><article>
						<div id="map3"
							style="margin-top: 0px; left: 0px; height: 191px; width: 340px"></div>
						<span class="news-topic-label sochi2014"> <script>
							
						</script> <c:set var="doneLoop" value="false" /> <c:forEach
								items="${map3}" var="list">
								<c:if test="${not doneLoop}">
									<c:if test="${1 == 1}"> 
							${list.title}
							<c:set var="doneLoop" value="true" />
									</c:if>
								</c:if>
							</c:forEach></span> <br>
						<h2>
							<a href="/news/sochi-2014-bids-farewell"> <c:set
									var="doneLoop" value="false" /> <c:forEach items="${map3}"
									var="list">
									<c:if test="${not doneLoop}">
										<c:if test="${1 == 1}"> 
							${list.content}
							<c:set var="doneLoop" value="true" />
										</c:if>
									</c:if>
								</c:forEach></a>
						</h2>
						<time datetime="23 Feb 2014"></time> <c:set var="doneLoop"
							value="false" /> <c:forEach items="${map3}" var="list">
							<c:if test="${not doneLoop}">
								<c:if test="${1 == 1}"> 
							${list.u_id}
							<c:set var="doneLoop" value="true" />
								</c:if>
							</c:if>
						</c:forEach> </time> </article></li>

					<li class=""><article>
						<div id="map4"
							style="margin-top: 0px; left: 0px; height: 191px; width: 340px"></div>
						<span class="news-topic-label sochi2014"> <script>
							
						</script> <c:set var="doneLoop" value="false" /> <c:forEach
								items="${map4}" var="list">
								<c:if test="${not doneLoop}">
									<c:if test="${1 == 1}"> 
							${list.title}
							<c:set var="doneLoop" value="true" />
									</c:if>
								</c:if>
							</c:forEach></span> <br>
						<h2>
							<a href="/news/sochi-2014-bids-farewell"> <c:set
									var="doneLoop" value="false" /> <c:forEach items="${map4}"
									var="list">
									<c:if test="${not doneLoop}">
										<c:if test="${1 == 1}"> 
							${list.content}
							<c:set var="doneLoop" value="true" />
										</c:if>
									</c:if>
								</c:forEach></a>
						</h2>
						<time datetime="23 Feb 2014"></time> <c:set var="doneLoop"
							value="false" /> <c:forEach items="${map4}" var="list">
							<c:if test="${not doneLoop}">
								<c:if test="${1 == 1}"> 
							${list.u_id}
							<c:set var="doneLoop" value="true" />
								</c:if>
							</c:if>
						</c:forEach> </time> </article></li>

					<li class=""><article>
						<div id="map5"
							style="margin-top: 0px; left: 0px; height: 191px; width: 340px"></div>
						<span class="news-topic-label sochi2014"> <script>
							
						</script> <c:set var="doneLoop" value="false" /> <c:forEach
								items="${map5}" var="list">
								<c:if test="${not doneLoop}">
									<c:if test="${1 == 1}"> 
							${list.title}
							<c:set var="doneLoop" value="true" />
									</c:if>
								</c:if>
							</c:forEach></span> <br>
						<h2>
							<a href="/news/sochi-2014-bids-farewell"> <c:set
									var="doneLoop" value="false" /> <c:forEach items="${map5}"
									var="list">
									<c:if test="${not doneLoop}">
										<c:if test="${1 == 1}"> 
							${list.content}
							<c:set var="doneLoop" value="true" />
										</c:if>
									</c:if>
								</c:forEach></a>
						</h2>
						<time datetime="23 Feb 2014"></time> <c:set var="doneLoop"
							value="false" /> <c:forEach items="${map5}" var="list">
							<c:if test="${not doneLoop}">
								<c:if test="${1 == 1}"> 
							${list.u_id}
							<c:set var="doneLoop" value="true" />
								</c:if>
							</c:if>
						</c:forEach> </time> </article></li>


					<script>
						var cor_region = [];
						var longi = [];
						var lati = [];
						var index = 0;
						var latLngList = [];

						var cor_region_2 = [];
						var longi_2 = [];
						var lati_2 = [];
						var index_2 = 0;
						var latLngList_2 = [];

						var cor_region_3 = [];
						var longi_3 = [];
						var lati_3 = [];
						var index_3 = 0;
						var latLngList_3 = [];

						var cor_region_4 = [];
						var longi_4 = [];
						var lati_4 = [];
						var index_4 = 0;
						var latLngList_4 = [];

						var cor_region_5 = [];
						var longi_5 = [];
						var lati_5 = [];
						var index_5 = 0;
						var latLngList_5 = [];
					</script>
					<c:forEach items="${map1}" var="list">
						<c:set var="cor_region" value="${list.cor_region}"></c:set>
						<c:set var="longi" value="${list.cor_longi}"></c:set>
						<c:set var="lati" value="${list.cor_lati}"></c:set>
						<script>
							cor_region[index] = "${cor_region}";
							longi[index] = "${longi}";
							lati[index] = "${lati}";
							index++;
						</script>
					</c:forEach>

					<c:forEach items="${map2}" var="list">
						<c:set var="cor_region_2" value="${list.cor_region}"></c:set>
						<c:set var="longi_2" value="${list.cor_longi}"></c:set>
						<c:set var="lati_2" value="${list.cor_lati}"></c:set>
						<script>
							cor_region_2[index_2] = "${cor_region_2}";
							longi_2[index_2] = "${longi_2}";
							lati_2[index_2] = "${lati_2}";
							index_2++;
						</script>
					</c:forEach>

					<c:forEach items="${map3}" var="list">
						<c:set var="cor_region_3" value="${list.cor_region}"></c:set>
						<c:set var="longi_3" value="${list.cor_longi}"></c:set>
						<c:set var="lati_3" value="${list.cor_lati}"></c:set>
						<script>
							cor_region_3[index_3] = "${cor_region_3}";
							longi_3[index_3] = "${longi_3}";
							lati_3[index_3] = "${lati_3}";
							index_3++;
						</script>
					</c:forEach>

					<c:forEach items="${map3}" var="list">
						<c:set var="cor_region_3" value="${list.cor_region}"></c:set>
						<c:set var="longi_3" value="${list.cor_longi}"></c:set>
						<c:set var="lati_3" value="${list.cor_lati}"></c:set>
						<script>
							cor_region_3[index_3] = "${cor_region_3}";
							longi_3[index_3] = "${longi_3}";
							lati_3[index_3] = "${lati_3}";
							index_3++;
						</script>
					</c:forEach>

					<c:forEach items="${map4}" var="list">
						<c:set var="cor_region_4" value="${list.cor_region}"></c:set>
						<c:set var="longi_4" value="${list.cor_longi}"></c:set>
						<c:set var="lati_4" value="${list.cor_lati}"></c:set>
						<script>
							cor_region_4[index_4] = "${cor_region_4}";
							longi_4[index_4] = "${longi_4}";
							lati_4[index_4] = "${lati_4}";
							index_4++;
						</script>
					</c:forEach>

					<c:forEach items="${map5}" var="list">
						<c:set var="cor_region_5" value="${list.cor_region}"></c:set>
						<c:set var="longi_5" value="${list.cor_longi}"></c:set>
						<c:set var="lati_5" value="${list.cor_lati}"></c:set>
						<script>
							cor_region_5[index_5] = "${cor_region_5}";
							longi_5[index_5] = "${longi_5}";
							lati_5[index_5] = "${lati_5}";
							index_5++;
						</script>
					</c:forEach>
					<script>
						var map1;
						var map2;
						var map3;
						var map4;
						var map5;

						function initMap() {
							var sumLat = Number(0);
							var sumLng = Number(0);
							for (var i = 0; i < index; i++) {
								sumLat += Number(lati[i]);
								sumLng += Number(longi[i]);
							}
							var avgLat = sumLat / index;
							var avgLng = sumLng / index;
							var center = {
								lat : avgLat,
								lng : avgLng
							};

							var sumLat = Number(0);
							var sumLng = Number(0);
							for (var i = 0; i < index_2; i++) {
								sumLat += Number(lati_2[i]);
								sumLng += Number(longi_2[i]);
							}
							var avgLat = sumLat / index_2;
							var avgLng = sumLng / index_2;
							var center_2 = {
								lat : avgLat,
								lng : avgLng
							};

							var sumLat = Number(0);
							var sumLng = Number(0);
							for (var i = 0; i < index_3; i++) {
								sumLat += Number(lati_3[i]);
								sumLng += Number(longi_3[i]);
							}
							var avgLat = sumLat / index_3;
							var avgLng = sumLng / index_3;
							var center_3 = {
								lat : avgLat,
								lng : avgLng
							};

							var sumLat = Number(0);
							var sumLng = Number(0);
							for (var i = 0; i < index_4; i++) {
								sumLat += Number(lati_4[i]);
								sumLng += Number(longi_4[i]);
							}
							var avgLat = sumLat / index_4;
							var avgLng = sumLng / index_4;
							var center_4 = {
								lat : avgLat,
								lng : avgLng
							};

							var sumLat = Number(0);
							var sumLng = Number(0);
							for (var i = 0; i < index_5; i++) {
								sumLat += Number(lati_5[i]);
								sumLng += Number(longi_5[i]);
							}
							var avgLat = sumLat / index_5;
							var avgLng = sumLng / index_5;
							var center_5 = {
								lat : avgLat,
								lng : avgLng
							};

							map1 = new google.maps.Map(document
									.getElementById('map1'), {
								zoom : 3,
								center : center
							});

							map2 = new google.maps.Map(document
									.getElementById('map2'), {
								zoom : 2,
								center : center_2
							});

							map3 = new google.maps.Map(document
									.getElementById('map3'), {
								zoom : 3,
								center : center_3
							});

							map4 = new google.maps.Map(document
									.getElementById('map4'), {
								zoom : 2,
								center : center_4
							});

							map5 = new google.maps.Map(document
									.getElementById('map5'), {
								zoom : 5,
								center : center_5
							});

							for (i = 0; i < index; i++) {
								var latlng = {
									lat : Number(lati[i]),
									lng : Number(longi[i])
								};
								var marker = new google.maps.Marker(
										{
											position : latlng,
											map : map1,
											title : cor_region[i],
											icon : "http://www.stubbyplanner.com/img_v8/selectcityICON_red.png"
										});
								marker.setMap(map1);
								latLngList.push(latlng);
							}

							for (i = 0; i < index_2; i++) {
								var latlng_2 = {
									lat : Number(lati_2[i]),
									lng : Number(longi_2[i])
								};
								var marker_2 = new google.maps.Marker(
										{
											position : latlng_2,
											map : map2,
											title : cor_region_2[i],
											icon : "http://www.stubbyplanner.com/img_v8/selectcityICON_red.png"
										});
								marker_2.setMap(map2);
								latLngList_2.push(latlng_2);
							}

							for (i = 0; i < index_3; i++) {
								var latlng_3 = {
									lat : Number(lati_3[i]),
									lng : Number(longi_3[i])
								};
								var marker_3 = new google.maps.Marker(
										{
											position : latlng_3,
											map : map3,
											title : cor_region_3[i],
											icon : "http://www.stubbyplanner.com/img_v8/selectcityICON_red.png"
										});
								marker_3.setMap(map3);
								latLngList_3.push(latlng_3);
							}

							for (i = 0; i < index_4; i++) {
								var latlng_4 = {
									lat : Number(lati_4[i]),
									lng : Number(longi_4[i])
								};
								var marker_4 = new google.maps.Marker(
										{
											position : latlng_4,
											map : map4,
											title : cor_region_4[i],
											icon : "http://www.stubbyplanner.com/img_v8/selectcityICON_red.png"
										});
								marker_4.setMap(map4);
								latLngList_4.push(latlng_4);
							}

							for (i = 0; i < index_5; i++) {
								var latlng_5 = {
									lat : Number(lati_5[i]),
									lng : Number(longi_5[i])
								};
								var marker_5 = new google.maps.Marker(
										{
											position : latlng_5,
											map : map5,
											title : cor_region_5[i],
											icon : "http://www.stubbyplanner.com/img_v8/selectcityICON_red.png"
										});
								marker_5.setMap(map5);
								latLngList_5.push(latlng_5);
							}

							function createLine(latLngList, map) {
								var movingPath = new google.maps.Polyline({
									path : latLngList,
									geodesic : true,
									strokeColor : '#000000',
									strokeOpacity : 10.0,
									strokeWeight : 1
								});
								if (latLngList.length > 1) {
									movingPath.setMap(map);
								}
							}
							createLine(latLngList, map1);
							createLine(latLngList_2, map2);
							createLine(latLngList_3, map3);
							createLine(latLngList_4, map4);
							createLine(latLngList_5, map5);

						}
					</script>


            </ul>
         </div>
      </div>
   </div>
   </section>

   <div id="main">


      <hr>
      <section class="results ajax-area no-history"
         data-tmpl="athleteResults_tmpl">
      <div class="heading">
         <h2>CARPOOL</h2>
         <ul class="add-links">

         </ul>
      </div>

      <ul class="table2 ajax-content">
         <li>
            <div class="th col-first">EMPTY</div>
            <div class="th col1">DRIVER</div> <!-- <div class="th col2"> Sports </div> -->
            <div class="th col4">START</div>
         </li>

         <c:forEach items="${carpoolAll}" var="list">
            <li>
               <div class="td col-first">
                  <strong>${list.c_person }</strong>
               </div>
               <div class="td col1">



                  <a href="/victor-an"> <picture class="picture"> <img
                        src="/resources/upload/${list.u_img }     " width="50"
                        height="50"> <span class="mask"></span> </picture>
                  </a>
               </div>
               <div class="td col2">

                  <div class="area">
                     <strong> <a href="/short-track-speed-skating">
                           ${list.u_name } </a>
                     </strong>
                  </div>
               </div>
               <div class="td col4">


                  <div class="area">
                     <strong>${list.start_point }->${list.dest_point}
                        ${list.c_hour}:${list.c_minute }</strong>
                  </div>
               </div>
            </li>
         </c:forEach>

      </ul>
      <span class="btn-more"> <a href="/carpool/listAll">More</a>
      </span> </section>
      <hr>
      <section class="mosaic-box"> <header class="heading">
      <h2>BLOG</h2>
      <ul class="add-links">
         <li><a href="/blog/blogMain">Go to Blog →</a></li>
      </ul>
      <ul class="add-links">
         <li>
            <!--  <a href="/videos/sochi-2014">Go to Photos →</a> -->
         </li>
      </ul>
      </header>

      <div class="ajax-area-mosaic" data-tmpl="photoItem_tmpl">
         <div class="Collage effect-parent images ajax-content">
            <c:forEach items="${blogVO}" var="blogVO" varStatus="status">
               <c:choose>
                  <c:when test="${status.count%3==1}">
                     <li itemscope="" itemtype="http://schema.org/ImageObject"
                        class="same-height same-height-left " style="height: 367px;">
                        <a href="/blog/myBlog?u_id=${blogVO.u_id }" target="_blank">
                           <picture class="img"> <img
                              src="/resources/upload/${blogVO.b_img }" alt=""></picture>
                     </a>
                        <h1>
                           <a href="/blog/myBlog?u_id=${blogVO.u_id }" target="_blank">${blogVO.b_title }</a>
                        </h1> <!-- <span class="sss-picture"></span> --> <span>${blogVO.u_name }</span>
                     </li>
                  </c:when>

                  <c:when test="${status.count%3==2 }">
                     <li class="same-height" style="height: 367px;"><a
                        href="/blog/myBlog?u_id=${blogVO.u_id }" target="_blank"> <picture
                              class="img"> <img
                              src="/resources/upload/${blogVO.b_img }" alt=""></picture>
                     </a>
                        <h1>
                           <a href="/blog/myBlog?u_id=${blogVO.u_id }" target="_blank">${blogVO.b_title }</a>
                        </h1> <!-- <span class="sss-picture"></span> --> <span>${blogVO.u_name }</span>
                     </li>
                  </c:when>

                  <c:otherwise>
                     <li itemscope="" itemtype="http://schema.org/ImageObject"
                        class="same-height same-height-right" style="height: 367px;">
                        <a href="/blog/myBlog?u_id=${blogVO.u_id }" target="_blank">
                           <picture class="img"> <img
                              src="/resources/upload/${blogVO.b_img }" alt=""></picture>
                     </a>
                        <h1>
                           <a href="/blog/myBlog?u_id=${blogVO.u_id }" target="_blank">${blogVO.b_title }</a>
                        </h1> <!-- <span class="sss-picture"></span> --> <span>${blogVO.u_name }</span>
                     </li>
                  </c:otherwise>
               </c:choose>
            </c:forEach>
            



            <div class="Image_Wrapper scroll-item">
               
            </div>


            <div class="Image_Wrapper scroll-item">
               
            </div>

            <div class="Image_Wrapper scroll-item">
               
            </div>

            <div class="Image_Wrapper scroll-item">
               
            </div>

            <div class="Image_Wrapper scroll-item">
               
            </div>

            <div class="Image_Wrapper scroll-item">
               
            </div>
         </div>
         <span class="btn-more"><a
            href="/ajaxscript/loadmoremedias/{535B8008-29D0-44BB-8B14-E2B29CC79DD5}/6/0/"
            title="More">More</a></span>
      </div>

      </section>
      <hr>
      <section class="game-results-box mosaic-box"> <!--La classe "mosaic-box sera a supprimer apres la creation de la gallery"-->
      <div class="heading">
         <h2>TRAVEL ITEM</h2>
         <ul class="add-links">
            <li><a href="/product/product_list">Go to Travel Item
                  &rarr;</a></li>
         </ul>
      </div>
      
      <div class="" data-tmpl="photoItem_tmpl">
         <div class="Collage effect-parent images ajax-content">
             <c:forEach var="product" items="${list}">
                        <li><a
                           href="/product/product_detail${pageMaker.makeSearch(pageMaker.cri.page) }&p_num=${product.p_num }"
                        > 
                              <picture id="img_size"> <c:if
                                 test="${product.p_img!=null}">
                                 <c:set var="head"
                                    value="${fn:substring(product.p_img, 0, fn:length(product.p_img)-4) }"></c:set>
                                 <c:set var="pattern"
                                    value="${fn:substring(product.p_img, fn:length(head)+1, fn:length(product.p_img)) }"></c:set>
                                 <c:set var="small" value="_small"></c:set>

                                 <c:choose>
                                    <c:when
                                       test="${pattern=='jpg' || pattern =='gif' || pattern =='png'|| pattern =='PNG' }">
                                       <!-- <img srcset="resources/upload/${head }_small.${pattern}" alt="img /" style="width:200px; height:250px;> -->
                                       <%-- <img src="/resources/upload/${head}${small}.${pattern}"  --%>
                                       <img src="/resources/upload/${product.p_img }" id="img_size" style="width:200px; height:250px;">
                                          
                                    </c:when>
                                    <c:otherwise>
                                       <c:out value="No IMAGE"></c:out>
                                    </c:otherwise>
                                 </c:choose>
                              </c:if> <%-- <img srcset="${product.p_img}"> --%> </picture>
                        </a>
                           <h2 itemprop="name">

                              <a href="/product/product_detail${pageMaker.makeSearch(pageMaker.cri.page) }&p_num=${product.p_num }""
                                 itemprop="url" style="color: DarkSlateGray";>${product.p_name }</a>

                           </h2> <span>판매자: ${product.u_id }</span></li>
                     </c:forEach>



            <div class="Image_Wrapper scroll-item">
               
            </div>


            <div class="Image_Wrapper scroll-item">
               
            </div>

            <div class="Image_Wrapper scroll-item">
               
            </div>

            <div class="Image_Wrapper scroll-item">
               
            </div>

            <div class="Image_Wrapper scroll-item">
               
            </div>

            <div class="Image_Wrapper scroll-item">
               
            </div>
         </div>
         <span class="btn-more"><a
            href="/product/product_list"
            title="More">More</a></span>
      </div>
      
      

      
      </section>

      <hr>

   </div>
   </div>


   <a href="#wrapper" class="accessibility">back to top</a>

   <div class="popup-holder">
      <div id="popup2" class="lightbox-link simple-size">
         <div class="share-social">
            <h2>Share this!</h2>
            <ul class="social-networks">
               <li><a
                  href="http://www.facebook.com/sharer/sharer.php?u=https://www.olympic.org/sochi-2014"
                  onclick="ga('send', 'social', 'Facebook', 'share', 'https://www.olympic.org/sochi-2014');"
                  class="facebook" target="_blank"></a></li>
               <li><a
                  href="http://twitter.com/share?url=https://www.olympic.org/sochi-2014&text=Sochi Olympics - 2014 Winter Games in Russia results &amp; videos&via=olympics"
                  onclick="ga('send', 'social', 'Twitter', 'share', 'https://www.olympic.org/sochi-2014');"
                  class="twitter" target="_blank"></a></li>
               <li><a
                  href="http://www.linkedin.com/shareArticle?url=https://www.olympic.org/sochi-2014&title=Sochi Olympics - 2014 Winter Games in Russia results &amp; videos&summary=Sochi Olympics - 2014 Winter Games in Russia results &amp; videos"
                  onclick="ga('send', 'social', 'Linkedin', 'share', 'https://www.olympic.org/sochi-2014');"
                  class="linkedin" target="_blank"></a></li>
               <li><a
                  href="https://pinterest.com/pin/create/button/?url=https://www.olympic.org/sochi-2014&media=&description=Sochi Olympics - 2014 Winter Games in Russia results &amp; videos"
                  onclick="ga('send', 'social', 'Pinterest', 'share', 'https://www.olympic.org/sochi-2014');"
                  class="pinterest" target="_blank"></a></li>
               <li><a
                  href="http://vk.com/share.php?url=https://www.olympic.org/sochi-2014&title=Sochi Olympics - 2014 Winter Games in Russia results &amp; videos&description=Sochi Olympics - 2014 Winter Games in Russia results &amp; videos&image="
                  onclick="ga('send', 'social', 'Vkontakte', 'share', 'https://www.olympic.org/sochi-2014');"
                  class="vkontakte" target="_blank"></a></li>
            </ul>
         </div>
      </div>
   </div>
   <a href="/fr/sotchi-2014" class="lang-switcher link">Fr</a>
   </div>
   

   <script async defer
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBnrWQ2SHvedNrvdozheYo32pHwCbuvPgs&callback=initMap">
      
   </script>
   <script type="text/javascript"
      src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
   <script type="text/javascript">
      window.jQuery
            || document
                  .write('<script src="https://stillres.olympic.org/js/jquery-1.11.1.min.js"><\/script>')
   </script>
   <script type="text/javascript"
      src="https://stillres.olympic.org/js/jquery.main.js"></script>
   <script type="text/javascript"
      src="https://stillres.olympic.org/js/jquery.cookie.js"></script>
   <script type="text/javascript"
      src="https://stillres.olympic.org/js/jquery.collageCaption.js"></script>
   <script type="text/javascript"
      src="https://stillres.olympic.org/js/jquery.collagePlus.js"></script>
   <script type="text/javascript"
      src="https://stillres.olympic.org/js/jquery.removeWhitespace.js"></script>
   <script type="text/javascript"
      src="https://stillres.olympic.org/js/jquery.betd.js"></script>
   <script type="text/javascript"
      src="https://stillres.olympic.org/js/ss-social.js"></script>
   <script type="text/javascript"
      src="https://stillres.olympic.org/js/ss-standard.js"></script>
   <!--[if IE]><script type="text/javascript" src="https://stillres.olympic.org/js/ie.js"></script><![endif]-->
   <noscript>
      <div>Javascript must be enabled for the correct page display</div>
   </noscript>

   <script type="text/javascript">
      setContextBreadcrumbs({
         "className" : "sochi2014",
         "breadcrumbs" : [ {
            "title" : "<span class='icon-arrow-left'></span> Sochi 2014",
            "url" : "/sochi-2014"
         } ]
      });
   </script>
   
   







</body>
</html>
<%@ include file="/WEB-INF/views/include/footer.jsp"%>