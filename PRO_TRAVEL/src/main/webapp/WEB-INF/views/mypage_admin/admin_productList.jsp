<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
div.main {
  margin: 0 auto;
  padding-left: 30px;
  max-width: 800px;
  min-height: 320px;
  height: auto;
}



</style>

</head>
	<%@ include file="/WEB-INF/views/include/header.jsp"%>
	<%@ include file="/WEB-INF/views/include/admin_sidebar.jsp"%>
<body>

	<div id="highlights-of-the-games"></div>
	<section class="text-post"
		itemscopeitemtype="http://schema.org/NewsArticle">
		<div class="main" style="margin-right: 150px;">
			<div class="main-holder photovideo" style="margin-left: 100px;">

				<div class='box-body' style="background-color: white;">

					<select name="searchType" class="searchBox">
						<option value="n"
							<c:out value="${cri.searchType == null?'selected':''}"/>>
							---</option>
						<option value="t" 
							<c:out value="${cri.searchType eq 't'?'selected':''}"/>>
							ProductName</option>
						<option value="c"
							<c:out value="${cri.searchType eq 'c'?'selected':''}"/>>
							Content</option>
						<option value="w"
							<c:out value="${cri.searchType eq 'w'?'selected':''}"/>>
							UserId</option>
						<option value="tc"
							<c:out value="${cri.searchType eq 'tc'?'selected':''}"/>>
							ProductName OR Content</option>
						<option value="cw"
							<c:out value="${cri.searchType eq 'cw'?'selected':''}"/>>
							Content OR UserId</option>
						<option value="tcw"
							<c:out value="${cri.searchType eq 'tcw'?'selected':''}"/>>
							ProductName OR Content OR UserId</option>
					</select>
					
					 <input type="text" name='keyword' id="keywordInput" value='${cri.keyword }'>
					<button id='searchBtn'>Search</button>


				</div>





				<section class="sets-section" style="background-color: white; padding-top:20px;">

					<div class="ajax-area" data-tmpl="load3_tmpl"
						style="background-color: white">
						<ul class="sets-list ajax-content">

							<c:forEach var="product" items="${list}">
								<li itemscope="" itemtype="http://schema.org/ImageObject"
									class="same-height"><a
									href="/productDetail${pageMaker.makeSearch(pageMaker.cri.page) }&p_num=${product.p_num }"
									itemprop="url" style="color: DarkSlateGray";> <!-- makeQuery -->
										<picture class="img"> <c:if
											test="${product.p_img!=null}">
											<c:set var="head"
												value="${fn:substring(product.p_img, 0, fn:length(product.p_img)-4) }"></c:set>
											<c:set var="pattern"
												value="${fn:substring(product.p_img, fn:length(head)+1, fn:length(product.p_img)) }"></c:set>
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
										</c:if> <%-- <img srcset="${product.p_img}"> --%> </picture>
								</a>
									<h2 itemprop="name">

										<a href="/productDetail${pageMaker.makeSearch(pageMaker.cri.page) }&p_num=${product.p_num }""
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
				</section>
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


	<div class="box-footer">

		<div class="text-center">
			<ul class="pagination">

				<c:if test="${pageMaker.prev}">
					<li><a
						href="product_list${pageMaker.makeSearch(pageMaker.startPage - 1) }">&laquo;</a></li>
				</c:if>

				<c:forEach begin="${pageMaker.startPage }"
					end="${pageMaker.endPage }" var="idx">
					<li
						<c:out value="${pageMaker.cri.page == idx?'class =active':''}"/>>
						<a href="product_list${pageMaker.makeSearch(idx)}">${idx}</a>
					</li>
				</c:forEach>

				<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
					<li><a
						href="product_list${pageMaker.makeSearch(pageMaker.endPage +1) }">&raquo;</a></li>
				</c:if>




			</ul>
		</div>


	</div>
	

	<!-- /.box-footer-->

	<!--/.col (left) -->


	<!-- /.row -->

	<!-- /.content -->

	<form id="jobForm">
		<input type='hidden' name="page" value=${pageMaker.cri.perPageNum}>
		<input type='hidden' name="perPageNum"
			value=${pageMaker.cri.perPageNum}>
	</form>


	
 <script>
	var result = '${msg}';

	if (result == 'SUCCESS') {
		alert("처리가 완료되었습니다.");
		location.replace(self.location);
	}
</script>

<script>
		$(document).ready(
				function() {

					$('#searchBtn').on(
							"click",
							function(event) {
							/* 	alert($("select.searchBox option:selected").val()); */
								self.location = "product_list"
										+ '${pageMaker.makeQuery(1)}'
										+ "&searchType="
										+ $("select.searchBox option:selected").val()
										+ "&keyword=" + $('#keywordInput').val();

							});
					
					

				});
		</script>
		
	



<%@ include file="/WEB-INF/views/include/footer.jsp"%>


</body>
</html>