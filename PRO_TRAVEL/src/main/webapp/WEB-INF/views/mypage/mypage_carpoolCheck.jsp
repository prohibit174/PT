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
<style>
@CHARSET "EUC-KR";
.wrapper {
  margin: 0 auto;
  padding: 30px;
  max-width: 800px;
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
@media screen and (max-width: 580px) {
  .row {
    padding: 8px 0;
    display: block;
  }
}

.cell {
  padding: 6px 12px;
  display: table-cell;
}
@media screen and (max-width: 580px) {
  .cell {
    padding: 2px 12px;
    display: block;
  }
}

</style>
</head>
<body>



<div class="wrapper">
  <h2>MY CARPOOL</h2>
  <div class="table">
    
    <div class="row header">
      <div class="cell">DATE</div>
      <div class="cell">CITY</div>
      <div class="cell">EMPTY</div>
      <div class="cell">PRICE</div>
      <div class="cell">Detail</div>
    </div>
    
    <c:forEach items="${list}" var="carpoolVO">
    <div class="row">
      <div class="cell">
        ${carpoolVO.c_year } ${carpoolVO.c_month } ${carpoolVO.c_date }
      </div>
      <div class="cell">
        ${carpoolVO.start_point } -> ${carpoolVO.way_point } -> ${carpoolVO.dest_point }
      </div>
      <div class="cell">
        ${carpoolVO.c_person }
      </div>
      <div class="cell">
        ${carpoolVO.c_price }$
      </div>
      <div class="cell">
        <strong><a href = '/mypage/read?c_num=${carpoolVO.c_num }'> Go </a></strong>
      </div>
    </div>
    </c:forEach>
    
  </div>
  

<h2>REQUEST CARPOOL</h2>
    <div class="table">
    
    <div class="row header blue">
      <div class="cell">
        Driver
      </div>
      <div class="cell">
        Accept
      </div>
      <div class="cell">
        Date
      </div>
      <div class="cell">
       Start
      </div>
      <div class="cell">
        Detail
      </div>
    </div>
    
    <c:forEach items="${requestList}" var="carpoolTest">
    <div class="row">
      <div class="cell">
        <img src="/resources/upload/${carpoolTest.u_u_img }" width="30" height="30" >
         ${carpoolTest.c_u_name }
      </div>
      <div class="cell">
        ${carpoolTest.cr_ox}
      </div>
      <div class="cell">
        ${carpoolTest.c_month },${carpoolTest.c_date }th, ${carpoolTest.c_year }
        ${carpoolTest.c_hour }:${carpoolTest.c_minute }
      </div>
      <div class="cell">
        ${carpoolTest.start_point}
      </div>
      <div class="cell">
        <strong><a href = '/mypage/requestRead?cr_num=${carpoolTest.cr_num }'> Go </a></strong>
      </div>
      
    </div>
    </c:forEach>
  </div> 
  
  </div>



    
    

<%@ include file="/WEB-INF/views/include/footer.jsp" %>

</body>
</html>