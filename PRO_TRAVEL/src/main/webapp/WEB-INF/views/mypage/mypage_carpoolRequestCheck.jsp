<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<%@ include file="/WEB-INF/views/include/mypage_sidebar.jsp" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script>
function detailForm(u_id){
	 var popupX = (window.screen.width / 2) - (800 / 2);
	   var popupY= (window.screen.height /2) - (500 / 2);
	    window.open('about:blank','popup_window','width=350, height=250, left='+popupX+', top='+popupY);
	    var wantForm = 'detailForm'+u_id;
	    var frm =document.getElementById(wantForm);
	    frm.submit(); 
	}

</script>

<style>
@CHARSET "EUC-KR";
.wrapper {
  margin: 0 auto;
  padding-left: 100px;
  max-width: 1000px;
  min-height: 320px;
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

<div class="wrapper">
  <div class="section-links" style="margin-top:0px; padding-top:0px;
		font-size:16px; float: right; margin-right:70px;">
				<ul>
					<li><a href="/mypage/carpoolCheck">MY CARPOOL</a> </li>
					<li>REQUEST CARPOOL</li>
				</ul>
			</div>
		
		<div class="content1">
	<div class="heading">
		<h2>REQUEST LIST</h2>
		<ul class="add-links">

		</ul>
	</div>
	
	


		<ul class="table2 ajax-content" >
			<li >
				<div class="th col1">DRIVER</div>
				<div class="th col2">ACCEPT</div>
				<div class="th col2">DATE</div>
				<div class="th col3">TIME</div>
				<div class="th col3">START</div>
				<div class="th col4">DETAIL</div>

			</li>


			<li style="margin-top: 20px">
			            <c:forEach items="${requestList}" var="carpool">
                <li>

                <div class="td col1">
<%-- onclick="detailForm(${listMessage.m_num});" --%>

 <form id="detailForm${carpool.c_u_id }" name="detailForm${carpool.c_u_id }" method="post" 
 action="/user?u_id=${carpool.c_u_id }" target="popup_window">
    <a onclick = "detailForm('${carpool.c_u_id }')">
    
<picture class="picture">

<img src="/resources/upload/${carpool.u_u_img }" width="50" height="50" >
<span class="mask"></span>
</picture>
        <div class="area">
            <strong class="name">${carpool.c_u_name } </strong>
        </div>
  </a> 
  </form>
                </div>

                
                
                <div class="td col2">

        <div class="area">
            <strong> ${carpool.cr_ox}   </strong>
        </div>
                </div>
                
                 <div class="td col2">

        <div class="area">
            <strong> ${carpool.c_month }/${carpool.c_date }</strong>
        </div>
                </div>
               


                
                
                
                        <div class="td col3">

        <div class="area">
            <strong> ${carpool.c_hour }:${carpool.c_minute } </strong>
        </div>
                </div>        
                
                         <div class="td col3">

        <div class="area">
            <strong> ${carpool.start_point } </strong>
        </div>
                </div>   
                
                <div class="td col4">


                <div class="area">
                    <ul class="medal-box">

                        <li>
                            <a href = '/mypage/requestRead?cr_num=${carpool.cr_num }&c_num=${carpool.c_num}'>GO</a>
                        </li>

                    </ul>
                </div>
                </div>
    </li>
            </c:forEach>
					 <c:if test="${empty requestList}">
			요청 목록이 없습니다.
		</c:if>
					</li>
					</div>
					

  </div>



    
    

<%@ include file="/WEB-INF/views/include/footer.jsp" %>

</body>
</html>