<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>	
<%@ include file="/WEB-INF/views/include/header.jsp"%>
<%@ include file="/WEB-INF/views/include/product_sidebar.jsp"%>
<% String id = (String)session.getAttribute("login");
		request.setAttribute("id", id);
		
	String admin = (String)session.getAttribute("admin");
		request.setAttribute("admin", admin);
%>
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
	
	

 <script type="text/javascript">



  
	function btn_js_update_click(){
  	  /* confirm(문자열, 초기값) */
  	  var check = confirm("수정하시겠습니까?");
  	  /* if(check == true) else false */
  	  if(check) document.location.href="product_update?p_num=${product.p_num}";
  	}
 
	function btn_js_delete_click(){
    	  /* confirm(문자열, 초기값) */
    	  var check = confirm("삭제하시겠습니까?");
    	  /* if(check == true) else false */
    	  if(check) document.location.href="product_delete?p_num=${product.p_num}";
    	}

	function btn_js_request_click(){
  	  /* confirm(문자열, 초기값) */
  	  var check = confirm("요청하시겠습니까?");
  	  /* if(check == true) else false */
  	  if(check) document.location.href="productReq_register?p_num=${product.p_num}";
  	  
		} 
  </script> 

<!-- <script>
$(document).ready(function(){
	
	var formObj = $("form[role='form']");
	
	console.log(formObj);
	
	$(".btn-warning").on("click", function(){
		formObj.attr("action", "/product/product_update");
		formObj.attr("method", "get");		
		formObj.submit();
	});
	
	$("#removeBtn").on("click", function(){
		formObj.attr("method", "get");
		formObj.attr("action", "/product/product_delete");
		formObj.submit();
	});
	
	
});
</script> -->
	
<style>
.btn-more1 button {
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
    text-align: center;
    }

 button{
    color : #959595}
</style>

<!--[if lt IE 9]><link rel="stylesheet" type="text/css" href="https://stillres.olympic.org/css/ie.css" /><![endif]-->
</head>
<body>

<form role="form" action="product_update" method="post">
    
    <input type='hidden' name='p_num' value ="${product.p_num}">
    <input type='hidden' name='page' value ="${cri.page}">
    <input type='hidden' name='perPageNum' value ="${cri.perPageNum}">
    <input type='hidden' name='searchType' value="${cri.searchType}">
	<input type='hidden' name='keyword' value="${cri.keyword}">
    
 </form>   

	<section class="id-card-box" itemtype="http://schema.org/Organization"
		itemscope="" style="margin: 0px 200px 100px 0px"; >
		<div class="logo-box" itemprop="image">
			<picture> <!--[if IE 9]><video style="display: none;"><![endif]-->
				<input type='hidden' name='p_num' value="${product.p_num}">


		<!-- 	<source
				srcset="https://stillmed.olympic.org/media/Images/OlympicOrg/Countries/B/Bermuda/CNO-BER.jpg?interpolation=lanczos-none&resize=253:*, https://stillmed.olympic.org/media/Images/OlympicOrg/Countries/B/Bermuda/CNO-BER.jpg?interpolation=lanczos-none&resize=506:* 2x"
				media="(min-width: 1024px)">
			<source
				srcset="https://stillmed.olympic.org/media/Images/OlympicOrg/Countries/B/Bermuda/CNO-BER.jpg?interpolation=lanczos-none&resize=223:*, https://stillmed.olympic.org/media/Images/OlympicOrg/Countries/B/Bermuda/CNO-BER.jpg?interpolation=lanczos-none&resize=446:* 2x"
				media="(min-width: 768px)"> -->
			<!--[if IE 9]></video><![endif]--> <img src="/resources/upload/${product.p_img }"></picture>

		</div>
		<div class="items active">
			<div class="item-list">
				<div style="display: block;" class="slide">
					<div class="row">
						<span class="label">판매자</span>
						<div class="txt">${product.u_id}</div>
					</div>

					<div class="row">
						<span class="label">상품명</span>
						<div class="txt" itemprop="streetAddress">
							<address>
								${product.p_name}
							</address>
						</div>
					</div>
					<div class="row">
						<span class="label">가격</span>
						<div class="txt" itemprop="telephone">${product.p_price}</div>
					</div>
					<div class="row">
						<span class="label">판매기간</span>
						<div class="txt" itemprop="faxNumber">${product.p_date}</div>
					</div>
					<div class="row">
						<span class="label">내용</span>
						<div class="txt">
							<a href="mailto:olympics@ibl.bm" itemprop="email">${product.p_detail}</a>
						</div>
					</div>
					<div class="row">
						<span class="label">판매여부</span>
						<div class="txt">

							<a href="http://www.olympics.bm" target="_blank" itemprop="url">${product.p_ox}</a>
						</div>
					</div>
				
				<ul class="mailbox-attachments clearfix uploadedList"></ul>	
				
			<div class="row" align="center">
						<c:choose>
					        <c:when test="${id == product.u_id}">
					       <!-- <button name="submit" id="validate_order" type="submit"
								class="primaryAction">
								<span>Register</span>  -->
						<span class="btn-more1">
						 <button  onclick="btn_js_update_click()">MODIFY</button>
						 <button  onclick="btn_js_delete_click()">DELETE</button></span>	 		 
							</c:when>
							
							<c:when test="${admin == 'admin'}">
					       <!-- <button name="submit" id="validate_order" type="submit"
								class="primaryAction">
								<span>Register</span>  -->
							<span class="btn-more">
						 <button onclick="btn_js_delete_click()">DELETE</button> 		</span>	 
							</c:when>
					    <c:otherwise>
					    <span class="btn-more1">
							 <button onclick="btn_js_request_click()">REQUEST</button> </span>
						 </c:otherwise>
				 	  </c:choose>	 
			</div>

				</div>
			</div>
			<span class="btn-more"> <a title="more link" href="#">More</a>
			</span>
			
		</div>
		
	</section>


	<hr>




</body>


<%@ include file="/WEB-INF/views/include/footer.jsp"%>



</html>