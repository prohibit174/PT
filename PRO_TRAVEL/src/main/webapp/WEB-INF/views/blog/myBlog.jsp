<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<%
	String id = (String) session.getAttribute("login");
	request.setAttribute("id", id);
%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>${blog.b_title}</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="googlepagetype" content="MuseumContent" />
<meta name="googlepageid"
	content="{26BF6E7B-A2D4-4970-B625-7AB021A0FF55}" />
<meta name="keywords"
	content="The Olympic Museum, Visit, Hours and Admission" />
<meta name="description"
	content="From 1 May to 19 Oct the Museum is open daily from 9am to 6pm. From 20 Oct to 30 Apr (Tuesday to Sunday) we are open from 10 am to 6pm." />
<meta property="og:type" content="article" />
<meta property="og:url"
	content="https://www.olympic.org/museum/visit/practical-information/hours-and-admission" />
<meta property="article:published_time"
	content="2017-05-24T12:12:16+02:00" />
<meta property="article:modified_time"
	content="2017-05-24T12:12:16+02:00" />
<meta property="article:publisher" content="209361989215" />
<meta property="og:site_name" content="International Olympic Committee" />
<meta property="fb:admins" content="209361989215" />
<meta name="twitter:card" content="summary">
<meta name="twitter:site" content="@olympics">
<meta name="twitter:creator" content="@olympics">
<link rel="alternate"
	href="https://www.olympic.org/museum/visit/practical-information/hours-and-admission"
	hreflang="en" />
<link rel="alternate"
	href="https://www.olympic.org/fr/musee/visiter/infos-pratiques/horaires-et-tarifs"
	hreflang="fr" />


<!-- <link media="screen" rel="stylesheet"
	href="https://stillres.olympic.org/Museum/css/jquery-ui.css"> -->
<!-- <link media="screen" rel="stylesheet"
	href="https://stillres.olympic.org/Museum/css/all.css"> -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/blog/all.css">
<!-- <link media="print" rel="stylesheet"
	href="https://stillres.olympic.org/Museum/css/print.css">
<link media="screen" rel="stylesheet"
	href="https://stillres.olympic.org/Museum/css/fancybox.css"> -->


<!--[if lt IE 9]><link rel="stylesheet" type="text/css" href="https://stillres.olympic.org/Museum/css/ie.css" /><![endif]-->

<!--[if IE]><script type="text/javascript" src="https://stillres.olympic.org/Museum/js/ie.js"></script><![endif]-->

<style type="text/css">
.btn-more1 button, .btn-more1 a {
	display: inline-block;
	vertical-align: top;
	/*  color: #959595; */
	border: 2px solid #959595;
	padding: 7px 20px;
	min-width: 110px;
	text-decoration: none !important;
	font-weight: bold;
	line-height: 2em;
	background: white;
}

button, a {
	color: #959595
}
</style>

<script type="text/javascript">
	function updatePost(bp_postnum) {
		document.location.href = "updatePost?bp_postnum=" + bp_postnum;
	}

	function removePost(bp_postnum) {
		/* confirm(문자열, 초기값) */
		var check = confirm("Are you remove this post?");
		/* if(check == true) else false */
		if (check)
			document.location.href = "removePost?bp_postnum=" + bp_postnum;
	}
</script>
</head>

