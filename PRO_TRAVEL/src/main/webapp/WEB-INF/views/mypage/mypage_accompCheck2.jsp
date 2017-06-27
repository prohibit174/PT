<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/AgoFiles/users_css/all.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/AgoFiles/users_css/common.css">


<%@include file="/WEB-INF/views/include/header.jsp"%>
<%@include file="/WEB-INF/views/include/mypage_sidebar.jsp"%>



<style>
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

.btn-more1{
    display: inline-block;
    vertical-align: top;
   color: #959595;
    border: 2px solid #959595;
  /*   padding: 7px 20px; */
 
    text-decoration: none !important;
    font-weight: bold;
    line-height: 2em; 
    background: white;
    text-align: center;
    width: 60px;
    height: 30px;
    }

 button{
    color : #959595}
</style>
</head>

<script type="text/javascript">

function btn_js_accept_click(URL){
 
     if(confirm("Would you move to detail Info?") == true){
        location.href=URL;
     }
    
   }


function btn_js_rejection_click(URL){
	 
    if(confirm("Are you sure to delete this group?") == true){
       location.href=URL;
    }
   
  }
</script>

<body>

	<section class="results ajax-area" data-tmpl="athleteResults_tmpl"
		style="margin-left:300px; padding-top: 20px;">
		
		<div class="content1">
	<div class="heading">
		<h2>HOST GROUP</h2>
		<ul class="add-links">

		</ul>
	</div>
	
	


		<ul class="table2 ajax-content">
			<li >
				<div class="th col-first">DATE</div>
				<div class="th col2">HOST_ID</div>
				<div class="th col2">REGION</div>
				<div class="th col2">CURRENT</div>
				<div class="th col2">MAX</div>
 				<div class="th col">INFO</div>

			</li>


			<li style="margin-top: 20px">
			<c:forEach items="${groupVO}"
					var="groupVO">
					<div class="th col-first">${groupVO.tp_date}</div>
					<div class="th col2">${groupVO.u_id}</div>
					<div class="th col2">${groupVO.cor_region}</div>
					<div class="th col2">${groupVO.current_num}</div>
					<div class="th col2">${groupVO.max_people_num}</div>
					<%-- <div class="th col5">${Product_RequestVO.pr_ox}</div> --%>
				

				<td align="center"><input type="button" value="INFO"
					class="btn-more1" style="margin-bottom:6px"
					onclick="javascript:btn_js_accept_click('/mypage/accom_read?group_id=${groupVO.accomp_group_num}')"></td>
			 <td align="center"><input type="button" style="margin-bottom:6px" value="DEL"
					onclick="javascript:btn_js_rejection_click('javascript:removeLink('/mypage/remove_accom_group?accomp_group_num=${groupVO.accomp_group_num}')"
					class="btn-more1"></td> 
			
					</c:forEach>
					 <c:if test="${empty groupVO}">
					 <br>
			요청 목록이 없습니다.
		</c:if>
					</li>
					</div>
					
			
	

	<div class="heading">
		<h2>GUEST LIST</h2>
		<ul class="add-links">

		</ul>
	</div>

	<ul class="table2 ajax-content">
		<li>
				<div class="th col-first">DATE</div>
				<div class="th col2">GUESTs_ID</div>
				<div class="th col2">REGION</div>
				<div class="th col2">CURRENT</div>
				<div class="th col2">MAX</div>
 				<div class="th col">DETAIL</div>

		</li>


		<li style="margin-top: 20px"><c:forEach items="${list_o}"
				var="Product_O">
				<div class="th col-first">${Product_O.pr_reqnum}</div>
				<div class="th col1">${Product_O.u_id}</div>
				<div class="th col2">${Product_O.p_num}</div>
				<div class="th col2">${Product_O.pr_place}</div>
				<div class="th col3">${Product_O.pr_date}</div>
				<div class="th col5">${Product_O.pr_ox}</div>
			</c:forEach>
			
			 <c:if test="${empty list_o}">
			 <br>
			수락 목록이 없습니다.
		</c:if>
	</ul>
	
	  </section>



	<%@include file="/WEB-INF/views/include/footer.jsp"%>
</body>
</html>