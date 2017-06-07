<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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



</head>

<body>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<%@ include file="/WEB-INF/views/include/product_sidebar.jsp" %>

	<div id="wrapper" data-speed="3">
		<main id="main">
		<div class="wrapper-content">
			<section class="section w12-h bg-white process">
			<div class="content">
				<div id="conteneurform" class="contenu_full">
					<div class="box-full">
						<div class="top"></div>
						<h2>Register Product</h2>
						<div class="clear"></div>
					</div>
					<div class="bottom"></div>
					<br />
				</div>


				<form id="form_checkout" class="uniForm checkout"
					enctype="multipart/form-data" 
					action="/product/product_register" method="post">
					<div class="box-full" id="creationaccount">
						<div class="top"></div>
						<div class="form">

							
							<div class="clear"></div>
							<div id="billingaddress">

								<div class="right">
									<table cellpadding="0" cellspacing="0" class="tab">
										<tr>
											<td class="label"><label for="u_lang">Product
													Number</label></td>
											<td class="value"><input type="text" name="p_num"
												id="p_num" value="" /> &nbsp; <span class="mandatory"></span>
												<ul class="errorField">
												</ul></td>
										</tr>

										<tr>
											<td class="label"><label for="u_lang">Product
													Name</label></td>
											<td class="value"><input type="text" name="p_name"
												id="p_name" value="" /> &nbsp; <span class="mandatory"></span>
												<ul class="errorField">
												</ul></td>
										</tr>
										<tr>
											<td class="label"><label for="u_lang">User ID</label></td>
											<td class="value"><input type="text" name="u_id"
												id="u_id" value="" /> &nbsp; <span class="mandatory"></span>
												<ul class="errorField">
												</ul></td>
										</tr>

										<tr>
											<td class="label"><label for="u_lang">Product
													Detail</label></td>
											<td class="value"><input type="text" name="p_detail"
												id="p_detail" value="" /> &nbsp; <span class="mandatory"></span>
												<ul class="errorField">
												</ul></td>
										</tr>
										<tr>
											<td class="label"><label for="u_lang">Price</label></td>
											<td class="value"><input type="text" name="p_price"
												id="p_price" value="" /></td>
										</tr>

										<tr>
											<td class="label"><label for="u_lang">Date</label></td>
											<td class="value"><input type="text" name="p_date"
												id="p_date" value="" /></td>
										</tr>
										
										<tr>
											<td class="label"><label for="u_lang">Product
													Image</label></td>
											<td class="value"><input type="file" name="file1"
												id="p_img" value="" /> &nbsp; <span class="mandatory"></span>
												<ul class="errorField">
												</ul></td>
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
<!-- <style type="text/css">
/*ie7onli - skin bouton */
*+html .primaryAction {
	width: 155px;
}
</style> -->
<button name="submit" id="validate_order" type="submit"
								class="primaryAction">
								<span>Register</span>
</button>

						</div></div>
				</form>
				
			</div>
			</section>
		</div>
</main>
	</div>
	



<%@ include file="../include/footer.jsp" %> 

</body>
</html>