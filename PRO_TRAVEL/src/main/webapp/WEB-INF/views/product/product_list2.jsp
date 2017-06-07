<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ include file="/WEB-INF/views/include/header.jsp"%>
<%@ include file="/WEB-INF/views/include/product_sidebar.jsp"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Olympic Photos, Galleries &amp; Slideshows | Top Olympic
	Images</title>
<meta charset="utf-8" />
<meta name="googlepagetype" content="MediaLanding" />
<meta name="googlepageid"
	content="{B4C7581B-72EC-4637-A3ED-52F225BFE686}" />
<meta name="description"
	content="View the best photos from all past Olympic Games, including Rio 2016, Sochi 2014 and London 2012. Galleries of 52 Games and 56 Sports." />
<meta property="og:type" content="article" />
<meta property="og:url" content="https://www.olympic.org/photos" />
<meta property="article:published_time"
	content="2017-02-23T06:09:48+01:00" />
<meta property="article:modified_time"
	content="2017-02-23T06:09:48+01:00" />
<meta property="article:publisher" content="209361989215" />
<meta property="og:site_name" content="International Olympic Committee" />
<meta property="fb:admins" content="209361989215" />
<meta name="twitter:card" content="summary">
<meta name="twitter:site" content="@olympics">
<meta name="twitter:creator" content="@olympics">
<link rel="alternate" href="https://www.olympic.org/en/Home/Photos"
	hreflang="en" />
<link rel="alternate" href="https://www.olympic.org/fr-FR/Home/Photos"
	hreflang="fr" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<link rel="apple-touch-icon" sizes="57x57"
	href="/apple-touch-icon-57x57.png">
<link rel="apple-touch-icon" sizes="60x60"
	href="/apple-touch-icon-60x60.png">
<link rel="apple-touch-icon" sizes="72x72"
	href="/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon" sizes="76x76"
	href="/apple-touch-icon-76x76.png">
<link rel="apple-touch-icon" sizes="114x114"
	href="/apple-touch-icon-114x114.png">
<link rel="apple-touch-icon" sizes="120x120"
	href="/apple-touch-icon-120x120.png">
<link rel="apple-touch-icon" sizes="144x144"
	href="/apple-touch-icon-144x144.png">
<link rel="apple-touch-icon" sizes="152x152"
	href="/apple-touch-icon-152x152.png">
<link rel="apple-touch-icon" sizes="180x180"
	href="/apple-touch-icon-180x180.png">
<link rel="icon" type="image/png" href="/favicon-32x32.png"
	sizes="32x32">
<link rel="icon" type="image/png" href="/favicon-194x194.png"
	sizes="194x194">
<link rel="icon" type="image/png" href="/favicon-96x96.png"
	sizes="96x96">
<link rel="icon" type="image/png" href="/android-chrome-192x192.png"
	sizes="192x192">
<link rel="icon" type="image/png" href="/favicon-16x16.png"
	sizes="16x16">
<link rel="manifest" href="/manifest.json">
<link rel="mask-icon" href="/safari-pinned-tab.svg" color="#333333">
<meta name="msapplication-TileColor" content="#da532c">
<meta name="msapplication-TileImage" content="/mstile-144x144.png">
<meta name="theme-color" content="#ffffff">
<link media="all" rel="stylesheet" type="text/css"
	href="https://stillres.olympic.org/css/modules.css" />
<link media="all" rel="stylesheet" type="text/css"
	href="https://stillres.olympic.org/css/all.css" />


<style>
</style>


