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
	font-size: 15px;
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
	width: 15%;
	margin: 0px 10px 0px 0px;
}
</style>
</head>

<body>


	<section class="results ajax-area" data-tmpl="athleteResults_tmpl"
		style="margin-left:300px; padding-top: 20px;">
	<div class="heading">
		<h2>REQUEST LIST</h2>
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


		<li style="margin-top: 20px">
		<c:forEach items="${list}"
				var="Product_RequestVO">
				<div class="th col-first">${Product_RequestVO.pr_reqnum}</div>
				<div class="th col1">${Product_RequestVO.u_id}</div>
				<div class="th col2">${Product_RequestVO.p_num}</div>
				<div class="th col2">${Product_RequestVO.pr_place}</div>
				<div class="th col3">${Product_RequestVO.pr_date}</div>
				<div class="th col5">${Product_RequestVO.pr_ox}</div>
			</c:forEach>
		
			<td align="center"><input type="button" value="수락" class="nlogin_btn" onclick="javascript:btn_js_accept_click('updateAcceptAction.mypage?pr_reqnum=${product_req.pr_reqnum }')"></td>
         <td align="center"><input type="button" value="거절" onclick="location.href='carpoolDelete.mypage?c_num=${carpool.c_num } '" class="nlogin_btn"></td> 
			
			</li>
			
	</ul>
	<%-- <li>
				<div class="td col-first">

					<div class="profile-row">
						<div class="flag-image"></div>
						<span>${Product_RequestVO.pr_reqnum }</span>
					</div>
				</div>
				<div class="td col1">




					<a href='/carpool/read?c_num=${carpool_ListVO.c_num }'> <picture
							class="picture"> <img
							src="/resources/upload/${carpool_ListVO.u_img }" width="50"
							height="50"> <span class="mask"></span> </picture>
						<div class="area">
							<strong class="name">${carpool_ListVO.u_name } </strong>
						</div>
					</a>
				</div>
				<div class="td col2">

					<div class="area">
						<strong> ${carpool_ListVO.c_month },
							${carpool_ListVO.c_date }th, ${carpool_ListVO.c_year}
							${carpool_ListVO.c_hour }:${carpool_ListVO.c_minute } </strong>
					</div>
				</div>

				<div class="td col2">

					<div class="area">
						<strong> ${carpool_ListVO.start_point } ->
							${carpool_ListVO.way_point } -> ${carpool_ListVO.dest_point} </strong>
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

							<li><a
								href="javascript:applyLink('/carpool/request?c_num=${carpool_ListVO.c_num}')"
								class="btn-calendar">GO</a></li>

						</ul>
					</div>
				</div>
			</li> --%> <span class="btn-more"> <a
		href="/ajaxscript/loadmoretablelist/games/athletes/{535B8008-29D0-44BB-8B14-E2B29CC79DD5}/3/3">More</a>
	</span> </section>



	<%@include file="/WEB-INF/views/include/footer.jsp"%>
</body>
</html>