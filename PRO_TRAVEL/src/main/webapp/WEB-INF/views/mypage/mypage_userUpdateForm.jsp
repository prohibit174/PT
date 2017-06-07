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
							<span>1</span>필수 입력사항
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
											<td class="label"><label for="u_id">아이디</label></td>
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
											<td class="label"><label for="pwd">비밀번호</label></td>
											<td class="value"><input type="password"
												name="u_pwd"
												id="u_pwd" value="${user.u_pwd }" />
												&nbsp; <span class="mandatory">*</span>
												<ul class="PWerrorField">
												</ul></td>
										</tr>
										<tr>
											<td class="label"><label for="pwd">비밀번호 확인</label></td>
											<td class="value"><input type="password"
												name="pwcheck"
												id="pwcheck" value="${user.u_pwd }" />
												&nbsp; <span class="mandatory">*</span>
												<ul class="PWCerrorField">
												</ul></td>
										</tr>

										<tr>
											<td class="label"><label for="name">닉네임</label></td>
											<td class="value">${user.u_name } &nbsp; <span class="mandatory">*</span>
												<ul class="errorField">
												</ul></td>
										</tr>

										<tr> 
											<td>성별</td> 
											<td> 
											${user.u_sex }&nbsp; <span class="mandatory">*</span> 
											</td> 
											</tr>

										<tr><td></tr>

										<tr>
											<td class="label"><label for="u_license">운전면허 유무</label></td>
											<td><input type="radio" name="u_license" id="u_license"
												value="운전면허 소지" checked="checked"><label>유</label> 
												 <input type="radio"
												name="u_license" id="u_license" value="운전면허 미소지"> 
												<label>무</label>

												&nbsp; <span class="mandatory">*</span>
												<ul class="errorField">
												</ul></td>
										</tr>

										<tr><td></tr>

										<tr>
											<td class="label"><label for="lastname">생년월일</label></td>
											<td class="value">${user.u_birth } &nbsp; <span class="mandatory">*</span>
												<ul class="errorField">
												</ul></td>
										</tr>


										<tr>
											<td class="label"><label for="u_address">거주지역</label></td>
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
									<span>2</span>선택 입력 사항
								</h2>
								<h3>Additional Information</h3>

								<div class="left">
									<table cellpadding="0" cellspacing="0" class="tab">

										<tr>
											<td class="label"><label for="u_job">직업</label></td>
											<td class="value"><input type="text"
												name="u_job"
												id="u_job" value="" /></td>
										</tr>
							
										<tr>
											<td class="label"><label for="u_lang">사용언어</label></td>
											<td class="value"><input type="text" name="u_lang"
												id="u_lang" value="" /> &nbsp; 
												<ul class="errorField">
												</ul></td>
										</tr>
										<tr>
											<td class="label"><label for="u_religion">종교</label></td>
											<td class="value"><input type="text" name="u_religion"
												id="u_religion" value="" /> &nbsp;
												<ul class="errorField">
												</ul></td>
										</tr>

										<tr>
											<td class="label"><label for="u_style">여행 스타일</label></td>
											<td class="value">
											<select name="u_style">
											<option value="힐링">힐링</option>
											<option value="관광">관광</option>
											<option value="맛집">맛집</option>
											<option value="액티비티">액티비티</option>
											<option value="휴양">휴양</option>
											
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


							<button name="submit" id="validate_order" type="submit"
								class="primaryAction">
								<span>수정완료</span>
							</button>
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
	
<%@include file="../include/footer.jsp" %>
</body>
</html>