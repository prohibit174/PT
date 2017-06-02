<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/AgoFiles/users_css/all.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/AgoFiles/users_css/common.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/AgoFiles/users_css/jquery.js.selecter.css">


<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/AgoFiles/UsersJS/CheckEssential.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/AgoFiles/UsersJS/IdCheck.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/AgoFiles/UsersJS/join_checkInfo.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/AgoFiles/UsersJS/JoinCheck.js"></script>



</head>

<%@include file="../include/header.jsp" %>
<%@include file="../include/mypage_sidebar_test.jsp" %>

<body>

	<h3>JoinForm</h3>



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
					enctype="application/x-www-form-urlencoded" action="JoinForm"
					method="post">
					<div class="box-full" id="creationaccount">
						<div class="top"></div>
						<div class="form">

							<input type="hidden" name="newuser" value="0" id="newuser" />
							<div id="creationaccountform">

								<h3>User information</h3>

								<div class="left">
									<table cellpadding="0" cellspacing="0" class="tab">
										<tr>
											<td class="label"><label for="u_id">아이디</label></td>
											<td class="value"><input type="text"
												name="u_id"
												id="u_id" value="" /> &nbsp; <span
												class="mandatory">*</span> <br>
											<span>영문소문자 / 숫자, 4~12자</span> <input type="button"
												id="u_idcheck" value="중복체크">
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
												id="u_pwd" value="" />
												&nbsp; <span class="mandatory">*</span>
												<ul class="PWerrorField">
												</ul></td>
										</tr>
										<tr>
											<td class="label"><label for="pwd">비밀번호 확인</label></td>
											<td class="value"><input type="password"
												name="pwcheck"
												id="pwcheck" value="" />
												&nbsp; <span class="mandatory">*</span>
												<ul class="PWCerrorField">
												</ul></td>
										</tr>

										<tr>
											<td class="label"><label for="name">닉네임</label></td>
											<td class="value"><input type="text" name="u_name"
												id="u_name" value="" /> &nbsp; <span class="mandatory">*</span>
												<ul class="errorField">
												</ul></td>
										</tr>

										<tr>
											<td>성별</td>

											<td><input type="radio" name="u_sex" id="u_sex"
												value="남자"> 남자 <input type="radio" name="u_sex"
												id="u_sex" value="여자"> 여자
												
												&nbsp; <span class="mandatory">*</span>
												
												</td>

										</tr>

										<tr><td></tr>

										<tr>
											<td class="label"><label for="u_license">운전면허 유무</label></td>
											<td><input type="radio" name="u_license" id="u_license"
												value="운전면허 소지"> 유 &nbsp;&nbsp; <input type="radio"
												name="u_license" id="u_license" value="운전면허 미소지"> 무

												&nbsp; <span class="mandatory">*</span>
												<ul class="errorField">
												</ul></td>
										</tr>

										<tr><td></tr>

										<tr>
											<td class="label"><label for="lastname">생년월일</label></td>
											<td class="value"><input type="text" name="u_birth"
												id="u_birth" value="" /> &nbsp; <span class="mandatory">*</span>
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
												name="form_checkout[billing][address2]"
												id="form_checkout-billing-address2" value="" /></td>
										</tr>
									</table>
								</div>
								<div class="right">
									<table cellpadding="0" cellspacing="0" class="tab">
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
											<td class="label"><label for="u_img">프로필 이미지</label></td>
											<td class="value"><input type="file" name="u_img"
												id="u_img" value="" /> &nbsp; 
												<ul class="errorField">
												</ul></td>
										</tr>
										<tr>
											<td class="label"><label for="u_style">여행 스타일</label></td>
											<td class="value">
											<input type="radio" name="u_style" value="힐링" checked="checked">힐링&nbsp;&nbsp; 
											<input type="radio" name="u_style" value="관광">관광&nbsp;&nbsp;
							<input type="radio" name="u_style" value="맛집"> 맛집&nbsp;&nbsp;
							<input type="radio" name="u_style" value="액티비티"> 액티비티&nbsp;&nbsp;
							<input type="radio" name="u_style" value="휴양">휴양
							&nbsp;&nbsp;<!-- <span>하나만 선택해주세요</span> --></td>
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
									<a href="terms_conditions">이용약관</a>에 동의합니다.
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
									<a href="privacy_policy">개인정보수집및이용</a>에 동의합니다.
									
									
									<!-- I accept the <a target="_blank"
									href="/privacy-policy/"
									class="secondaryAction linkPopinPrivacyPolicy"
									title="privacy policy">privacy policy</a> -->
							</div>

							<button name="submit" id="validate_order" type="submit"
								class="primaryAction">
								<span>가입하기</span>
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
	</div>
	</main>


	</div>

	<div id="profiler"></div>
<%@include file="../include/footer.jsp" %>
</body>
</html>