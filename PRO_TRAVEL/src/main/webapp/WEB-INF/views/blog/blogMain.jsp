<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/AgoFiles/users_css/all.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/AgoFiles/users_css/common.css">
<title>Insert title here</title>

</head>
<%@include file="/WEB-INF/views/include/header.jsp"%>
<%@include file="/WEB-INF/views/include/blog_sidebar.jsp"%>
<body>
	<div>
		<section class="id-card-box" itemtype="http://schema.org/Organization"
			itemscope="" style="margin: 0px 200px 100px 0px"; >

		<div class="heading">
			<h2>BLOG</h2>
			<ul class="add-links">

			</ul>
		</div>

		<div class="ajax-area" data-tmpl="load3_tmpl">

			<ul class="sets-list ajax-content">


				<c:forEach items="${blogVO}" var="blogVO" varStatus="status">
					<c:choose>
						<c:when test="${status.count%3==1}">
							<li itemscope="" itemtype="http://schema.org/ImageObject"
								class="same-height same-height-left " style="height: 367px;">
								<a href="/blog/myBlog?u_id=${blogVO.u_id }" target="_blank">
									<picture class="img"> <img
										src="/resources/upload/${blogVO.b_img }" alt=""></picture>
							</a>
								<h1>
									<a href="/blog/myBlog?u_id=${blogVO.u_id }" target="_blank">${blogVO.b_title }</a>
								</h1> <!-- <span class="sss-picture"></span> --> <span>${blogVO.u_name }</span>
							</li>
						</c:when>

						<c:when test="${status.count%3==2 }">
							<li class="same-height" style="height: 367px;"><a
								href="/blog/myBlog?u_id=${blogVO.u_id }" target="_blank"> <picture
										class="img"> <img
										src="/resources/upload/${blogVO.b_img }" alt=""></picture>
							</a>
								<h1>
									<a href="/blog/myBlog?u_id=${blogVO.u_id }" target="_blank">${blogVO.b_title }</a>
								</h1> <!-- <span class="sss-picture"></span> --> <span>${blogVO.u_name }</span>
							</li>
						</c:when>

						<c:otherwise>
							<li itemscope="" itemtype="http://schema.org/ImageObject"
								class="same-height same-height-right" style="height: 367px;">
								<a href="/blog/myBlog?u_id=${blogVO.u_id }" target="_blank">
									<picture class="img"> <img
										src="/resources/upload/${blogVO.b_img }" alt=""></picture>
							</a>
								<h1>
									<a href="/blog/myBlog?u_id=${blogVO.u_id }" target="_blank">${blogVO.b_title }</a>
								</h1> <!-- <span class="sss-picture"></span> --> <span>${blogVO.u_name }</span>
							</li>
						</c:otherwise>
					</c:choose>
				</c:forEach>
			</ul>

		</div>
		</section>
	</div>

	<%@include file="../include/footer.jsp"%>
</body>
</html>