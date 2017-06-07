<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<%@ include file="/WEB-INF/views/include/carpool_sidebar.jsp" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
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
                    <div class="th col4"> COURSE </div>
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
                            <div class="medal"> <span>M</span> <span class="num">${carpoolVO.c_month }</span> </div>
                        </li>
                        <li>
                            <div class="medal silver"> <span>D</span> <span class="num">${carpoolVO.c_date }</span> </div>
                        </li>
                        <li>
                            <div class="medal bronze"> <span>H</span> <span class="num">${carpoolVO.c_hour }</span> </div>
                        </li>
                    </ul>
                </div>
                </div>
    </li>
            </c:forEach>


    <li>
                <div class="td col-first">

        <div class="profile-row">
            <div class="flag-image">
            </div>
            <span>RUS</span>
        </div>
                </div>
                <div class="td col1">



    <a href="/victor-an">
<picture class="picture">
<!--[if IE 9]><video style="display: none;"><![endif]-->

<source srcset="https://stillmed.olympic.org/media/Images/OlympicOrg/Athletes/A/Ahn_Hyun_Soo_An_Victor/Ahn_Hyun_Soo_An_Victor_mugshot.jpg?interpolation=lanczos-none&resize=45:45, https://stillmed.olympic.org/media/Images/OlympicOrg/Athletes/A/Ahn_Hyun_Soo_An_Victor/Ahn_Hyun_Soo_An_Victor_mugshot.jpg?interpolation=lanczos-none&resize=90:90 2x" media="(min-width: 1024px)">
<source srcset="https://stillmed.olympic.org/media/Images/OlympicOrg/Athletes/A/Ahn_Hyun_Soo_An_Victor/Ahn_Hyun_Soo_An_Victor_mugshot.jpg?interpolation=lanczos-none&resize=45:45, https://stillmed.olympic.org/media/Images/OlympicOrg/Athletes/A/Ahn_Hyun_Soo_An_Victor/Ahn_Hyun_Soo_An_Victor_mugshot.jpg?interpolation=lanczos-none&resize=90:90 2x" media="(min-width: 768px)">
<!--[if IE 9]></video><![endif]-->

<img srcset="https://stillmed.olympic.org/media/Images/OlympicOrg/Athletes/A/Ahn_Hyun_Soo_An_Victor/Ahn_Hyun_Soo_An_Victor_mugshot.jpg?interpolation=lanczos-none&resize=45:45, https://stillmed.olympic.org/media/Images/OlympicOrg/Athletes/A/Ahn_Hyun_Soo_An_Victor/Ahn_Hyun_Soo_An_Victor_mugshot.jpg?interpolation=lanczos-none&resize=90:90 2x" alt="AHN Hyun-Soo (AN Victor)">
<span class="mask"></span>
</picture>
        <div class="area">
            <strong class="name">Victor AN</strong>
        </div>
    </a>
                </div>
                <div class="td col2">

        <div class="area">
            <strong>Short Track Speed Skating</strong>
        </div>
                </div>
                <div class="td col4">


                <div class="area">
                    <ul class="medal-box">
                        <li>
                            <div class="medal"> <span>G</span> <span class="num">3</span> </div>
                        </li>
                        <li>
                            <div class="medal silver"> <span>S</span> <span class="num">0</span> </div>
                        </li>
                        <li>
                            <div class="medal bronze"> <span>B</span> <span class="num">1</span> </div>
                        </li>
                    </ul>
                </div>
                </div>
    </li>

    <li>
                <div class="td col-first">

        <div class="profile-row">
            <div class="flag-image">
                <div class="flag18 blr">
                    <div class="mask"></div>
                </div>
            </div>
            <span>BLR</span>
        </div>
                </div>
                <div class="td col1">



    <a href="/darya-domracheva">
<picture class="picture">
<!--[if IE 9]><video style="display: none;"><![endif]-->

<source srcset="https://stillmed.olympic.org/media/Images/OlympicOrg/Athletes/D/Domracheva_Daria/Domracheva_Daria_mugshot.jpg?interpolation=lanczos-none&resize=45:45, https://stillmed.olympic.org/media/Images/OlympicOrg/Athletes/D/Domracheva_Daria/Domracheva_Daria_mugshot.jpg?interpolation=lanczos-none&resize=90:90 2x" media="(min-width: 1024px)">
<source srcset="https://stillmed.olympic.org/media/Images/OlympicOrg/Athletes/D/Domracheva_Daria/Domracheva_Daria_mugshot.jpg?interpolation=lanczos-none&resize=45:45, https://stillmed.olympic.org/media/Images/OlympicOrg/Athletes/D/Domracheva_Daria/Domracheva_Daria_mugshot.jpg?interpolation=lanczos-none&resize=90:90 2x" media="(min-width: 768px)">
<!--[if IE 9]></video><![endif]-->

<img srcset="https://stillmed.olympic.org/media/Images/OlympicOrg/Athletes/D/Domracheva_Daria/Domracheva_Daria_mugshot.jpg?interpolation=lanczos-none&resize=45:45, https://stillmed.olympic.org/media/Images/OlympicOrg/Athletes/D/Domracheva_Daria/Domracheva_Daria_mugshot.jpg?interpolation=lanczos-none&resize=90:90 2x" alt="DOMRACHEVA Daria ">
<span class="mask"></span>
</picture>
        <div class="area">
            <strong class="name">Darya DOMRACHEVA</strong>
        </div>
    </a>
                </div>
                <div class="td col2">

        <div class="area">
            <strong>Biathlon</strong>
        </div>
                </div>
                <div class="td col4">


                <div class="area">
                    <ul class="medal-box">
                        <li>
                            <div class="medal"> <span>G</span> <span class="num">3</span> </div>
                        </li>
                        <li>
                            <div class="medal silver"> <span>S</span> <span class="num">0</span> </div>
                        </li>
                        <li>
                            <div class="medal bronze"> <span>B</span> <span class="num">0</span> </div>
                        </li>
                    </ul>
                </div>
                </div>
    </li>

   
        </ul>
                <span class="btn-more">
                    <a href="/ajaxscript/loadmoretablelist/games/athletes/{535B8008-29D0-44BB-8B14-E2B29CC79DD5}/3/3">More</a>
                </span>
    </section>

<%@ include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>