<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="/WEB-INF/views/include/header.jsp"%>
<%@ include file="/WEB-INF/views/include/mypage_sidebar.jsp"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style>
@CHARSET "EUC-KR";

.wrapper {
	margin: 0 auto;
	padding-left: 30px;
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
	<a href="#main" class="accessibility">skip to content</a>
	<div id="wrapper">
		<div id="main">
			<div class="main-container">
				<div class="main-holder">

					<div class="content">
						<div class="c2">

							<div class="block">
								<div class="text-content">
									<h2>Edit your group info</h2>

									<p>
										<strong>Hosts are chefs, hikers, or passionate people
											who love sharing their emotion with guests by planning and
											leading experiences.</strong> <br />
								</div>
								<form id="newsletter-form" class="form" method="post"
									action="/mypage/mypage_accomp_edit">

									<div class='row required'>
										<label for="email" class="label">&nbsp Current Date</label>
										<div class='row-frame'>

											<input type="text" name="tp_date" id="email" readonly 
												value="${groupVO.tp_date},${groupVO.cor_region}" class="input">
										</div>
									</div>

									<div class='row required'>
										<label for="lang" class="label">&nbsp Change Date</label>
										<div class='row-holder row-check'>
											<c:forEach items="${list}" var="list">
												<div class="row">
													<input type="radio" name="acr_ox" id="lang-en" value="${list.tp_date}/${list.cor_region}"
<c:if test="${list.cor_region eq groupVO.cor_region and list.tp_date eq groupVO.tp_date}">checked="checked" </c:if>>
		 
			

													<label for="lang-en">${list.tp_date},
														${list.cor_region}
														&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</label>
												</div>
											</c:forEach>
										</div>
									</div>

									<div class='row required'>
										<label for="email" class="label">&nbsp Max</label>
										<div class='row-frame'>

											<input type="text" name="max_people_num" id="email"
												value="${groupVO.max_people_num}" class="input">
										</div>
									</div>

<input type="hidden" name="accomp_group_num" value="${groupVO.accomp_group_num}" id="vcap_csrfToken">



									<input type="submit" name="submit" id="submit" value="Submit"
										class="add-btn" />
								</form>
							</div>
						</div>
					</div>



				</div>
			</div>
		</div>

	</div>

	<%@ include file="/WEB-INF/views/include/footer.jsp"%>

</body>
</html>