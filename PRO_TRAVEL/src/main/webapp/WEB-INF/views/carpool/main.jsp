<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/views/include/header.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
 $(function(){
	var count = 2;
	var send = "count=" + count;
	$(".btn-more a:nth-child(1)").on("click", function(){
	$.ajax({
		url: "${pageContext.request.contextPath}/carpool/more_register",
		type: "post",
		data: send,
		success: function sendHandler(data) {
			location.reload();
		 }
		});
	});
	});
	
 $(function(){
	var count = 2;
	var send = "count=" + count;
	$(".btn-more a:nth-child(2)").on("click", function(){
	$.ajax({
		url: "${pageContext.request.contextPath}/carpool/fold_register",
		type: "post",
		data: send,
		success: function sendHandler(data) {
			location.reload();
		 }
		});
	});
	});

 	
 	$(function(){
 		 $(".btn-more a:nth-child(3)").on("click", function(){
 			 location.href= "${pageContext.request.contextPath}/carpool/listAll";
 		 });
 	});
</script>
<script type="text/javascript">
function startTime() {
    var today = new Date();
    var year = 2017;
    var month = today.getMonth() + 1;
    var day = today.getDay() + 4;
    var hour = today.getHours();
    var minute = today.getMinutes();
    var seconds = today.getSeconds();
    minute = checkTime(minute);
    seconds = checkTime(seconds);
    document.getElementById('today').innerHTML =
        year + "년" + month + "월" + day + "일" + hour + ":" + minute + ":" + seconds;
    var time = setTimeout(startTime, 500);
}
function checkTime(i) {
    if (i < 10) {i = "0" + i}; // 숫자가 10보다 작을 경우 앞에 0을 붙여줌
    return i;
}



</script>

<!-- 웹 크롤링 -->
<script type="text/javascript">

</script>
</head>
<body onload = "startTime()">
	<section class="profiles alt2">
	<div class="btn-hold">
		<a href="/london-2012"> <span class="btn-prev"> <span
				class="icon-arrow-left"> <span class="hide"></span>
			</span>
		</span> <span class="txt">London 2012</span>
		</a>
	</div>
	<div class="btn-hold right">
		<a href="/beijing-2022"> <span class="btn-next"> <span
				class="icon-arrow-right"> <span class="hide"></span>
			</span>
		</span> <span class="txt">Beijing 2022</span>
		</a>
	</div>
	<div class="bg-image">
		<picture class="image"> <!--[if IE 9]><video style="display: none;"><![endif]-->

		<source
			srcset="${pageContext.request.contextPath}/resources/images/carpool/carpool_main.jpg"
			media="(min-width: 1921px)"> <sourc
			srcset="https://stillmed.olympic.org/media/Images/OlympicOrg/Games/Winter/Sochi_2014/Sochi_2014_banner.jpg?interpolation=lanczos-none&resize=1920:640, https://stillmed.olympic.org/media/Images/OlympicOrg/Games/Winter/Sochi_2014/Sochi_2014_banner.jpg?interpolation=lanczos-none&resize=3840:1280 2x"
			media="(min-width: 1024px)"> <source
			srcset="https://stillmed.olympic.org/media/Images/OlympicOrg/Games/Winter/Sochi_2014/Sochi_2014_banner.jpg?interpolation=lanczos-none&fit=around|1024:250&crop=1024:250;*,*, https://stillmed.olympic.org/media/Images/OlympicOrg/Games/Winter/Sochi_2014/Sochi_2014_banner.jpg?interpolation=lanczos-none&fit=around|2048:500&crop=2048:500;*,* 2x"
			media="(min-width: 768px)"> <!--[if IE 9]></video><![endif]-->

		<img srcset="${pageContext.request.contextPath}/resources/images/carpool/carpool_main.jpg"
			alt="pro traveler">
			</picture>
	</div>
	<div class="holder">
		<article class="profile-box"> <picture class="image">
		<!--[if IE 9]><video style="display: none;"><![endif]--> <source
			srcset="https://stillimg.olympic.org/games/280x280/2014_2.png?interpolation=lanczos-none&resize=240:240, https://stillimg.olympic.org/games/280x280/2014_2.png?interpolation=lanczos-none&resize=480:480 2x"
			media="(min-width: 1024px)"> <source
			srcset="https://stillimg.olympic.org/games/280x280/2014_2.png?interpolation=lanczos-none&resize=70:70, https://stillimg.olympic.org/games/280x280/2014_2.png?interpolation=lanczos-none&resize=140:140 2x"
			media="(min-width: 768px)"> <!--[if IE 9]></video><![endif]-->

		<img
			srcset="https://stillimg.olympic.org/games/280x280/2014_2.png?interpolation=lanczos-none&resize=140:140, https://stillimg.olympic.org/games/280x280/2014_2.png?interpolation=lanczos-none&resize=280:280 2x"
			alt="Sochi 2014"></picture>
		<div class="text-box">
			<h1>
				<a href="/sochi-2014">CARPOOL</a>
			</h1>
		</div>
		</article>
	</div>
	</section>

	<section class="id-card gallery-js-ready games2014-2">
	<div class="holder">
		<div class="frame">
			<ul>
				<li>
					<div class="text-box">
						<strong class="title">TODAY</strong> 
						<a id="today" style="cursor: pointer; font-size: 30px;"></a>
					</div>
				</li>
				<li>
					<div class="text-box">
						<strong class="title">대기중인 카풀 목록</strong>
						<a style="cursor: pointer; font-size: 30px;">Wating Carpool</a>
					</div>
				</li>
				<li>
					<div class="text-box">
						<strong class="title">대여 가능한 렌트 목록</strong>
						<a style="cursor: pointer; font-size: 30px;">Rental Car List</a>
					</div>
				</li>
				<li>
					<div class="text-box">
						<strong class="title">카풀 등록하기</strong>
						<a style="cursor: pointer; font-size: 30px;">Register your Carpool</a>
					</div>
				</li>
			</ul>
		</div>
		<div class="switcher"></div>
	</div>
	</section>
	<div>
