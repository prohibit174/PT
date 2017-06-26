<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"%>
<%
	request.setCharacterEncoding("utf-8");
%>

<!DOCTYPE html>
<html>
<script
	src='https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.18.1/moment.js'></script>
<script
	src='${pageContext.request.contextPath}/resources/js/accompanyJs/fullcalendar.js'></script>
<script
	src='${pageContext.request.contextPath}/resources/js/accompanyJs/jquery-ui.min.js'></script>
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
.results-form {
	margin-right: 550px;
}

.search-box input[type="search2"] {
	width: 100%;
	padding: 17px 0 15px;
	margin: 0;
	outline: none;
	color: #222;
	font-size: 14px;
	line-height: 16px;
	font-weight: bold;
	border: 0;
	display: block;
	-webkit-appearance: textfield;
}

input[type="button"] {
	float: right;
	width: 110px;
	height: 45px;
	border: 2px solid #e62644;
	font-size: 14px;
	line-height: 16px;
	color: #e62644;
	outline: none;
	cursor: pointer;
	background: none;
	padding: 0;
	margin: 10px 0 0 10px;
	font-weight: bold;
}

input[type="button"]:hover {
	border: 2px solid #0081c8;
	background-color: #0081c8;
	color: #fff;
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
	font-weight: bold;
}

.search-box.active input[type="button"] {
	display: block;
}

.search-box input[type="button"] {
	position: absolute;
	right: 5px;
	top: 5px;
	width: 38px;
	height: 38px;
	background: #333;
	border: 0;
	margin: 0;
	padding: 0;
	outline: none;
	cursor: pointer;
	color: #fff;
	text-transform: uppercase;
	font: 16.3px/20px "Trade-Gothic-W-Cond-Bold", Arial, Helvetica,
		sans-serif;
}

.search-box input[type="submit"]:hover {
	opacity: 0.8;
}

input[type="submit"]:hover {
	border: 2px solid #0081c8;
	background-color: #0081c8;
	color: #fff;
}
</style>

</head>


