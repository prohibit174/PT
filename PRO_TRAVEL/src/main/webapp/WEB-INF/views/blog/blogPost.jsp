<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link media="all" rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/login.css" />
<link media="all" rel="stylesheet" type="text/css" href="https://stillres.olympic.org/css/modules.css" />
<style type="text/css">

</style>
  <%@ include file="/WEB-INF/views/include/header.jsp" %>
</head>
<body>
	<section class="results-box" style="margin:0px;">
	<div class="holder" style="height: 650px;">
		<h1>Writing on your blog</h1>
		<div class="tab-gallery">
			<!-- <ul class="tabset">
				<li class="active"><a href="#">By Games</a></li>
				<li><a href="#">By Sports</a></li>
			</ul> -->

			<div class="tab-content">
				<div class="tab-slider">
					<div class="tab-section">


						<form id="results-form" action="/loginAction" class="results-form"
							method="post">
							<div class="row">
								<textarea rows="25" cols="68"></textarea>
							</div>
							
							<td class="value"><input type="file" name="file3" id="p_img"
								value="" /> &nbsp; <span class="mandatory"></span>
								<ul class="errorField"></ul>
							</td>
								
						
							<div class="row">
								<input type="submit" value="Results" /> <input type="reset"
									value="Clear" />
							</div>

						</form>
					</div>
					<div class="tab-section"></div>
				</div>
			</div>
		</div>
	</div>
	</section>



</body>
</html>