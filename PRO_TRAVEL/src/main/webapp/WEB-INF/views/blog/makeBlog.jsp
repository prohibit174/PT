<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	String id = (String) session.getAttribute("login");
	request.setAttribute("id", id);
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/AgoFiles/product_css/all.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/AgoFiles/product_css/common.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/AgoFiles/users_css/jquery.js.selecter.css">
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/AgoFiles/prouduct_javascript/CheckEssential.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/AgoFiles/prouduct_javascript/IdCheck.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/AgoFiles/prouduct_javascript/join_checkInfo.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/AgoFiles/prouduct_javascript/JoinCheck.js"></script>

<script type="text/javascript">

	
</script>

</head>

<body>
	<%@ include file="/WEB-INF/views/include/header.jsp"%>
	<%@ include file="/WEB-INF/views/include/blog_sidebar.jsp"%>

	<div id="wrapper" data-speed="3">
		<main id="main">
		<div class="wrapper-content">
			<section class="section w12-h bg-white process">
			<div class="content">
				<div id="conteneurform" class="contenu_full">
					<div class="box-full">
						<div class="top"></div>
						<h2>Make Your Blog!</h2>
						<div class="clear"></div>
					</div>
					<div class="bottom"></div>
					<br />
				</div>


				<form role="form" method="post" action="/blog/makeBlog"
					enctype="multipart/form-data">
					<!--  enctype="multipart/form-data"  -->

					<%--    <input type='hidden'  name="pr_reqnum" value="${Product_RequestVO.pr_reqnum}">  --%>



					<div class="box-full" id="creationaccount">
						<div class="top"></div>
						<div class="form">

							<!-- <input type="hidden" name="newuser" value="0" id="newuser" /> -->
							<div class="clear"></div>
							<div id="billingaddress">

								<div class="right">
									<table cellpadding="0" cellspacing="0" class="tab">
									
										<tr>
											<td class="label"><label for="u_lang">User Id</label></td>
											<td class="value"><input type="text" name="u_id"
												id="u_id" value="${id}" /> &nbsp; <span class="mandatory"></span>
												<ul class="errorField">
												</ul></td>
										</tr>
										
										
										<tr>
											<td class="label"><label for="u_lang">Nick name</label></td>
											<td class="value"><input type="text" name="u_name"
												id="u_name" value="" /> &nbsp; <span class="mandatory"></span>
												<ul class="errorField">
												</ul></td>
										</tr>

										<tr>
											<td class="label"><label for="u_lang">Blog Title</label></td>
											<td class="value"><input type="text" name="b_title"
												id="b_title" value="" /> &nbsp; <span class="mandatory"></span>
												<ul class="errorField">
												</ul></td>
										</tr>


										
										<tr>
											<td class="label"><label for="u_lang">Blog
													Introduction</label></td>
											<td class="value"><input type="text"
												name="b_introduction" id="b_introduction" value="" /></td>
										</tr>

										<tr>
											<td class="label"><label for="u_lang">Profile
													Image</label></td>
											<td class="value"><input type="file" name="file2"
												id="b_img" value="" /> &nbsp; <span class="mandatory"></span></td>
										</tr>


									</table>
								</div>

								<div class="clear"></div>
							</div>

							<div class="bottom"></div>

							<br />


							<div class="clear"></div>

							<div class="bottom"></div>
						</div>
						<br />

						<div class="clear"></div>


						<br />

						<div class="buttonHolder">
							<style type="text/css">
/*ie7onli - skin bouton */
*+html .primaryAction {
	width: 155px;
}
</style>
					
							<button id="validate_order" type="submit" class="primaryAction" onclick="btn_js_register_click()">
								<span>Blog Register</span>
							</button>

							<div class="clear"></div>

						</div>
				</form>
			</div>
			</section>
		</div>
	</div>


	<div id="profiler"></div>
	<%@ include file="..//include/footer.jsp"%>

</body>
</html>