<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/AgoFiles/users_css/all.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/AgoFiles/users_css/common.css">
	
<style type="text/css">

.btn-more1 > .btn-join {
    display: inline-block;
    vertical-align: top;
    color: #959595; 
    border: 2px solid #959595;
    padding: 7px 20px;
    min-width: 110px;
    text-decoration: none !important;
    font-weight: bold;
 /*    font: bold 1.3em; */
    line-height: 2em; 
    background: white;
    width: 50px;
    height: 50px;
    }

 button{
    color : #959595;
    }
</style>
</head>

<%@include file="/WEB-INF/views/include/header.jsp" %>
<%@include file="/WEB-INF/views/include/mypage_sidebar.jsp" %>

<body>
<div id="wrapper" data-speed="3">

		<main id="main">


		<div class="wrapper-content">



			<section class="section w12-h bg-white process">
			<div class="content">
				<div id="conteneurform" class="contenu_full">

					<div class="box-full">
						<div class="top"></div>

						<h2>
							<span>1</span>Essential Field
						</h2>

						<div class="clear"></div>
					</div>
					<div class="bottom"></div>
					<br />
				</div>


				<form id="form_checkout" class="uniForm checkout"
					enctype="application/x-www-form-urlencoded" action="usercheckInfo"
					method="post">
					<!-- <div class="box-full" id="creationaccount"> -->
						<div class="top"></div>
						<div class="form">

							<input type="hidden" name="newuser" value="0" id="newuser" />
							<div id="creationaccountform">

								<h3>User information</h3>

								<div class="left">
									<table cellpadding="0" cellspacing="0" class="tab">
										<tr>
											<td class="label"><label for="u_id">User ID</label></td>
											<td class="value">
											${user.u_id }
												<ul class="errorField">
												</ul></td>
										</tr>
								<!-- 	</table>
								</div>
								<div class="right">
									<table cellpadding="0" cellspacing="0" class="tab"> -->
										<tr>
											<td class="label"><label for="pwd">Password</label></td>
											<td class="value"><input type="password"
												name="u_pwd"
												id="u_pwd" value="${user.u_pwd }" />
												&nbsp; <span class="mandatory">*</span>
												<ul class="PWerrorField">
												</ul></td>
										</tr>
										<tr>
											<td class="label"><label for="pwd">Password Check</label></td>
											<td class="value"><input type="password"
												name="pwcheck"
												id="pwcheck" value="${user.u_pwd }" />
												&nbsp; <span class="mandatory">*</span>
												<ul class="PWCerrorField">
												</ul></td>
										</tr>

										<tr>
											<td class="label"><label for="name">Nick Name</label></td>
											<td class="value">${user.u_name } &nbsp; <span class="mandatory">*</span>
												<ul class="errorField">
												</ul></td>
										</tr>

										<tr> 
											<td>Sex</td> 
											<td> 
											${user.u_sex }&nbsp; <span class="mandatory">*</span> 
											</td> 
											</tr>

										<tr><td></tr>

										<tr>
											<td class="label"><label for="u_license">Driving License</label></td>
											<td><input type="radio" name="u_license" id="u_license"
												value="Licensed" checked="checked"><label>Licensed</label> 
												 <input type="radio"
												name="u_license" id="u_license" value="No License"> 
												<label>No License</label>

												&nbsp; <span class="mandatory">*</span>
												<ul class="errorField">
												</ul></td>
										</tr>

										<tr><td></tr>

										<tr>
											<td class="label"><label for="lastname">Birth Date</label></td>
											<td class="value">${user.u_birth } &nbsp; <span class="mandatory">*</span>
												<ul class="errorField">
												</ul></td>
										</tr>


										<tr>
											<td class="label"><label for="u_address">Address</label></td>
											<td class="value"><input type="text" name="u_address"
												id="u_address" value="${user.u_address }" /> &nbsp; <span class="mandatory">*</span>
												<ul class="errorField">
												</ul></td>
										</tr>

									</table>
								</div>
							</div>
							<div class="clear"></div>
							<div id="Option_Info">
								<h2>
									<span>2</span>Optional Field
								</h2>
								<h3>Additional Information</h3>

								<div class="left">
									<table cellpadding="0" cellspacing="0" class="tab">

										<tr>
											<td class="label"><label for="u_job">Job</label></td>
											<td class="value"><input type="text"
												name="u_job"
												id="u_job" value="" /></td>
										</tr>
							
										<tr>
											<td class="label"><label for="u_lang">Language</label></td>
											<td class="value"><input type="text" name="u_lang"
												id="u_lang" value="" /> &nbsp; 
												<ul class="errorField">
												</ul></td>
										</tr>
										<tr>
											<td class="label"><label for="u_religion">Religion</label></td>
											<td class="value"><input type="text" name="u_religion"
												id="u_religion" value="" /> &nbsp;
												<ul class="errorField">
												</ul></td>
										</tr>

										<tr>
											<td class="label"><label for="u_style">Trip Style</label></td>
											<td class="value">
											<select name="u_style">
											<option value="Healing">Healing</option>
											<option value="Sight seeing">Sight seeing</option>
											<option value="Restaurant">Restaurant</option>
											<option value="Activity">Activity</option>
											<option value="Relax">Relax</option>
											
											</select>
							
											</td>
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
<!-- 							<style type="text/css">
/*ie7onli - skin bouton */
*+html .primaryAction {
	width: 155px;
}
</style> -->


							<span class="btn-more1" >
							<button type="submit" class="btn-join" id="validate_order">CONFIRM</button>
						</span>
							
							
						</div>
				</form>
			</div>
			</section>
		</div>
		<!-- 맞을까 닫음태그? --> <!--         
                <div class="panel cio">
                    <div class="wrapper-content">
                        FOOTER START
                        <section class="section w12-h bg-white">
                            <div class="content">
   
</div>                        </section>
                        FOOTER END
                    </div>
                </div> -->
                </main>
	</div>
	
<%@include file="../include/footer.jsp" %>
</body>
</html>