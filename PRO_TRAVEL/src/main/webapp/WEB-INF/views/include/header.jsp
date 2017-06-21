<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%	request.setCharacterEncoding("utf-8"); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style type="text/css">
.mail{
	font-size:8px;
	color: #b3b3b3;
	cursor: pointer;
	display:block;
	position:relative;
	border-top:1em solid transparent;
	border-left:1.5em solid #b3b3b3;
	border-right:1.5em solid #b3b3b3;
	border-bottom:1em solid #b3b3b3;
height:0;
width:0;
}
.mail:before{
    content: '';
    top: -1.23em;
    left: -1.5em;

    position: absolute;
    border-top: 1em solid #b3b3b3;
    border-left: 1.5em solid transparent;
    border-right: 1.5em solid transparent;
    border-bottom: 1em solid transparent;
    font-size: 0.8em;
}
.mail:HOVER {
	border-top:1em solid transparent;
	border-left:1.5em solid black;
	border-right:1.5em solid black;
	border-bottom:1em solid black;

}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>
<style type="text/css">
.aside-tag {
	  font-size: 12px;
	  line-height: 34px;
	  text-overflow: ellipsis;
	  white-space: nowrap;
	  overflow: hidden;
	  cursor: pointer;
	  display: block;
	  font-size: 14px;
	  line-height: 49px;
	  font-weight: bold;
	  color: black;
	  margin: 0 35px 0 13px;
	  /* color: #acacac; */
	  text-transform: uppercase; }
</style>
<head>
<title>프로 동행러</title>
<meta charset="UTF-8" />
<meta name="googlepagetype" content="Games" />
<meta name="googlepageid"
	content="{535B8008-29D0-44BB-8B14-E2B29CC79DD5}" />
<meta name="description"
	content="Relive the moments that went down in history from the Sochi 2014 Winter Olympics. Access official videos, results, sport and athlete records." />
<meta property="og:type" content="article" />
<meta property="og:url" content="https://www.olympic.org/sochi-2014" />
<meta property="article:published_time"
	content="2017-02-23T08:45:10+01:00" />
<meta property="article:modified_time"
	content="2017-02-23T08:45:10+01:00" />
<meta property="article:tag" content="Sochi 2014 " />
<meta property="article:publisher" content="209361989215" />
<meta property="og:site_name" content="International Olympic Committee" />
<meta property="fb:admins" content="209361989215" />
<meta name="twitter:card" content="summary">
<meta name="twitter:site" content="@olympics">
<meta name="twitter:creator" content="@olympics">
<link rel="canonical" href="https://www.olympic.org/sochi-2014" />
<link rel="alternate" href="https://www.olympic.org/sochi-2014"
	hreflang="en" />
<link rel="alternate" href="https://www.olympic.org/fr/sotchi-2014"
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


<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/all.css">

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/button.css">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script> 


<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/login.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/login_success.js"></script>
<script src="magnific-popup/jquery.magnific-popup.js"></script>
<script type="text/javascript">window.jQuery || document.write('<script src="https://stillres.olympic.org/js/jquery-1.11.1.min.js"><\/script>')</script>
<script type="text/javascript"
	src="https://stillres.olympic.org/js/jquery.main.js"></script>
<script type="text/javascript"
	src="https://stillres.olympic.org/js/jquery.cookie.js"></script>
<script type="text/javascript"
	src="https://stillres.olympic.org/js/jquery.collageCaption.js"></script>
<script type="text/javascript"
	src="https://stillres.olympic.org/js/jquery.collagePlus.js"></script>
<script type="text/javascript"
	src="https://stillres.olympic.org/js/jquery.removeWhitespace.js"></script>
<script type="text/javascript"
	src="https://stillres.olympic.org/js/jquery.betd.js"></script>
<script type="text/javascript"
	src="https://stillres.olympic.org/js/ss-social.js"></script>
<script type="text/javascript"
	src="https://stillres.olympic.org/js/ss-standard.js"></script>
	
<!--[if IE]><script type="text/javascript" src="https://stillres.olympic.org/js/ie.js"></script><![endif]-->
<noscript>
	<div>Javascript must be enabled for the correct page display</div>
</noscript>
<script type="text/javascript"
	src="https://stillres.olympic.org/js/jquery.collage.js"></script>

<script type="text/javascript"
	src="https://stillres.olympic.org/js/jwplayer/jwplayer-7/jwplayer.js"></script>
<script type="text/javascript">jwplayer.key = "MaZUqB43kTBbW6R5UUmFENH5mwcsGCdpWI3uHI7ZDvY=";</script>
<script type="text/javascript">
            $(document).on("loadJwPlayer", function (event) {
                var targetDiv = $("#videoPlayer");
                if (targetDiv.size() > 0) {
                    var v_file = targetDiv.attr("data-file");
                    var v_image = targetDiv.attr("data-thumbnail");
                    if (v_file != undefined && v_image != undefined) {
                        jwplayer("videoPlayer").setup({
                            file: v_file,
                            image: v_image,
                            primary: "html5",
                            hlshtml: true,
                            fallback: false
                        })
                    }
                }
            });
        </script>