<!--[if lt IE 9]><link rel="stylesheet" type="text/css" href="https://stillres.olympic.org/css/ie.css" /><![endif]-->
</head>
<body>



	<div id="highlights-of-the-games"></div>
	<section class="text-post"
		itemscopeitemtype="http://schema.org/NewsArticle">
		<div class="main" style="margin-right: 150px;">
			<div class="main-holder photovideo">



				<section class="sets-section" style="background-color: white";>

					<div class="ajax-area" data-tmpl="load3_tmpl"
						style="background-color: white">
						<ul class="sets-list ajax-content">
						
							<c:forEach var="product" items="${list}">
								<li itemscope="" itemtype="http://schema.org/ImageObject"
									class="same-height"><a
									href="product_detail?p_num=${product.p_num }"
											itemprop="url" 
									style="color: DarkSlateGray";> <picture class="img">

										<c:if test="${product.p_img!=null}">
											<c:set var="head"
												value="${fn:substring(product.p_img, 0, fn:length(product.p_img)-4) }"></c:set>
											<c:set var="pattern"
												value="${fn:substring(product.p_img, fn:length(head)+1, fn:length(product.p_img)) }"></c:set>

											<c:choose>
												<c:when
													test="${pattern=='jpg' || pattern =='gif' || pattern =='png' }">
													<img src="upload/${head }_small.${pattern}" alt="img /">
												</c:when>
												<c:otherwise>
													<c:out value="No IMAGE"></c:out>
												</c:otherwise>
											</c:choose>
										</c:if> <%-- <img srcset="${product.p_img}"> --%> </picture>
								</a>
									<h2 itemprop="name">

										<a href="product_detail?p_num=${product.p_num }"
											itemprop="url" style="color: DarkSlateGray";>${product.p_name }</a>
											
									</h2> <span>판매자: ${product.u_id }</span></li>
							</c:forEach>
						</ul>
						<span class="btn-more"> <a
							href="/ajaxscript/loadmoreoverviewmedia/{B4C7581B-72EC-4637-A3ED-52F225BFE686}/6/0/MiddleOverview">More</a>
						</span>
						<noscript>
							<div class="paging">
								<ul>
									<li><a><span class="icon-arrow-left"><span
												class="hide">&lt;</span></span></a></li>
									<li class="active"><a
										href="https://www.olympic.org/photos">1</a></li>
									<li class=""><a href="https://www.olympic.org/photos/2">2</a></li>
									<li class=""><a href="https://www.olympic.org/photos/3">3</a></li>
									<li class=""><a href="https://www.olympic.org/photos/4">4</a></li>
									<li><a>&hellip;</a></li>
									<li class=""><a href="https://www.olympic.org/photos/6">6</a></li>
									<li class=""><a href="https://www.olympic.org/photos/7">7</a></li>
									<li class=""><a href="https://www.olympic.org/photos/8">8</a></li>
									<li class=""><a href="https://www.olympic.org/photos/9">9</a></li>
									<li><a class="next"
										href="https://www.olympic.org/photos/2" rel="next"><span
											class="icon-arrow-right"><span class="hide">&gt;</span></span></a></li>
								</ul>
							</div>
						</noscript>

					</div>
			</div>
		</div>


		<a href="#wrapper" class="accessibility">back to top</a>

		<div class="popup-holder">
			<div id="popup2" class="lightbox-link simple-size">
				<div class="share-social">
					<h2>Share.Popup.Title</h2>
					<ul class="social-networks">
						<li><a
							href="http://www.facebook.com/sharer/sharer.php?u=https://www.olympic.org/photos"
							onclick="ga('send', 'social', 'Facebook', 'share', 'https://www.olympic.org/photos');"
							class="facebook" target="_blank"></a></li>
						<li><a
							href="http://twitter.com/share?url=https://www.olympic.org/photos&text=Olympic Photos, Galleries &amp; Slideshows | Top Olympic Images&via=olympics"
							onclick="ga('send', 'social', 'Twitter', 'share', 'https://www.olympic.org/photos');"
							class="twitter" target="_blank"></a></li>
						<li><a
							href="http://www.linkedin.com/shareArticle?url=https://www.olympic.org/photos&title=Olympic Photos, Galleries &amp; Slideshows | Top Olympic Images&summary=Olympic Photos, Galleries &amp; Slideshows | Top Olympic Images"
							onclick="ga('send', 'social', 'Linkedin', 'share', 'https://www.olympic.org/photos');"
							class="linkedin" target="_blank"></a></li>
						<li><a
							href="https://pinterest.com/pin/create/button/?url=https://www.olympic.org/photos&media=&description=Olympic Photos, Galleries &amp; Slideshows | Top Olympic Images"
							onclick="ga('send', 'social', 'Pinterest', 'share', 'https://www.olympic.org/photos');"
							class="pinterest" target="_blank"></a></li>
						<li><a
							href="http://vk.com/share.php?url=https://www.olympic.org/photos&title=Olympic Photos, Galleries &amp; Slideshows | Top Olympic Images&description=Olympic Photos, Galleries &amp; Slideshows | Top Olympic Images&image="
							onclick="ga('send', 'social', 'Vkontakte', 'share', 'https://www.olympic.org/photos');"
							class="vkontakte" target="_blank"></a></li>
					</ul>
				</div>
			</div>
		</div>
	</section>




</body>


<%@ include file="/WEB-INF/views/include/footer.jsp"%>



</html>