<body>
	<%@include file="../include/accompany_sidebar.jsp"%>

	<div id="contents" class="city" style="margin-top: -265px;">
		<div class="conts-container">
			<div class="present">
				<div class="tabs-list"></div>
				<!-- //tabs-list  -->
				<!--   <div id="carpool_map"></div> -->

				<h2 id="carpool_title"
					style="margin-top: -80px; margin-left: 150px; padding-left: 105px; border-left-width: 50px;">
					Search User's Trip-Plan</h2>

				<form class="search-box"
					style="border-left-width: 1px; width: 677px; margin-left: 254px; margin-bottom: 10px;">
					<fieldset>
						<legend class="hide">Search form</legend>
						<i class="icon-search"><span class="hide">Search User
								ID</span></i> <input type="search2" id="Search_User_ID"
							placeholder="Search User ID" accesskey="go"
							title="Search User ID" name="q" /> <input type="button"
							value="Go!" onclick="searchTrip_plan()" />
					</fieldset>
				</form>

				<div class="btns" onclick="searchTrip_plan('L')" style="position: absolute; top: 450px; left: 250px; z-index: 20;">
					<span class="btn-prev" style="background: white; padding-top: 10px;"> 
						<span class="icon-arrow-left"> 
						<span class="hide" >prev</span></span>
					</span>
				</div>
				<div class="btns" onclick="searchTrip_plan('R')" style="position: absolute;top: 450px;left: 500px;z-index: 20;right: 0px;width: 400px;">
					<span class="btn-next" style="background: white;padding-top: 10px;margin-left: 300px;">
						<span class="icon-arrow-right"> 
						<span class="hide" onclick="searchTrip_plan()">next</span></span>
					</span>
				</div>

				<div id="map" style="margin-top: 0px; left: 30px;"></div>

				<script type="text/javascript">
					var index = 0;
					var tp_num = [];
					var region = [];
					var longi = [];
					var lati = [];
					var id = [];
					var travelDate = [];
					var map;
					var marker = [];
					var markerIndex = 0;
					var latLngList = [];
					var movingPath = [];
					var movingPathIndex = 0;
					var userList = [];
					var userList_index = 0;
				</script>


				<c:forEach var="accompany" items="${list}">

					<c:set var="tp_num" value="${accompany.tp_num}"></c:set>
					<c:set var="cor_region" value="${accompany.cor_region}"></c:set>
					<c:set var="cor_longi" value="${accompany.cor_longi}"></c:set>
					<c:set var="cor_lati" value="${accompany.cor_lati}"></c:set>
					<c:set var="cor_u_id" value="${accompany.u_id}"></c:set>
					<c:set var="tp_date" value="${accompany.tp_date}"></c:set>
					<script type="text/javascript">
						tp_num[index] = "${tp_num}";
						region[index] = "${cor_region}";
						longi[index] = "${cor_longi}";
						lati[index] = "${cor_lati}";
						id[index] = "${cor_u_id}";

						var temp;
						temp = String("${tp_date}");
						travelDate[index] = temp.substr(2, 8);

						index++;
					</script>

				</c:forEach>

				<c:forEach var="IDList" items="${IDList}">

					<c:set var="userList" value="${IDList.u_id}"></c:set>
					<script type="text/javascript">
						userList[userList_index] = "${userList}";
						console.log(userList_index + ' : '
								+ userList[userList_index]);
						userList_index++;
					</script>
				</c:forEach>


				<script>
					function initMap() {
						var paris = {
							lat : 48.856667,
							lng : 2.350833
						};
						map = new google.maps.Map(document
								.getElementById('map'), {
							zoom : 5,
							center : paris
						});

						function containsLatlng(latlng) {
							if (latLngList == null)
								return false;

							for (x = 0; x < latLngList.length; x++) {
								if (latlng.lat == latLngList[x].lat
										&& latlng.lng == latLngList[x].lng) {
									return true;
								}
							}
							return false;
						}

						for (i = 0; i < index; i++) {

							var latlng = {
								lat : Number(lati[i]),
								lng : Number(longi[i])
							};
							if (containsLatlng(latlng) == false)//if the lat,lng which want to add marker already exist in latLnglist, dont add a marker
							{
								latLngList.push(latlng);

								/* alert('latlng.lat : '+ latlng.lat+ ' / '+ 'longi[i] : '+longi[i]); */
								marker[markerIndex] = new google.maps.Marker(
										{
											position : latlng,
											map : map,
											title : region[markerIndex],
											icon : "http://www.stubbyplanner.com/img_v8/selectcityICON_red.png",
										// one marker, one InfoWindow. So If a marker has window, it is prohibited to make Infowindow
										/*  date : travelDate[i] */
										});
								marker[markerIndex].setMap(map);

								createLine(latLngList, map);
								markerIndex++;
								/* alert(parseInt(thisYear)-parseInt(accom_tp_date[j].substr(0,4))); */
							}
						}

						// alert(parseInt(thisYear));
						// alert(parseInt(accom_birth[0].substr(0,4)));
						// alert(parseInt(thisYear)-parseInt(accom_birth[0].substr(0,4)));
						//alert(accom_tp_date[0].substr(0,4));

					}

					function createLine(latLngList, map) {
						movingPath[movingPathIndex] = new google.maps.Polyline(
								{
									path : latLngList,
									geodesic : true,
									strokeColor : '#000000',
									strokeOpacity : 10.0,
									strokeWeight : 1
								});
						if (latLngList.length > 1) {
							movingPath[movingPathIndex++].setMap(map);
						}
					}
	
					function searchTrip_plan(str) {
						console.log(str+' : str');
						var u_id;
						var textBoxStr = document
								.getElementById("Search_User_ID").value;
						if (str == "L") {
							if (textBoxStr == "") {
								u_id = userList[0];
							} else {
								var idIndex = 0;
								var hasTextValidID = false;
								for (var i = 0; i <= userList.length; i++) {
									if (textBoxStr == userList[i]) {
										hasTextValidID = true;
										idIndex = i;
									}
								}
								if (hasTextValidID == false) {
									alert('not found ID or not exist Trip_plan on ID In the loop');
								} else {
									if (idIndex == 0) {
										u_id = userList[idIndex];
										console.log(' if(str == L), u_id 1 : ' + u_id);
									} else {
										u_id = userList[idIndex-1];
										console.log(' if(str == L), u_id 2: ' + u_id);
									}
								}
							}
							console.log(' if(str == L), u_id 3: ' + u_id);
							document.getElementById("Search_User_ID").value = u_id;
						}

						if (str == "R") {
							if (textBoxStr == "") {
								u_id = userList[0];
							} else {
								var idIndex = 0;
								var hasTextValidID = false;
								for (var i = 0; i <= userList.length; i++) {
									if (textBoxStr == userList[i]) {
										hasTextValidID = true;
										idIndex = i;
										console.log('idIndex : ' + idIndex +' / '+ 'i : '+i);
									}
								}
								if (hasTextValidID == false) {
									alert('not found ID or not exist Trip_plan on ID In the loop');
								} else {
									console.log(' idIndex' + idIndex +'userList.length : ' +userList.length );

									if (idIndex == userList.length-1) {
										u_id = userList[userList.length-1];
										console.log(' if(str == L), u_id 1 : ' + u_id);
									} else {
										u_id = userList[idIndex+1];
										console.log(' if(str == L), u_id 2: ' + u_id);
									}
								}
							}
							console.log(' if(str == L), u_id 3: ' + u_id);
							document.getElementById("Search_User_ID").value = u_id;
						}
						
						else {
							u_id = document.getElementById("Search_User_ID").value;
						}

						var result = 0;

						for (var i = 0; i < markerIndex; i++) {
							marker[i].setMap(null);
						}
						for (var i = 0; i < movingPathIndex; i++) {
							movingPath[i].setMap(null);
						}

						latLngList = [];
						marker = [];
						markerIndex = 0;
						movingPath

						$
								.ajax({
									type : "post",
									url : "/accompany/admin_search_text",
									data : {
										"u_id" : u_id
									},
									success : function(data) {

										var sumLat = Number(0);
										var sumLng = Number(0);

										for (var i = 0; i < data.length; i++) {
											sumLat += Number(data[i].cor_lati);
											sumLng += Number(data[i].cor_longi);
										}

										var avgLat = sumLat / data.length;
										var avgLng = sumLng / data.length;

										var center = {
											lat : avgLat,
											lng : avgLng
										};

										map = new google.maps.Map(document
												.getElementById('map'), {
											zoom : 4,
											center : center
										});

										result = data;
										var eachCounter = 0;

										$(data)
												.each(
														function() {
															/* console.log(data[eachCounter].u_id, data[eachCounter].cor_region); */

															var latlng = {
																lat : Number(data[eachCounter].cor_lati),
																lng : Number(data[eachCounter].cor_longi)
															};
															latLngList
																	.push(latlng);

															var title = data[eachCounter].cor_region;
															/* alert('latlng.lat : '+ latlng.lat+ ' / '+ 'longi[i] : '+longi[i]); */
															marker[eachCounter] = new google.maps.Marker(
																	{
																		position : latlng,
																		map : map,
																		title : title,
																		icon : "http://www.stubbyplanner.com/img_v8/selectcityICON_red.png",
																	// one marker, one InfoWindow. So If a marker has window, it is prohibited to make Infowindow
																	/*  date : travelDate[i] */
																	});
															marker[eachCounter]
																	.setMap(map);
															createLine(
																	latLngList,
																	map);
															eachCounter++;
														});
									},
									error : function(data) {
										var paris = {// not exact coordinates of Paris
											lat : 48.856667,
											lng : 2.350833
										};
										map = new google.maps.Map(document
												.getElementById('map'), {
											zoom : 4,
											center : paris
										});
										alert('not found ID or not exist Trip_plan on ID');

									},
								});

					}
				</script>
				<script async defer
					src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBnrWQ2SHvedNrvdozheYo32pHwCbuvPgs&callback=initMap">
					
				</script>

				<div class="tab-section" style="padding-right: 640px";>
					<div class="row">
						<input type="hidden" name="json" value="" id="json"> <input
							type="submit" value="Show" onclick="showAccom()"> <input
							type="button" value="Hide" onclick="hideAccom()">
					</div>
				</div>
				<br> <br> <br> <br> <br> <br>
			</div>

		</div>
</body>
<%@include file="../include/footer.jsp"%>
</html>