</head>
<body>
<div id="header">
	<header id="header">
	<div class="holder">
		<div class="section">
			<a href="#" class="nav-opener icon-menu"><span class="hide">Menu</span></a>
			<div class="logo">

				<a href="/">
					<img src="${pageContext.request.contextPath}/resources/images/protravel_banner.PNG" width="200px" height="70px"/> 
				</a>
			</div>
		</div>
		<nav class="nav-box">
		<div class="nav-holder">
		
			<div class="nav-frame">
			
				<ul id="nav">
					<li><a href="/">HOME</a></li>
					<li>&nbsp&nbsp&nbsp<a href="/accompany/" >Accompany</a>
						<div class="drop">
							<div class="drop-holder">
								<div class="drop-col">
									<strong class="title">MAIN FUNCTION</strong>
									<div class="links-row">
										<ul>
											<li><a href="/accompany/enroll">SCHEDULE REGISTER</a></li>
											<li><a href="/accompany/registerGroup">ACCOMPANY REGISTER</a></li>
											<li><a href="/accompany/searchGroup">SEARCH ACCOMPANY</a></li>
										</ul>
										<ul>
											<li><a href="/carpool/register">CARPOOL REGISTER</a></li>
											<li><a href="/carpool/listAll">CARPOOL LIST</a></li>
											<li><a href="/mypage/carpoolCheck">MY CARPOOL</a></li>
										</ul>
										<ul>
											<li><a href="/productl/product_register">PRODUCT REGISTER</a></li>
											<li><a href="/product/product_list">PRODUCT LIST</a></li>
											<li><a href="/product/recommand_list">PRODUCT RECOMMAND</a></li>
										</ul>
									</div>
								</div>
								<div class="drop-col">
									<strong class="title">SUMMATIVE FUNCTION</strong>
									<div class="links-row">
										<ul>
											<li><a href="/blog/makeBlog">BLOG MAKE</a></li>
											<li><a href="/declaration">Declaration RECIPT</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div></li>
					<li>&nbsp&nbsp&nbsp<a href="/carpool/">carpool</a>
						<div class="drop">
							<div class="drop-holder">
								<div class="drop-col">
									<strong class="title">MAIN FUNCTION</strong>
									<div class="links-row">
										<ul>
											<li><a href="/accompany/enroll">SCHEDULE REGISTER</a></li>
											<li><a href="/accompany/registerGroup">ACCOMPANY REGISTER</a></li>
											<li><a href="/accompany/searchGroup">SEARCH ACCOMPANY</a></li>
										</ul>
										<ul>
											<li><a href="/carpool/register">CARPOOL REGISTER</a></li>
											<li><a href="/carpool/listAll">CARPOOL LIST</a></li>
											<li><a href="/mypage/carpoolCheck">MY CARPOOL</a></li>
										</ul>
										<ul>
											<li><a href="/productl/product_register">PRODUCT REGISTER</a></li>
											<li><a href="/product/product_list">PRODUCT LIST</a></li>
											<li><a href="/product/recommand_list">PRODUCT RECOMMAND</a></li>
										</ul>
									</div>
								</div>
								<div class="drop-col">
									<strong class="title">SUMMATIVE FUNCTION</strong>
									<div class="links-row">
										<ul>
											<li><a href="/blog/makeBlog">BLOG MAKE</a></li>
											<li><a href="/declaration">Declaration RECIPT</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div></li>
					<li>&nbsp&nbsp&nbsp<a href="/product/product_list">Exchange of
							goods</a>
						<div class="drop">
							<div class="drop-holder">
								<div class="drop-col">
									<strong class="title">MAIN FUNCTION</strong>
									<div class="links-row">
										<ul>
											<li><a href="/accompany/enroll">SCHEDULE REGISTER</a></li>
											<li><a href="/accompany/registerGroup">ACCOMPANY REGISTER</a></li>
											<li><a href="/accompany/searchGroup">SEARCH ACCOMPANY</a></li>
										</ul>
										<ul>
											<li><a href="/carpool/register">CARPOOL REGISTER</a></li>
											<li><a href="/carpool/listAll">CARPOOL LIST</a></li>
											<li><a href="/mypage/carpoolCheck">MY CARPOOL</a></li>
										</ul>
										<ul>
											<li><a href="/productl/product_register">PRODUCT REGISTER</a></li>
											<li><a href="/product/product_list">PRODUCT LIST</a></li>
											<li><a href="/product/recommand_list">PRODUCT RECOMMAND</a></li>
										</ul>
									</div>
								</div>
								<div class="drop-col">
									<strong class="title">SUMMATIVE FUNCTION</strong>
									<div class="links-row">
										<ul>
											<li><a href="/blog/makeBlog">BLOG MAKE</a></li>
											<li><a href="/declaration">Declaration RECIPT</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div></li>
					<li>&nbsp&nbsp&nbsp<a href="/blog/blogMain">BLOG</a>
						<div class="drop">
							<div class="drop-holder">
								<div class="drop-col">
									<strong class="title">MAIN FUNCTION</strong>
									<div class="links-row">
										<ul>
											<li><a href="/accompany/enroll">SCHEDULE REGISTER</a></li>
											<li><a href="/accompany/registerGroup">ACCOMPANY REGISTER</a></li>
											<li><a href="/accompany/searchGroup">SEARCH ACCOMPANY</a></li>
										</ul>
										<ul>
											<li><a href="/carpool/register">CARPOOL REGISTER</a></li>
											<li><a href="/carpool/listAll">CARPOOL LIST</a></li>
											<li><a href="/mypage/carpoolCheck">MY CARPOOL</a></li>
										</ul>
										<ul>
											<li><a href="/productl/product_register">PRODUCT REGISTER</a></li>
											<li><a href="/product/product_list">PRODUCT LIST</a></li>
											<li><a href="/product/recommand_list">PRODUCT RECOMMAND</a></li>
										</ul>
									</div>
								</div>
								<div class="drop-col">
									<strong class="title">SUMMATIVE FUNCTION</strong>
									<div class="links-row">
										<ul>
											<li><a href="/blog/makeBlog">BLOG MAKE</a></li>
											<li><a href="/declaration">Declaration RECIPT</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div></li>

					<li><a href="${pageContext.request.contextPath}/declaration">Declaration</a></li>
				</ul>

				<div class="add-top-section">
					<div class="hold lang-switcher-container">
						
						<ul class="social-links">

								<%-- <c:if test="${admin!=null}">
								<c:set var="admin" value="${admin }"></c:set>
							<li class="welcome" style="display:none;"><span class="session" style="font-weight: bold;" ><%=session.getAttribute("admin") %></span>님 환영합니다.</li> 
									

								</c:if> --%>
								
								<c:choose>
									<c:when test="${login!=null }">
									<c:set var="login" value="${login }"></c:set>
									<li class="welcome" style="display:none;"><span class="session" style="font-weight: bold;" ><%=session.getAttribute("login") %></span>님 환영합니다.</li>
									</c:when>
									
									<c:otherwise>
									<c:set var="admin" value="${admin }"></c:set>
									<li class="welcome" style="display:none;"><span class="session" style="font-weight: bold;" ><%=session.getAttribute("admin") %></span>님 환영합니다.</li> 
									
									</c:otherwise>
								
								
								</c:choose>

								<%-- <li class="welcome" style="display:none;"><span class="session" style="font-weight: bold;" ><%=session.getAttribute("login") %></span>님 환영합니다.</li> --%>
							<%-- <li class="welcome" style="display:none;"><span class="session" style="font-weight: bold;" ><%=session.getAttribute("admin") %></span>님 환영합니다.</li> --%>
							<li class="button_base b01_simple_rollover"><a style="cursor:pointer" id="login-button">LOGIN</a></li>
							<li class="button_base b01_simple_rollover"><a href="/join/joinform">SIGN UP</a></li>
							<li><a class="mail" href="/message/main?u_id_recipient=<%=session.getAttribute("login") %>"></a></li>
							<li><a style="background-color: red; border-radius: 20px; padding: 2px 5px 3px 5px; position: relative; left: -30px; top: -10px">
							<c:choose>
								<c:when test="${noReadMessage==null }">
									0
								</c:when>
							<c:otherwise>
                      			<%=session.getAttribute("noReadMessage") %>
                   				</c:otherwise>
							</c:choose>
							</a></li>
							<li class="button_base b01_simple_rollover" id="mypage" style="display: none; "><a href="/mypage/usercheckInfo">MY PAGE</a></li>
							<li><a href="https://twitter.com/olympics" class="ss-icon">twitter</a></li>
							<li><a href="https://www.youtube.com/user/olympic"
								class="ss-icon">youtube</a></li>
							<li><a href="#popup2" class="lightbox-link alt"> <span
									class="sss-icon"> redirect </span> Share
							</a></li>
							<li><a href="https://www.facebook.com/olympics"
								class="ss-icon">facebook</a></li>
							<li><a href="https://plus.google.com/+Olympics"
								class="ss-icon">googleplus</a></li>
							
						</ul>
					</div>
				</div>
			</div>
		</div>
		<a href="#" class="opener icon-search"><span class="hide">search</span></a>
		<div class="slide">
			<div class="slide-holder"></div>
		</div>
		</nav>
	</div>
	</header>
	</div>
	<hr class="alt clearboth">
</body>
</html>