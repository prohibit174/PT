<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ include file="/WEB-INF/views/include/header.jsp"%>
<%@ include file="/WEB-INF/views/include/carpool_sidebar.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">

	function yellowCard_click(u_id) {
		var check = confirm("경고를 추가하시겠습니까?");
		
		if(check) document.location.href="/yellowCard"+u_id;
	}


</script>
</head>
<body>
<%-- <form action="yellowCard">
<input type="hidden" name="u_id" value="${user_ListVO.u_id }">

</form> --%>
<section class="id-card-box" itemtype="http://schema.org/Organization"
		itemscope="" style="margin: 0px 200px 100px 0px"; >
			<div class="heading">
		<h2>User list</h2>
		<ul class="add-links">

		</ul>
	</div>

	<ul class="table2 ajax-content">
		<li>
			
			<div class="th col1">ID</div>
			<div class="th col1"></div>
			<div class="th col2">NICK NAME</div> <!-- <div class="th col1"> BIRTH DAY </div> 
                    <div class="th col1"> ADDRESS </div>  -->
		<!-- 	<div class="th col1">SEX</div>
			<div class="th col2">LICENSE</div> --> <!--  <div class="th col1"> JOB </div>
                    <div class="th col1"> LANGUAGE </div>
                    <div class="th col1"> RELIGION </div>
                    <div class="th col1"> STYLE </div> -->
			<div class="th col2">STATUS</div>
			<div class="th col2">MANAGE</div>
			<div class="th col1"></div>
		</li>

		<c:forEach items="${userList}" var="user_ListVO">
			<li>
				<%-- <div class="td col-first">

					<div class="profile-row">
						<div class="flag-image"></div>
						<span>${user_ListVO.u_id }</span>
					</div>
				</div> --%>
			<!-- 	<div class="td col1">
 -->


<%-- 
					<a href='/carpool/read?c_num=${carpool_ListVO.c_num }'> 
					<picture class="picture">
이미지 넣어라


<img src="/resources/upload/${carpool_ListVO.u_img }" width="50" height="50" >



<span class="mask"></span>
</picture>  
						<div class="area">
							<strong class="name">${user_ListVO.u_name } </strong>
						</div>
					</a>
				</div>--%>
				
				<div class="td col1">
					<div class="id"><a href = "/userDetail?u_id=${user_ListVO.u_id }">
					${user_ListVO.u_id }
					</a>
					</div>
				</div>
				
				<div class="td col1"></div>
				
				<div class="td col2">
					<div class="name">${user_ListVO.u_name }</div>
				</div>

				<div class="td col2">
					<div class="license">${user_ListVO.u_status }</div>
				</div>


				<div class="td col2">

					<div class="status">
						
						<input type="button" value = "경고" id="yellowCard" onclick="yellowCard_click('${user_ListVO.u_id }')">
					</div>
				</div>

				
				<%--<div class="td col2">

					  <div class="area">
            <strong> ${carpool_ListVO.c_price}$ </strong>
        </div>
                </div>   
                
                <div class="td col4">


                <div class="area">
                    <ul class="medal-box">

                        <li>
                            <a href="javascript:applyLink('/carpool/request?c_num=${carpool_ListVO.c_num}')" class="btn-calendar">GO</a>
                        </li>

                    </ul>
                </div> --%>
			<!-- 	</div> -->
			</li>
		</c:forEach>





	</ul>
	<span class="btn-more"> <a
		href="/ajaxscript/loadmoretablelist/games/athletes/{535B8008-29D0-44BB-8B14-E2B29CC79DD5}/3/3">More</a>
	</span> </section>



</body>
</html>