<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

<!-- <script>
	$(document).ready(function() {

		var formObj = $("form[role='form']");
		console.log(formObj);

		$(".btn-primary").on("click", function() {
			self.location = "/product/product_list";
		});
	});
</script> -->


<!--[if lt IE 9]><link rel="stylesheet" type="text/css" href="https://stillres.olympic.org/css/ie.css" /><![endif]-->
<style>


.btn-more1 > #button-register{
    display: inline-block;
    vertical-align: top;
   color: #959595;
    border: 2px solid #959595;
/*      padding: 0px 0px;  */
    min-width: 110px;
    text-decoration: none !important;
    font-weight: bold;
    line-height: 2em; 
    background: white;
    }

 button{
    color : #959595}

</style>
</head>
<body>



	<section class="id-card-box" itemtype="http://schema.org/Organization"
		itemscope="" style="margin: 0px 200px 100px 0px"; >
		<div class="logo-box" itemprop="image">

			 <form role="form" action="/product/product_list"> 

				<div class="items active">
					<div class="item-list">
						<div style="display: block;" class="slide">
	<%-- 						<div class="row">
								<span class="label">거래번호</span>
								<div class="txt">${proReq.pr_reqnum}</div>
							</div> --%>

							<div class="row">
								<span class="label">사용자 아이디</span>
								<div class="txt" itemprop="streetAddress">
									<address>${proReq.u_id}</address>
								</div>
							</div>
							<div class="row">
								<span class="label">상품번호</span>
								<div class="txt" itemprop="telephone">${proReq.p_num}</div>
							</div>
						<%-- 	<div class="row">
								<span class="label">거래요청여부</span>
								<div class="txt" itemprop="faxNumber">${proReq.pr_ox}</div>
							</div> --%>
							<div class="row">
								<span class="label">거래장소</span>
								<div class="txt">
									<a href="mailto:olympics@ibl.bm" itemprop="email">${proReq.pr_place}</a>
								</div>
							</div>
							<div class="row">
								<span class="label">거래날짜</span>
								<div class="txt">

									<a href="http://www.olympics.bm" target="_blank" itemprop="url">${proReq.pr_date}</a>
								</div>
							</div>

							<ul class="mailbox-attachments clearfix uploadedList"></ul>
						</div>
					</div>
					
					<span class="btn-more1"><button id="button-register">GO LIST</button>
					</span>
			</div></form>
			
		</div>


	</section>


	<hr>




</body>


<%@ include file="/WEB-INF/views/include/footer.jsp"%>



</html>