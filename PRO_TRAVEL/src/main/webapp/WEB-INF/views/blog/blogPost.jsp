<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
    
<%
	String id = (String) session.getAttribute("login");
	request.setAttribute("id", id);
%>
    
  
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
 
 
  <script type="text/javascript">
  
	function btn_js_register_click(){
	  /* confirm(문자열, 초기값) */
	  var check = confirm("등록하시겠습니까?");
	  /* if(check == true) else false */
	  if(check) document.location.href="";
	}
	
  </script> 
	<section class="results-box" style="margin:0px; background-color:#FAF1C2;">
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


						<form id="results-form" action="/blog/blogPost" class="results-form"
							method="post" enctype="multipart/form-data">
							
							<td class="value"><input type="hidden" name="u_id" id="u_id"
								value="${id}" /> &nbsp; <span class="mandatory"></span>
								<ul class="errorField"></ul>
							</td>  
							
							<div class="row">
								<textarea rows="20" cols="68" name="bp_contents"
								id="bp_contents"></textarea>
							</div>
							 
							<td class="value"><input type="file" name="file3" id="bp_img"
								value="" /> &nbsp; <span class="mandatory"></span>
								<ul class="errorField"></ul>
							</td> 
						
								
						
							<div class="row">
								<input type="submit" class="btn btn-register" onclick="btn_js_register_click()" 
								value="Post" />
							</div>
							
								
							<!-- <td class="value"><input type="hidden" name="bp_date" id="bp_date"
								value="" /> &nbsp; <span class="mandatory"></span>
								<ul class="errorField"></ul>
							</td> 
							
							<td class="value"><input type="hidden" name="u_id" id="u_id"
								value="" /> &nbsp; <span class="mandatory"></span>
								<ul class="errorField"></ul>
							</td>  -->

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