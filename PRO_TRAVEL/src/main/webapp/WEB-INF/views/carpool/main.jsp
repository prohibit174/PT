<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/views/include/header.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
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
						<strong class="title">TODAY</strong> 07 Feb - 23 Feb
					</div>
				</li>
				<li>
					<div class="text-box">
						<strong class="title">대기중인 카풀 리스트</strong> <a
							href="/russian-federation">Russian Federation</a>
					</div>
				</li>
				<li>
					<div class="text-box">
						<strong class="title">Athletes</strong> 2780
					</div>
				</li>
				<li>
					<div class="text-box">
						<strong class="title">Countries</strong> 88
					</div>
				</li>
				<li>
					<div class="text-box">
						<strong class="title">Events</strong> 98
					</div>
				</li>
			</ul>
		</div>
		<div class="switcher"></div>
	</div>
	</section>
	<div>
<%@ include file="/WEB-INF/views/include/carpool_sidebar.jsp"%>
<section class="results ajax-area" data-tmpl="athleteResults_tmpl">
        <div class="heading">
            <h2>carpool</h2>
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
            
            <c:forEach items="${list}" var="carpoolVO">
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
                <span class="btn-more">
                    <a href="/ajaxscript/loadmoretablelist/games/athletes/{535B8008-29D0-44BB-8B14-E2B29CC79DD5}/3/3">More</a>
                </span>
    </section>
</div>

	<%@ include file="/WEB-INF/views/include/footer.jsp"%>
</body>
</html>