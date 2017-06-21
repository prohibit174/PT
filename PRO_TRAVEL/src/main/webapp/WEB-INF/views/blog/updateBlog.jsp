<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link media="all" rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/login.css" />
<link media="all" rel="stylesheet" type="text/css" href="https://stillres.olympic.org/css/modules.css" />

<title>Insert title here</title>
</head>

<%@ include file="/WEB-INF/views/include/header.jsp" %>

<body>
<section class="results-box" style="margin:0px; background-color:#FAF1C2;">
	<div class="holder" style="height: 650px;">
		<h1>Writing on your blog</h1>
		<div class="tab-gallery">
			

			<div class="tab-content">
				<div class="tab-slider">
					<div class="tab-section">


						<form id="results-form" action="/blog/updateBlog" class="results-form"
							method="post" enctype="multipart/form-data">
							
							<td class="value"><input type="text" name="bp_postnum" id="bp_postnum"
								value="${bp_postnum}" /> &nbsp; <span class="mandatory"></span>
								<ul class="errorField"></ul>
							</td>  
							
							<div class="row">
								<textarea rows="20" cols="68" name="bp_contents"
								id="bp_contents" value="${blogPost.bp_postnum }"></textarea>
							</div>
							 
							<td class="value"><input type="file" name="file3" id="bp_img"
								value="${blogPost.bp_img }" /> &nbsp; <span class="mandatory"></span>
								<ul class="errorField"></ul>
							</td> 
						
								
						
							<div class="row">
								<input type="submit" value="Modify" />
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