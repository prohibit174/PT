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
</style>
</head>

<script type="text/javascript">

function btn_js_accept_click(URL){
 
     if(confirm("수락하시겠습니까?") == true){
        location.href=URL;
     }
    
   }


function btn_js_rejection_click(URL){
	 
    if(confirm("거절하시겠습니까?") == true){
       location.href=URL;
    }
   
  }
</script>

<body>

<!-- <section class="results ajax-area" data-tmpl="athleteResults_tmpl"
		style="margin-left:300px; padding-top: 20px;">

	<div class="main">
		<div class="main-holder">
			<div class="section-links">
				<ul>
					<li><a href="/mypage/mypage_accom_request_sent">
							Alphabetical Order </a></li>
					<li>Protocol Order</li>
				</ul>
			</div>
			
		</div>
	</div>

	</section>

 -->
	<section class="results ajax-area" data-tmpl="athleteResults_tmpl"
		style="margin-left:300px; padding-top: 20px;">
		
		<div class="section-links" style="margin-top:0px; padding-top:0px;
		font-size:16px; float: right; margin-right:70px;">
				<ul>
					<li> Requested List </li>
					<li><a href="/mypage/product_myRequestList">Request List</a></li>
				</ul>
			</div>
		
		<div class="content1">
	<div class="heading">
		<h2>REQUESTED LIST</h2>
		<ul class="add-links">

		</ul>
	</div>
	
	


		<ul class="table2 ajax-content">
			<li >
				<div class="th col-first">REQNUM</div>
				<div class="th col1">USER_ID</div>
				<div class="th col2">PRODUCT_NAME</div>
				<div class="th col2">PLACE</div>
				<div class="th col3">DATE</div>
				<div class="th col5">REQ_STATUS</div>

			</li>


			<li style="margin-top: 20px"><c:forEach items="${list}"
					var="Product_RequestVO">
					<div class="th col-first">${Product_RequestVO.pr_reqnum}</div>
					<div class="th col1">${Product_RequestVO.u_id}</div>
					<div class="th col2">${Product_RequestVO.p_num}</div>
					<div class="th col2">${Product_RequestVO.pr_place}</div>
					<div class="th col3">${Product_RequestVO.pr_date}</div>
					<div class="th col5">${Product_RequestVO.pr_ox}</div>
				

				<td align="center"><input type="button" value="수락"
					class="nlogin_btn" style="margin-bottom:6px"
					onclick="javascript:btn_js_accept_click('/mypage/product_requestAccept?pr_reqnum=${Product_RequestVO.pr_reqnum }')"></td>
			 <td align="center"><input type="button" style="margin-bottom:6px" value="거절"
					onclick="javascript:btn_js_rejection_click('/mypage/product_requestReject?pr_reqnum=${Product_RequestVO.pr_reqnum }')"
					class="nlogin_btn"></td> 
					</c:forEach>
					 <c:if test="${empty list}">
			요청 목록이 없습니다.
		</c:if>
					</li>
					</div>
					
			
	

	<div class="heading">
		<h2>ACCEPTED LIST</h2>
		<ul class="add-links">

		</ul>
	</div>

	<ul class="table2 ajax-content">
		<li>
			<div class="th col-first">REQNUM</div>
			<div class="th col1">USER_ID</div>
			<div class="th col2">PRODUCT_NAME</div>
			<div class="th col2">PLACE</div>
			<div class="th col3">DATE</div>
			<div class="th col5">REQ_STATUS</div>

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
			수락 목록이 없습니다.
		</c:if>
	</ul>
	
	
	<div class="heading">
		<h2>REJECTED LIST</h2>
		<ul class="add-links">

		</ul>
	</div>

	<ul class="table2 ajax-content">
		<li>
			<div class="th col-first">REQNUM</div>
			<div class="th col1">USER_ID</div>
			<div class="th col2">PRODUCT_NAME</div>
			<div class="th col2">PLACE</div>
			<div class="th col3">DATE</div>
			<div class="th col5">REQ_STATUS</div>

		</li>


		<li style="margin-top: 20px"><c:forEach items="${list_x}"
				var="list_x">
				<div class="th col-first">${list_x.pr_reqnum}</div>
				<div class="th col1">${list_x.u_id}</div>
				<div class="th col2">${list_x.p_num}</div>
				<div class="th col2">${list_x.pr_place}</div>
				<div class="th col3">${list_x.pr_date}</div>
				<div class="th col5">${list_x.pr_ox}</div>
			</c:forEach>
			
			 <c:if test="${empty list_x}">
			거절 목록이 없습니다.
		</c:if>
	</ul>
	
	
	<%-- <div class="heading">
		<h2>MY REQUESTED LIST</h2>
		<ul class="add-links">

		</ul>
	</div>

	<ul class="table2 ajax-content">
		<li>
			<div class="th col-first" style="width: 18%;">REQNUM</div>
			<div class="th col1" style="width: 18%;">PRODUCT_NAME</div>
			<div class="th col2" style="width: 18%;">PLACE</div>
			<div class="th col2" style="width: 18%;">DATE</div>
			<div class="th col3" style="width: 18%;">REQ_STATUS</div>
			<!-- <div class="th col5">REQ_STATUS</div>
 -->
		</li>


		<li style="margin-top: 20px"><c:forEach items="${Myreq}"
				var="Myreq">
				<div class="th col-first" style="width: 18%;">${Myreq.pr_reqnum}</div>
				<div class="th col1" style="width: 18%;">${Myreq.p_num}</div>
				<div class="th col2" style="width: 18%;">${Myreq.pr_place}</div>
				<div class="th col2" style="width: 18%;">${Myreq.pr_date}</div>
				<div class="th col3" style="width: 18%;">${Myreq.pr_ox}</div>
				<div class="th col5">${Product_O.pr_ox}</div>
				
				<td align="center"><input type="button" value="취소"
					class="nlogin_btn" style="margin-bottom:6px"
					onclick="javascript:btn_js_accept_click('/mypage/product_requestAccept?pr_reqnum=${Product_RequestVO.pr_reqnum }')"></td>
			</c:forEach>
			
			 <c:if test="${empty Myreq}">
			수락 목록이 없습니다.
		</c:if>
	</ul>
 --%>
	<!--  <span class="btn-more"> 
	  <a href="product_myRequestList">My Requested List</a> 

	</span> -->   </section>



	<%@include file="/WEB-INF/views/include/footer.jsp"%>
</body>
</html>