<body>
	<script>
		var dataLayer = [ {} ];
	</script>

	<!-- Google Tag Manager -->
	<noscript>
		<iframe src="//www.googletagmanager.com/ns.html?id=GTM-NTJZ3D"
			height="0" width="0" style="display: none; visibility: hidden"></iframe>
	</noscript>
	<script>
		/* (
		      function(w, d, s, l, i) {
		         w[l] = w[l] || [];
		         w[l].push({
		            'gtm.start' : new Date().getTime(),
		            event : 'gtm.js'
		         });
		         var f = d.getElementsByTagName(s)[0], j = d
		               .createElement(s), dl = l != 'dataLayer' ? '&l='
		               + l : '';
		         j.async = true;
		         j.src = '//www.googletagmanager.com/gtm.js?id=' + i + dl;
		         f.parentNode.insertBefore(j, f);
		      })(window, document, 'script', 'dataLayer', 'GTM-NTJZ3D'); */
	</script>
	<!-- End Google Tag Manager -->

	<div id="wrapper">

		<header id="header" role="banner" style="background-color: white;">
		
			<img src="/resources/images/blog/myblog.png"
				style="height: 100%, width:100%;">
				

			
		</header>
	</div>

	<main id="main"> 





	<div class="twocolumns">
		<div id="content">
			<div class="section">

				<div class="carousel">
					<div class="mask">
						<div class="slideset">
							<div class="slide active">
								
								<a
									href="/ajaxscript/showmuseumphotolightboxcaroussel/{26BF6E7B-A2D4-4970-B625-7AB021A0FF55}/0/"
									class="btn-zoom lightbox-link fancy-link">zoom</a>
							</div>
						</div>
					</div>
					<a href="#" class="btn-prev">prev</a> <a href="#" class="btn-next">next</a>
				</div>
				<div class="socials-box">
					
				</div>
				<div class="text-block" style="margin-top:20px;">



					<%-- <c:choose>
						<c:when test="${id == blog.u_id}">

							 <h1 style="margin-top:10px;">Try Your First Blog Posting</h1>

								<h2 style="font-size: 20px">

									<a href="/blog/blogPost?u_id=${blog.u_id}">post</a>

							</h2>

						</c:when>
					</c:choose> --%>

					<br>



					<div>
						<c:forEach var="blogpost" items="${blogpost}">
							<fieldset>


								<span style="font-family: Arial; font-size: 13px;">
									<table border="0" width="100%">
										<tr>
											<p
												style="color: #ee334e; font-size: 18px; line-height: 34px;">${blogpost.bp_date }</p>
										</tr>



										<!-- makeQuery -->
										<picture class="img"> <c:if
											test="${blogpost.bp_img!=null}">
											<c:set var="head"
												value="${fn:substring(blogpost.bp_img, 0, fn:length(blogpost.bp_img)-4) }"></c:set>
											<c:set var="pattern"
												value="${fn:substring(blogpost.bp_img, fn:length(head)+1, fn:length(blogpost.bp_img)) }"></c:set>
											<c:set var="small" value="_small"></c:set>



											<c:choose>
												<c:when
													test="${pattern=='jpg' || pattern =='gif' || pattern =='png' }">
													<!-- <img srcset="resources/upload/${head }_small.${pattern}" alt="img /"> -->
													<img src="/resources/upload/${head}${small}.${pattern}"
														alt="img /">
												</c:when>
												<c:otherwise>
													<c:out value="No IMAGE"></c:out>
												</c:otherwise>
											</c:choose>


										</c:if> <%-- <img srcset="${blogpost.bp_img}"></picture> --%>

										<p>${blogpost.bp_contents }</p>
										<br>


										<c:choose>
											<c:when test="${id == blog.u_id}">

												<span class="btn-more1">
													<button type="submit" class="btn btn-warning"
														id="modifyBtn"
														onclick="updatePost('${blogpost.bp_postnum}')">Modify</button>
													<button type="submit" class="btn btn-danger" id="removeBtn"
														onclick="removePost('${blogpost.bp_postnum}')">Remove</button>
												</span>
											</c:when>
										</c:choose>

										<hr>

										</picture>
									</table>
								</span>
							</fieldset>
						</c:forEach>
					</div>


					<table border="0" width="100%">
						<tbody>

							<table border="0" width="100%">
								<tbody>
									<tr valign="top">

									</tr>
								</tbody>
							</table>
							<br />
							<strong style="font-family: Arial; font-size: small;"> </strong>
							<div></div>
							<div>
								<span style="font-family: Arial; font-size: 13px;">
									<table border="0" width="100%">
										<tbody>

										</tbody>
									</table> <strong><br />
								</span>
							</div>
						</tbody>
					</table>
					</span>



				</div>

			</div>
			<div class="three-blocks visible-sm">
				<article class="block"></article>
				<div class="block">

					<div itemtype="http://schema.org/PostalAddress" itemscope=""
						itemprop="address" class="contact-box"></div>
				</div>
			</div>


			<div class="comming-up-block">
				<!--    <h2>Also coming up</h2> -->
				<ul class="items-gallery">




					<li class="small-itmem flip-box"></li>


				</ul>
			</div>

		</div>
		<aside id="sidebar" style="margin-top: 60px;">

			<nav class="aside-nav">
				<ul>

					<li class="">Profile</li>

					<li class=""><img src="/resources/upload/${blog.b_img}">
					</li>

					<li class="">${blog.u_name}<br>
					<br>${blog.b_introduction}</li>
					<br>
					<br>

					<c:choose>
						<c:when test="${id == blog.u_id}">
							<a href="/blog/blogPost?u_id=${blog.u_id}" style="color: #ff3eee;">Writing</a>
						</c:when>
					</c:choose>
				</ul>
			</nav>

			<div class="three-blocks">

				<div class="block">

					<ul class="socials">
					</ul>

				</div>
			</div>
		</aside>
	</div>
	</main>




	<!-- <a href="/fr/musee/visiter/infos-pratiques/horaires-et-tarifs"
         class="lang-switcher lang-link link">Fran&#231;ais</a> -->


	<!-- <footer id="footer">
		<div class="footer-section">
			<div class="holder">
				<ul class="links-boxes">
					<li><strong class="title"> TOM CLIP </strong>
						<div class="slide">
							<ul>
								<li><a
									href="/museum/explore/press/video-library/the-flame-is-yours">The
										flame is yours</a></li>
							</ul>
						</div></li>
					<li><strong class="title"> TOM SCHOOLS </strong>
						<div class="slide">
							<ul>
								<li><a href="/museum/visit/school-visits">Offers</a></li>
								<li><a href="/museum/visit/schools/teaching-resources">Teaching
										Resources</a></li>
							</ul>
						</div></li>
					<li><strong class="title"> FAQ </strong>
						<div class="slide">
							<ul>
								<li><a href="http://registration.olympic.org/en/faq"
									target="_blank">Questions&Answers</a></li>

							</ul>
						</div></li>
					<li><strong class="title"> TOM WEBDOC </strong>
						<div class="slide">
							<ul>
								<li><a
									href="https://www.olympic.org/museum/interactive-documentary/stadium/"
									target="_blank">Serious Game</a></li>
								<li><a
									href="https://www.olympic.org/museum/interactive-documentary/broadcasting/"
									target="_blank">LIVE! Broadcasting</a></li>
								<li><a
									href="http://www.olympic.org/museum/interactive-documentary/time-and-sport/"
									target="_blank">Time and Sport</a></li>
								<li><a href="http://olympicjourney.olympic.org/?l=en"
									target="_blank">The Olympic Journey</a></li>
							</ul>
						</div></li>
					<li><strong class="title"> CONNECT </strong>
						<div class="slide">
							<ul>
								<li><a href="https://blog-tom.com/" target="_blank">TOM
										BLOG</a></li>
								<li><a href="https://www.facebook.com/theolympicmuseum"
									target="_blank">Facebook</a></li>
								<li><a href="https://www.instagram.com/olympicmuseum/"
									target="_blank">Instagram</a></li>
								<li><a href="https://twitter.com/olympicmuseum"
									target="_blank">Twitter</a></li>
								<li><a href="/museum/visit/practical-information/contacts">TOM
										contacts</a></li>
							</ul>
						</div></li>
					<li>
				</ul>
			</div>
		</div>
		<div class="holder">
			<div class="add-text">
				<div class="logo2">

					<a href="/museum"> <picture> <img
							srcset="https://stillmed.olympic.org/media/Images/Museum/logo-2x.png?interpolation=lanczos-none&resize=100:36, https://stillmed.olympic.org/media/Images/Museum/logo-2x.png?interpolation=lanczos-none&resize=200:72 2x"
							alt=""></picture>
					</a>
				</div>
				<div class="meta-block">
					<p>&copy; Copyright 2017. All rights reserved</p>
				</div>
			</div>
	</footer> -->




	</div>

	<div class="skip">
		<a href="#wrapper">Back to top</a>
	</div>

	<script type="text/javascript">
		var switchTo5x = true;
	</script>
	<script type="text/javascript"
		src="//ws.sharethis.com/button/buttons.js"></script>
	<script type="text/javascript">
		stLight.options({
			publisher : "c1bcc98d-82f8-42b9-9d15-66cbad590de8"
		});
	</script>
	<script src="//maps.googleapis.com/maps/api/js?v=3.exp"></script>

	<script type="text/javascript"
		src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script type="text/javascript">
		window.jQuery
				|| document
						.write('<script src="https://stillres.olympic.org/Museum/js/jquery-1.11.2.min.js"><\/script>')
	</script>
	<script type="text/javascript"
		src="https://stillres.olympic.org/Museum/js/jquery.main.js"></script>
	<script type="text/javascript"
		src="https://stillres.olympic.org/js/jquery.betd.js"></script>
	<script type="text/javascript"
		src="https://stillres.olympic.org/Museum/js/jquery.collagePlus.js"></script>
	<script type="text/javascript"
		src="https://stillres.olympic.org/Museum/js/jquery.removeWhitespace.js"></script>
	<script type="text/javascript"
		src="https://stillres.olympic.org/Museum/js/jquery.collageCaption.js"></script>
	<script type="text/javascript"
		src="https://stillres.olympic.org/Museum/js/jquery.collage.js"></script>
	<noscript>
		<div>Javascript must be enabled for the correct page display</div>
	</noscript>

	<div class="popup-holder">
		<div class="inner-wrap">
			<div class="popup">
				<div class="popup-carousel">
					<div class="mask">
						<div class="slideset"></div>
					</div>
					<a href="#" class="btn-prev"><i class="icon-arrow-left"></i><span
						class="hidden">prev</span></a> <a href="#" class="btn-next"><i
						class="icon-arrow-right"></i><span class="hidden">next</span></a>
				</div>
				<a href="#" class="close"> <span class="icon">X</span> <span
					class="hidden">open/close</span>
				</a>
			</div>
		</div>
	</div>
	<script type="text/html" id="popup_slide">
            
        </script>

	 <%@include file="../include/footer.jsp"%> 
</body>
</html>