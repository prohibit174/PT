<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/AgoFiles/users_css/all.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/AgoFiles/users_css/common.css">
	
	    
    <%@include file="/WEB-INF/views/include/header.jsp" %>
<%@include file="/WEB-INF/views/include/mypage_sidebar.jsp" %>



<style>
  .table .th, .table2 .th {
    font-size: 15px;
    }
</style>
</head>

<body>


 <section class="results ajax-area" data-tmpl="athleteResults_tmpl"
 style="margin-left:300px; padding-top: 20px;" >
        <div class="heading">
            <h2>REQUEST LIST</h2>
            <ul class="add-links">

            </ul>
        </div>

        <ul class="table2 ajax-content">
            <li>
                    <div class="th col-first"> REQNUM </div>
                    <div class="th col1"> USER_ID </div>
                    <div class="th col2"> PRODUCT NAME </div> 
                    <div class="th col2"> REQ_STATUS </div> 
                    <div class="th col3"> PLACE </div>
                    <div class="th col5"> DATE </div>
                  
            </li>
            
            <c:forEach items="${carpoolAll}" var="carpool_ListVO">
                <li>
                <div class="td col-first">

        <div class="profile-row">
            <div class="flag-image">
            </div>
            <span>${carpool_ListVO.c_num }</span>
        </div>
                </div>
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
            ${carpool_ListVO.c_hour }:${carpool_ListVO.c_minute } </strong>
        </div>
                </div>
               
                               <div class="td col2">

        <div class="area">
            <strong> ${carpool_ListVO.start_point } ->  ${carpool_ListVO.way_point } -> ${carpool_ListVO.dest_point}
             </strong>
        </div>
                </div>

                
                
                
                        <div class="td col3">

        <div class="area">
            <strong> ${carpool_ListVO.c_person} </strong>
        </div>
                </div>        
                
                         <div class="td col5">

        <div class="area">
            <strong> ${carpool_ListVO.c_price}$ </strong>
        </div>
                </div>   
                
                <div class="td col4">


                <div class="area">
                    <ul class="medal-box">

                        <li>
                            <a href="javascript:applyLink('/carpool/request?c_num=${carpool_ListVO.c_num}')" class="btn-calendar">GO</a>
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
            


<%@include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>