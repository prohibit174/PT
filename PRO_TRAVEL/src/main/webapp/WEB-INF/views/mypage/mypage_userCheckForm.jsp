<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
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
					enctype="application/x-www-form-urlencoded" action="JoinForm"
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
											<td class="value">${user.u_id } &nbsp; <span
												class="mandatory">*</span> <br>
											<span>영문소문자 / 숫자, 4~12자</span> <input type="button"
												id="u_idcheck" value="중복체크">
												<ul class="errorField">
												</ul></td>
										</tr>
								
										

										<tr>
											<td class="label"><label for="name">닉네임</label></td>
											<td class="value">
											${user.u_name } &nbsp; <span class="mandatory">*</span>
												<ul class="errorField">
												</ul></td>
										</tr>

										<tr> 
											<td>성별</td> 
											<td> 
											${user.u_sex }
											&nbsp; <span class="mandatory">*</span> 
											</td> 
											</tr>

										<tr><td></tr>

										<tr>
											<td class="label"><label for="u_license">운전면허 유무</label></td>
											<td>${user.u_license }
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
											<td class="value">${user.u_address } &nbsp; <span class="mandatory">*</span>
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
									<!-- </table>
								</div>
								<div class="right">
									<table cellpadding="0" cellspacing="0" class="tab"> -->
										<tr>
											<td class="label"><label for="u_lang">사용언어</label></td>
											<td class="value">${user.u_lang } &nbsp; 
												<ul class="errorField">
												</ul></td>
										</tr>
										<tr>
											<td class="label"><label for="u_religion">종교</label></td>
											<td class="value">${user.u_religion }&nbsp;
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
											${user.u_style }
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


							

							<button name="submit" id="validate_order" type="submit"
								class="primaryAction">
								<span>수정하기하기</span>
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





	<div id="profiler"></div>
<%@include file="../include/footer.jsp" %>
</body>
</html>