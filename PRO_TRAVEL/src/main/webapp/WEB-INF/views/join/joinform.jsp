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
	href="${pageContext.request.contextPath}/resources/css/AgoFiles/users_css/common.css?version=20170624">
 <link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/AgoFiles/users_css/jquery.js.selecter.css"> 
	


<!-- <script src="//code.jquery.com/jquery-1.11.0.min.js"></script> -->
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>

<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/AgoFiles/UsersJS/CheckEssential.js?version=20170626"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/AgoFiles/UsersJS/IdCheck.js?version=20170626"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/AgoFiles/UsersJS/join_checkInfo.js?version=20170626"></script>


<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/AgoFiles/UsersJS/jquery.pwstrength.js"></script>

<script>

jQuery(function($) { 
    $('#u_pwd').pwstrength(); 
});
            

</script>

<style type="text/css">
/* password indicator CSS */
#pwindicator {
    margin-top: 4px;
    width: 150px;
}

.bar {
    height: 2px;
}

.pw-very-weak .bar {
    background: #d00;
    width: 30px;
}

.pw-very-weak .label {
    color: #d00;
}

.pw-weak .bar {
    background: #d00;
    width: 60px;
}

.pw-weak .label {
    color: #d00;
}

.pw-mediocre .bar {
    background: #f3f01a;
    width: 90px;
}

.pw-mediocre .label {
    color: #f3f01a;
}

.pw-strong .bar {
    background: #f3b31a;
    width: 120px;
}

.pw-strong .label {
    color: #f3b31a;
}

.pw-very-strong .bar {
    background: #0d0;
    width: 150px;
}

.pw-very-strong .label {
    color: #0d0;
}

.fork img {
    border: 0;
    position: absolute;
    right: 0;
    top: 0;
}

.download {
    float: right;
}

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


				<form action="/join/joinform"
					method="post" id="form_checkout" class="uniForm checkout"
					enctype="multipart/form-data">
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
											<td class="value"><input type="text"
												name="u_id"
												id="u_id" value="" /> &nbsp; <span
												class="mandatory">*</span> <br>
											<span>Small Character / Number, 4~12 Character</span> <input type="button"
												id="u_idcheck" value="Duplication Check">
												<ul class="errorField">
												</ul>
												<font id="idcheck" size="2" color="green"></font>
												</td>
										</tr>
								<!-- 	</table>
								</div>
								<div class="right">
									<table cellpadding="0" cellspacing="0" class="tab"> -->
										<tr>
											<td class="label"><label for="u_pwd">Password</label></td>
											<td class="value"><input type="password"
												name="u_pwd"
												id="u_pwd" value=""  data-indicator="pwindicator"/>
												&nbsp; <span class="mandatory">*</span>
												  <div id="pwindicator">
												<div class="bar"></div>
       										     <div class="label"></div>
       										     </div>
												<ul class="PWerrorField">
												</ul></td>
										</tr>
										
									<!-- 	<tr><td>
	<form action="#" method="post">
        <label for="field">Password:</label><br>
        <input type="password" id="field">
        <div id="pwindicator">
            <div class="bar"></div>
            <div class="label"></div>
        </div>
    </form>                    
										
										<td></tr> -->
										
										<tr>
											<td class="label"><label for="pwd">Password Check</label></td>
											<td class="value"><input type="password"
												name="pwcheck"
												id="pwcheck" value="" />
												&nbsp; <span class="mandatory">*</span>
												<ul class="PWCerrorField">
												</ul></td>
										</tr>

										<tr>
											<td class="label"><label for="name">Nick Name</label></td>
											<td class="value"><input type="text" name="u_name"
												id="u_name" value="" /> &nbsp; <span class="mandatory">*</span>
												<ul class="errorField">
												</ul></td>
										</tr>

										<tr> 
											<td>Sex</td> 
											<td> 
											<input type="radio" name="u_sex" id="u_sex_m" value="Male" checked="checked"><label for="u_sex_m" class="radioSpan">Male</label> 
											<input type="radio" name="u_sex" id="u_sex_f" value="Female"> <label for="u_sex_f" class="radioSpan">Female</label> 
											&nbsp; <span class="mandatory">*</span> 
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
											<td class="label"><label for="lastname">Birthday</label></td>
											<td class="value"><input type="text" name="u_birth"
												id="u_birth" value="" /> &nbsp; <span class="mandatory">*</span>
												<ul class="errorField">
												</ul></td>
										</tr>


										<tr>
											<td class="label"><label for="u_address">Address</label></td>
											<td class="value"><input type="text" name="u_address"
												id="u_address" value="" /> &nbsp; <span class="mandatory">*</span>
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
									<!-- </table>
								</div>
								<div class="right">
									<table cellpadding="0" cellspacing="0" class="tab"> -->
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
											<td class="label"><label for="u_img">Profile Image</label></td>
											<td class="value"><input type="file" name="img_file"
												id="u_img" value="" /> &nbsp; 
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
							<style type="text/css">
/*ie7onli - skin bouton */
*+html .primaryAction {
	width: 155px;
}
</style>


							<div class="terms">

								<input type="hidden" name="terms" value="0" /><input
									type="checkbox" name="law_agree" id="law_agree" value="1" />
									I Accept<a href="terms_conditions">&nbsp; terms and conditions</a>
									<br><br>
									<!-- 
									 I accept
								the <a target="_blank" href="/terms-conditions/"
									class="secondaryAction linkPopinTermsConditions"
									title="terms and conditions">terms and conditions</a><br />  -->
									
									<input
									type="hidden" name="privacy_policy" value="0" />
									<input type="checkbox" name="privacy_policy" id="privacy_policy"
									value="1" /> 
									I accept<a href="privacy_policy">&nbsp; private policy</a>
									
									
									<!-- I accept the <a target="_blank"
									href="/privacy-policy/"
									class="secondaryAction linkPopinPrivacyPolicy"
									title="privacy policy">privacy policy</a> -->
							</div>

						<span class="btn-more1" >
							 <!-- <button name="submit" id="validate_order" type="submit"
								class="primaryAction">
								<span>가입하기</span>
							</button>  -->
							
							<button type="submit" class="btn-join" id="validate_order">JOIN</button>
						</span>
							<div class="clear"></div> 
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





	<div id="profiler"></div>
<%@include file="../include/footer.jsp" %>
</body>
</html>