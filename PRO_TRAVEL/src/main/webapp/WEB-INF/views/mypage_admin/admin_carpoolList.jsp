<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<%@ include file="/WEB-INF/views/include/admin_sidebar.jsp" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<style type="text/css">

.table .th, .table2 .th {
	font-size: 13px;
	width: 12%;
}

.table2 .col-first {
	width: 10%;
	padding: 0px 30px 0px 0px;
	margin: 0px 10px 0px 0px;
}

.table2 .col1 {
	width: 10%;
	padding: 0px 30px 0px 0px;
	margin: 0px 10px 0px 0px;
}

.table2 .col2 {
	width: 25%;

	margin: 0px 10px 0px 0px;
}

.table2 .col3 {
	width: 10%;
	margin: 0px 10px 0px 0px;
}

.table2 .col4 {
	width: 10%;
	margin: 0px 10px 0px 0px;
}

</style>
</head>
<body>	
   <section class="id-card-box" itemtype="http://schema.org/Organization"
		itemscope="" style="margin: 0px 200px 100px 0px; padding-left:50px;" >
        <div class="heading">
            <h2>carpool list</h2>
            <ul class="add-links">

            </ul>
        </div>

        <ul class="table2 ajax-content">
            <li>
                    
                    <div class="th col1"> DRIVER </div>
                    <div class="th col2"> DATE</div>
                    <div class="th col2"> CITY </div> 
                    <div class="th col3"> SEAT </div>
                    <div class="th col3"> PRICE </div>
                    <div class="th col4"> SIGN UP </div>
            </li>
            
            <c:forEach items="${carpoolAll}" var="carpool_ListVO">
                <li>

                <div class="td col1">	

    <a href = '/carpool/read?c_num=${carpool_ListVO.c_num }'>
<picture class="picture">

<img src="/resources/upload/${carpool_ListVO.u_img }" width="50" height="50" >
<span class="mask"></span>
</picture>
        <div class="area">
            <strong class="name">${carpool_ListVO.u_name } </strong>
        </div>
    </a>
                </div>

                
                
                <div class="td col2">

        <div class="area">
            <strong> ${carpool_ListVO.c_month }, ${carpool_ListVO.c_date }th, ${carpool_ListVO.c_year}
            ${carpool_ListVO.c_hour }:${carpool_ListVO.c_minute }   </strong>
        </div>
                </div>
                
                 <div class="td col2">

        <div class="area">
            <strong>     ${carpool_ListVO.start_point } ->  ${carpool_ListVO.way_point } -> ${carpool_ListVO.dest_point}</strong>
        </div>
                </div>
               


                
                
                
                        <div class="td col3">

        <div class="area">
            <strong> ${carpool_ListVO.c_person} </strong>
        </div>
                </div>        
                
                         <div class="td col3">

        <div class="area">
            <strong> ${carpool_ListVO.c_price}$ </strong>
        </div>
                </div>   
                
                <div class="td col4">


                <div class="area">
                    <ul class="medal-box">

                        <li>
                            <a href="/carpoolDetail?c_num=${carpool_ListVO.c_num}" class="btn-calendar">GO</a>
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
    
   
    

<%@ include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>