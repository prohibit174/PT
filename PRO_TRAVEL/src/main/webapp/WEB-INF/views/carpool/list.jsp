<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<%@ include file="/WEB-INF/views/include/carpool_sidebar.jsp" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src='${pageContext.request.contextPath}/resources/js/accompanyJs/jquery-ui.min.js'></script>
<link rel='stylesheet' href='/resources/css/accompany/jquery-ui.min.css' />

<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<script type="text/javascript">
function detailForm(u_id){
	 var popupX = (window.screen.width / 2) - (800 / 2);
	   var popupY= (window.screen.height /2) - (500 / 2);
	    window.open('about:blank','popup_window','width=350, height=250, left='+popupX+', top='+popupY);
	    var wantForm = 'detailForm'+u_id;
	    var frm =document.getElementById(wantForm);
	    frm.submit(); 
	}

function applyLink(URL){
	if(confirm("Do you want to join?") == true){
		location.href=URL;
		alert('I joined');

	}
	else{
		alert('Cancle');
	}
}
</script>



<style>
@CHARSET "EUC-KR";
.wrapper {
  margin: 0 auto;
  padding-left: 100px;
  max-width: 1000px;
}

.table {
  margin: 0 0 40px 0;
  width: 100%;
  box-shadow: 0 1px 3px rgba(0, 0, 0, 0.2);
  display: table;
}
@media screen and (max-width: 580px) {
  .table {
    display: block;
  }
}

.row {
  display: table-row;
  background: #f6f6f6;
}
.row:nth-of-type(odd) {
  background: #e9e9e9;
}
.row.header {
  font-weight: 900;
  color: #ffffff;
  background: #ea6153;
}
.row.green {
  background: #27ae60;
}
.row.blue {
  background: #2980b9;
}



.cell {
  padding: 6px 12px;
  display: table-cell;
}

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
<div class=wrapper>
	<img srcset="${pageContext.request.contextPath}/resources/images/carpool/list.png">
	
	<section class="results ajax-area" data-tmpl="athleteResults_tmpl">
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
<%-- onclick="detailForm(${listMessage.m_num});" --%>

 <form id="detailForm${carpool_ListVO.u_id }" name="detailForm${carpool_ListVO.u_id }" method="post" 
 action="/user?u_id=${carpool_ListVO.u_id }" target="popup_window">
    <a onclick = "detailForm('${carpool_ListVO.u_id }')">
    
<picture class="picture">

<img src="/resources/upload/${carpool_ListVO.u_img }" width="50" height="50" >
<span class="mask"></span>
</picture>
        <div class="area">
            <strong class="name">${carpool_ListVO.u_name } </strong>
        </div>
  </a> 
  </form>
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
                            <a href="javascript:applyLink('/carpool/request?c_num=${carpool_ListVO.c_num}')" class="btn-calendar">GO</a>
                        </li>

                    </ul>
                </div>
                </div>
    </li>
            </c:forEach>
        </ul>
    </section>
</div>	

    
    

    

    
   
    

<%@ include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>