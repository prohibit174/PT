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
<%@include file="/WEB-INF/views/include/header.jsp" %>
<%@include file="/WEB-INF/views/include/blog_sidebar.jsp" %>
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
   			<li itemscope="" itemtype="http://schema.org/ImageObject" class="same-height same-height-left " style="height: 367px;">
   			   <a href="/blog/read?=${blogVO.b_id }">
                <picture class="img">
				<img src="/resources/upload/${blogVO.b_img }" alt=""></picture>
            </a>
            <h1><a href="/blog/read?=${blogVO.b_id }">${blogVO.b_title }</a></h1>
        <!-- <span class="sss-picture"></span> --> <span>${blogVO.u_name }</span>
    </li>
   		</c:when>
   	
   		<c:when test="${status.count%3==2 }">
   			<li class="same-height" style="height: 367px;">
   			  	   <a href="/blog/read?=${blogVO.b_id }">
                <picture class="img">
				<img src="/resources/upload/${blogVO.b_img }" alt=""></picture>
            </a>
            <h1><a href="/blog/read?=${blogVO.b_id }">${blogVO.b_title }</a></h1>
        <!-- <span class="sss-picture"></span> --> <span>${blogVO.u_name }</span>
    </li>
   		</c:when>
   		
   		<c:otherwise>
   			<li itemscope="" itemtype="http://schema.org/ImageObject" class="same-height same-height-right" style="height: 367px;">
   			   	   <a href="/blog/read?=${blogVO.b_id }">
                <picture class="img">
				<img src="/resources/upload/${blogVO.b_img }" alt=""></picture>
            </a>
            <h1><a href="/blog/read?=${blogVO.b_id }">${blogVO.b_title }</a></h1>
        <!-- <span class="sss-picture"></span> --> <span>${blogVO.u_name }</span>
    </li>
   		</c:otherwise>
   	</c:choose>
 </c:forEach>   
  </ul>
    <%--  <li id="${status.index}"  itemscope="" itemtype="http://schema.org/ImageObject" class="same-height same-height-left " style="height: 367px;">
            <a href="/photos/olympic-day">
                <picture class="img">
<img srcset="https://stillmed.olympic.org/media/Photos/2014/06/23/National%20Olympic%20Committee%20-%20Portugal_243153.jpg?interpolation=lanczos-none&amp;fit=around|340:191&amp;crop=340:191;*,*, https://stillmed.olympic.org/media/Photos/2014/06/23/National%20Olympic%20Committee%20-%20Portugal_243153.jpg?interpolation=lanczos-none&amp;fit=around|680:382&amp;crop=680:382;*,* 2x" alt=""></picture>

            </a>
            <h2 itemprop="name"><a href="/photos/olympic-day" itemprop="url">Olympic Day</a></h2>
        <span class="sss-picture"></span> <span>${blogVO.u_name }</span>
    </li> --%>
 
    <!-- <li itemscope="" itemtype="http://schema.org/ImageObject" class="same-height" style="height: 367px;">
            <a href="/photos/rio-2016">
                <picture class="img">
<img srcset="https://stillmed.olympic.org/media/Photos/2011/06/10/Cristo%20Redentor_130892.jpg?interpolation=lanczos-none&amp;fit=around|340:191&amp;crop=340:191;*,*, https://stillmed.olympic.org/media/Photos/2011/06/10/Cristo%20Redentor_130892.jpg?interpolation=lanczos-none&amp;fit=around|680:382&amp;crop=680:382;*,* 2x" alt=""></picture>

            </a>
            <h2 itemprop="name"><a href="/photos/rio-2016" itemprop="url">Rio 2016</a></h2>
        <span class="sss-picture"></span> <span>2141 Photos</span>
    </li>

    <li itemscope="" itemtype="http://schema.org/ImageObject" class="same-height same-height-right" style="height: 367px;">
            <a href="/photos/mascots-1972-to-2016">
                <picture class="img">
<img srcset="https://stillmed.olympic.org/media/Images/OlympicOrg/Mascots/Summer/Rio_2016/Rio_2016_mascots.jpg?interpolation=lanczos-none&amp;fit=around|340:191&amp;crop=340:191;*,*, https://stillmed.olympic.org/media/Images/OlympicOrg/Mascots/Summer/Rio_2016/Rio_2016_mascots.jpg?interpolation=lanczos-none&amp;fit=around|680:382&amp;crop=680:382;*,* 2x" alt="Rio 2016, Vinicius"></picture>

            </a>
            <h2 itemprop="name"><a href="/photos/mascots-1972-to-2016" itemprop="url">Mascots 1972 to 2016</a></h2>
        <span class="sss-picture"></span> <span>53 Photos</span>
    </li> -->
              
                        <!--     <span class="btn-more">
                    <a href="/ajaxscript/loadmoreoverviewmedia/{B4C7581B-72EC-4637-A3ED-52F225BFE686}/3/0/TopOverview">More</a>
                </span>
            <noscript>&lt;div class="paging"&gt;&lt;ul&gt;
&lt;li&gt;&lt;a&gt;&lt;span class="icon-arrow-left"&gt;&lt;span class="hide"&gt;&amp;lt;&lt;/span&gt;&lt;/span&gt;&lt;/a&gt;&lt;/li&gt;&lt;li class="active"&gt;&lt;a href="https://www.olympic.org/photos"&gt;1&lt;/a&gt;&lt;/li&gt;&lt;li class=""&gt;&lt;a href="https://www.olympic.org/photos/2"&gt;2&lt;/a&gt;&lt;/li&gt;&lt;li class=""&gt;&lt;a href="https://www.olympic.org/photos/3"&gt;3&lt;/a&gt;&lt;/li&gt;&lt;li class=""&gt;&lt;a href="https://www.olympic.org/photos/4"&gt;4&lt;/a&gt;&lt;/li&gt;&lt;li&gt;&lt;a class="next" href="https://www.olympic.org/photos/2" rel="next"&gt;&lt;span class="icon-arrow-right"&gt;&lt;span class="hide"&gt;&amp;gt;&lt;/span&gt;&lt;/span&gt;&lt;/a&gt;&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;</noscript>
 -->

        </div>
    </section>
    </div>

</body>
</html>