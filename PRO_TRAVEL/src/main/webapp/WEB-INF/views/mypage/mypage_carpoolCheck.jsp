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
            <h2>MY CARPOOL</h2>
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
                    <div class="th col4"> MORE </div>
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

    <%-- <a href = '/mypage/read?c_num=${carpoolVO.c_num }'> --%>
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
            <strong>Start : ${carpoolVO.start_point }</strong><br>
            <strong>Dest : ${carpoolVO.c_num } </strong>
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
                    <strong><a href = '/mypage/read?c_num=${carpoolVO.c_num }'> Go </strong>
                    </ul>
                </div>
                </div>
    </li>
            </c:forEach>

        </ul>
        

    </section>
    
    

<%@ include file="/WEB-INF/views/include/footer.jsp" %>

</body>
</html>