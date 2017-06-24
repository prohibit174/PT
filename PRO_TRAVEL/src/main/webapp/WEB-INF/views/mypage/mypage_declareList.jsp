<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<%@ include file="/WEB-INF/views/include/mypage_sidebar.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<style>
@CHARSET "EUC-KR";
.wrapper {
  margin: 0 auto;
  padding-left: 30px;
  max-width: 800px;
  min-height: 320px;
  height: auto;
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

  

<h2>REQUEST CARPOOL</h2>
    <div class="table">
    
    <div class="row header blue">
      <div class="cell">
        USER
      </div>
      <div class="cell">
        CATEGORY
      </div>
      <div class="cell">
        RESULT
      </div>
      <div class="cell">
        DETAIL
      </div>
    </div>
    
    <c:forEach items="${list}" var="myDeclare">
    <div class="row">
      <div class="cell">
        <img src="/resources/upload/${myDeclare.d_reported_img }" width="30" height="30" >
         ${myDeclare.d_reported_id }
      </div>
      <div class="cell">
      ${myDeclare.d_big }(${myDeclare.d_small })
      </div>
      <div class="cell">
      ${myDeclare.d_reported }
      </div>
      <div class="cell">
        <strong><a href = '/mypage/declareRead?d_num=${myDeclare.d_num }'> Go </a></strong>
      </div>
      
    </div>
    </c:forEach>
  </div> 
  
  </div>



    
    

<%@ include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>