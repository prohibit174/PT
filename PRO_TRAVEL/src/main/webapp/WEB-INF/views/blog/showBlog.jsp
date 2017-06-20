<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<link media="screen" rel="stylesheet"
	href="https://stillres.olympic.org/Museum/css/jquery-ui.css">
<link media="screen" rel="stylesheet"
	href="https://stillres.olympic.org/Museum/css/all.css">
<link media="print" rel="stylesheet"
	href="https://stillres.olympic.org/Museum/css/print.css">
<link media="screen" rel="stylesheet"
	href="https://stillres.olympic.org/Museum/css/fancybox.css">
</head>
<body>
	<div id="wrapper">

		<header id="header" role="banner">

			<div class="container">
				<div class="logo">
					<a tabindex="2" href="/museum"> <picture> <img
							srcset="" alt=""></picture>
					</a> <span class="hidden">Blog</span>
				</div>
				<div class="nav-holder"
					style="text-align: center; margin: 0px; padding: 0px;">
					<h1>${blog.b_title}</h1>

					<div class="nav-slider">
						<div class="header-container">


							<div class="nav-container">
								<nav id="nav"></nav>

							</div>

						</div>
					</div>
					<div class="back-frame lang-switcher-container">
						<!-- <a href="/" class="back-link"><span class="icon-arrow-left"></span></a> -->
						<!-- 	<span class="separator">|</span> -->
					</div>
				</div>

			</div>
			</header>
	</div>

	<main id="main">

	<nav class="breadcrumbs" role="navigation">
		<ul>

			<li><a href="/museum"> Home </a></li>

			<li><a href="/museum/visit"> Visit </a></li>

			<li><a href="/museum/visit/practical-information"> Practical
					Information </a></li>
		</ul>
	</nav>





	<div class="twocolumns">
		<div id="content">
			<div class="section">

				<div class="carousel">
					<div class="mask">
						<div class="slideset">
							<div class="slide active">
								<!-- <a href="#"> <picture> <img
										srcset="https://stillmed.olympic.org/media/Images/Museum/Visit/Practical_Information/Rates_And_Opening_Times/Header_Slideshow/Rates_And_Opening_Times_slideshow_01.jpg?interpolation=lanczos-none&resize=862:473, https://stillmed.olympic.org/media/Images/Museum/Visit/Practical_Information/Rates_And_Opening_Times/Header_Slideshow/Rates_And_Opening_Times_slideshow_01.jpg?interpolation=lanczos-none&resize=1724:946 2x"
										alt="Rates and opening times"> <span class="mask"></span>
									</picture>

								</a> -->
								<a
									href="/ajaxscript/showmuseumphotolightboxcaroussel/{26BF6E7B-A2D4-4970-B625-7AB021A0FF55}/0/"
									class="btn-zoom lightbox-link fancy-link">zoom</a>
							</div>
						</div>
					</div>
					<a href="#" class="btn-prev">prev</a> <a href="#" class="btn-next">next</a>
				</div>
				<div class="socials-box">
					<!-- <ul>
						<li><span class='st_facebook_large'></span></li>
						<li><span class='st_googleplus_large'></span></li>
						<li><span class='st_twitter_large'></span></li>
					</ul> -->
				</div>

				<div class="text-block">
					<h1>Try Your First Blog Posting</h1>
					<span style="font-family: Arial; font-size: 13px;"> 
						<table border="0" width="100%">
							<!-- <tbody>
								<tr valign="top">
									<td><span style="font-family: Arial; font-size: 13px;">Full
											price Adults <em>(aged 17+)</em> <br /> Full price Children
											aged 6-16 <em>(under 6 free)</em> <br /> Reduced price
											Senior citizens <br /> Reduced price Students, disabled
											persons <br /> Reduced price Families <em>(max. 2
												adults and their children aged 6-16)</em>
									</span></td>
									<td><span style="font-family: Arial; font-size: 13px;">CHF
											18 <br /> CHF 10 <br /> CHF 16 <br /> CHF 12 <br /> CHF
											40
									</span></td>
								</tr>
							</tbody> -->
						</table> <!-- <strong><br /> Temporary exhibition</strong><br /> -->
						<table border="0" width="100%">
							<tbody>
								<tr>
								<td>
									<input type="text">
								
								</td>
								</tr>
							</tbody>
						</table> <br /> 
						<div>
						<table border="0" width="100%">
							<tbody>
								<tr valign="top">
									
								</tr>
							</tbody>
						</table> <br /> <strong style="font-family: Arial; font-size: small;">
							
					</strong>
						<div>
							
						</div>
						<div>
							<span style="font-family: Arial; font-size: 13px;"> 
								<table border="0" width="100%">
									<tbody>
									
									</tbody>
								</table> <br /> </span>
						</div>
				</div>

			</div>
			<div class="three-blocks visible-sm">
				<article class="block">
					
				</article>
				<div class="block">

					<div itemtype="http://schema.org/PostalAddress" itemscope=""
						itemprop="address" class="contact-box">
						
					</div>
				</div>
			</div>


			<div class="comming-up-block">
				<!-- 	<h2>Also coming up</h2> -->
				<ul class="items-gallery">

				
					<li class="small-itmem flip-box">
						
					</li>

					
				</ul>
			</div>

		</div>
		<aside id="sidebar">

			<nav class="aside-nav">
				<ul>

					<li class="">Profile</li>

					<li class=""><img src="/resources/upload/${blog.b_img}">
					</li>

					<li class="">${blog.u_name}<br>${blog.b_introduction}</li>



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




	

</body>
</html>