<section class="results ajax-area" data-tmpl="athleteResults_tmpl">
        <div class="heading">
        <br><br>
            <h2>Waiting Carpool</h2>
            <ul class="add-links">

            </ul>
        </div>

        <ul class="table2 ajax-content">
            <li>
                    <div class="th col-first"> NUMBER </div>
                    <div class="th col1"> DRIVDR </div>
                    <div class="th col2"> START DATE </div>
                    <div class="th col3"> SEAT </div>
                    <div class="th col5"> PRICE </div>
                    <div class="th col4"> SIGN UP </div>
            </li>
            
            <c:forEach items="${list}" var="carpoolVO" end="${count }">
                <li>
                <div class="td col-first">

        <div class="profile-row">
            <div class="flag-image">
            </div>
            <span>${carpoolVO.c_num }</span>
        </div>
                </div>
                <div class="td col1">



    <!-- <a href="/victor-an"> -->
    <a href = '/carpool/read?c_num=${carpoolVO.c_num }'>
<picture class="picture">

<source srcset="https://stillmed.olympic.org/media/Images/OlympicOrg/Athletes/A/Ahn_Hyun_Soo_An_Victor/Ahn_Hyun_Soo_An_Victor_mugshot.jpg?interpolation=lanczos-none&resize=45:45, https://stillmed.olympic.org/media/Images/OlympicOrg/Athletes/A/Ahn_Hyun_Soo_An_Victor/Ahn_Hyun_Soo_An_Victor_mugshot.jpg?interpolation=lanczos-none&resize=90:90 2x" media="(min-width: 1024px)">
<source srcset="https://stillmed.olympic.org/media/Images/OlympicOrg/Athletes/A/Ahn_Hyun_Soo_An_Victor/Ahn_Hyun_Soo_An_Victor_mugshot.jpg?interpolation=lanczos-none&resize=45:45, https://stillmed.olympic.org/media/Images/OlympicOrg/Athletes/A/Ahn_Hyun_Soo_An_Victor/Ahn_Hyun_Soo_An_Victor_mugshot.jpg?interpolation=lanczos-none&resize=90:90 2x" media="(min-width: 768px)">

<img srcset="https://stillmed.olympic.org/media/Images/OlympicOrg/Athletes/A/Ahn_Hyun_Soo_An_Victor/Ahn_Hyun_Soo_An_Victor_mugshot.jpg?interpolation=lanczos-none&resize=45:45, https://stillmed.olympic.org/media/Images/OlympicOrg/Athletes/A/Ahn_Hyun_Soo_An_Victor/Ahn_Hyun_Soo_An_Victor_mugshot.jpg?interpolation=lanczos-none&resize=90:90 2x" alt="AHN Hyun-Soo (AN Victor)">
<span class="mask"></span>
</picture>
        <div class="area">
            <strong class="name">${carpoolVO.u_id }</strong>
        </div>
    </a>
                </div>
                <div class="td col2">

        <div class="area">
            <strong> ${carpoolVO.c_month }, ${carpoolVO.c_date }th, ${carpoolVO.c_year}
            ${carpoolVO.c_hour }:${carpoolVO.c_minute } </strong>
        </div>
                </div>
                
                        <div class="td col3">

        <div class="area">
            <strong> ${carpoolVO.c_person} </strong>
        </div>
                </div>        
                
                         <div class="td col5">

        <div class="area">
            <strong> ${carpoolVO.c_price}$ </strong>
        </div>
                </div>   
                
                <div class="td col4">


                <div class="area">
                    <ul class="medal-box">

                        <li>
                            <a href="javascript:applyLink('/carpool/request?c_num=${carpoolVO.c_num}')" class="btn-calendar">GO</a>
                        </li>

                    </ul>
                </div>
                </div>
    </li>
            </c:forEach>


    

   
        </ul>
                <span class="btn-more" >
                 <a style="cursor: pointer;">More</a>   
                 <a style="cursor: pointer;">Fold</a>  
                 <a style="cursor: pointer;">Go List Page</a>  
                </span>

    </section>
</div>

	<%@ include file="/WEB-INF/views/include/footer.jsp"%>
</body>
</html>