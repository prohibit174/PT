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


				<form id="form_checkout" class="uniForm checkout"
					enctype="application/x-www-form-urlencoded" action="checkPW" method="post">
					<!-- <div class="box-full" id="creationaccount"> -->
						<div class="top"></div>
						<div class="form">

							<input type="hidden" name="newuser" value="0" id="newuser" />
							<div id="creationaccountform">

								<h3>Check Password</h3>

								<div class="left">
									<table cellpadding="0" cellspacing="0" class="tab">
										<tr>
											<td class="label"><label for="u_pwd">비밀번호</label></td>
											<td class="value"><input type="password" name="u_pwd" id="u_pwd"> &nbsp; <span
												class="mandatory">*</span> <br>
												<span>본인 확인을 위해 비밀번호를 입력해주세요.</span>
										</td>
										
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


							

							<span class="btn-more1" >
							<button type="submit" class="btn-join" id="validate_order">MODIFY</button>
						</span>
							<div class="clear"></div>
						</div>
				</form>
			</div>
			</section>
		</div>
	
                </main>
	</div>
			
				
	

			
<%@include file="../include/footer.jsp" %>
</body>
</html>