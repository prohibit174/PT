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
	function btn_js_accept_click(URL) {

		if (confirm("수락하시겠습니까?") == true) {
			location.href = URL;
		}

	}

	function btn_js_rejection_click(URL) {

		if (confirm("거절하시겠습니까?") == true) {
			location.href = URL;
		}

	}
</script>

<body>


	<section class="results ajax-area" data-tmpl="athleteResults_tmpl"
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
			박혜진 멍청이
		</div>
	</div>

	</section>
	<%@include file="/WEB-INF/views/include/footer.jsp"%>
</body>
</html>