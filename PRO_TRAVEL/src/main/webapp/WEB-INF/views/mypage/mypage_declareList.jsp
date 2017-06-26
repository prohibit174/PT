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

.table2 .col2 {
	width: 18%;

	margin: 0px 10px 0px 0px;
}

.table2 .col3 {
	width: 15%;
	margin: 0px 10px 0px 0px;
}

.table2 .col5 {
	width: 12%;
	margin: 0px 10px 0px 0px;
}
</style>
</head>

<body>
<div class="wrapper">

	<div class="heading">
		<h2>DECLARATION LIST</h2>
		<ul class="add-links">

		</ul>
	</div>
	
	


		<ul class="table2 ajax-content">
			<li >
				<div class="th col-first">USER</div>
				<div class="th col1">CATEGORY</div>
				<div class="th col2"></div>
				<div class="th col2"></div>
				<div class="th col3">RESULT</div>
				<div class="th col5"></div>

			</li>


			<li style="margin-top: 20px">
			<c:forEach items="${list}" var="myDeclare">
					<div class="th col-first">${myDeclare.d_reported}</div>
					<div class="th col1">${myDeclare.d_big }</div>
					<div class="th col2">${myDeclare.d_small }</div>
					<div class="th col2"></div>
					<div class="th col3">${myDeclare.d_state }</div>
					<div class="th col5"></div>
					<!-- <div class="th col5"></div> -->
				
					</c:forEach>
					 <c:if test="${empty list}">
							Not Exist
						</c:if>
					</li>
					</ul>
</div>


  


  </div> 
  





<%@ include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>