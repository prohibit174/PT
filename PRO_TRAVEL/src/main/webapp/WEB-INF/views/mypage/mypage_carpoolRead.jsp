<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<%@ include file="/WEB-INF/views/include/carpool_sidebar.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
function applyLink(URL){
	if(confirm("Would you accept it?") == true){
		location.href=URL;
		alert('I accepted it.');

	}
	else{
		alert('Cancle');
	}
}
</script>
</head>
<body>
	<h3>Detail</h3>
	<table border="1">
		<tr height="30">
			<td width="150">Carpool Num</td>
			<td width="150">User ID</td>
			<td width="150">Price</td>
			<td width="150">Seat</td>
		</tr>
		 <tr height="30">
			<td width="150">${carpoolVO.c_num }</td>
			<td width="150">${carpoolVO.u_id }</td>
			<td width="150">${carpoolVO.c_price }</td>
			<td width="150">${carpoolVO.c_person }</td>
		</tr>			
		<tr height="30">
			<td width="150">출발지</td>
			<td colspan="3">
			<!--파일이름으로 download.jsp로 전달  -->
				<a href="download.jsp?filename=${carpoolVO.start_point }">${board.b_fname }</a>
			</td>			
		</tr>
		<tr height="30">
			<td width="150">목적지</td>
			<td colspan="3">${carpoolVO.way_point }</td>			
		</tr>
		<tr height="30">			
			<td colspan="4">${carpoolVO.c_year }년${carpoolVO.c_month }월${carpoolVO.c_date }일</td>			
		</tr>
		<tr height="30">			
			<td colspan="4">
				<input type="button" value="Modify" onclick="location.href='/mypage/modify?c_num=${carpoolVO.c_num } '">
				<input type="button" value="Remove" onclick="location.href='/mypage/remove?c_num=${carpoolVO.c_num } '">
			</td>			
		</tr>
	</table>
	
	<section class="results ajax-area" data-tmpl="athleteResults_tmpl">
        <div class="heading">
            <h2>신청한 사람들보기</h2>
            <ul class="add-links">

            </ul>
        </div>

        <ul class="table2 ajax-content">
            <li>
                    <div class="th col-first"> CR_NUM </div>
                    <div class="th col1"> 신청자 </div>
                    <div class="th col2"> C_NUM </div>
                    <div class="th col3"> 수락여부</div>
                    <div class="th col4"> Reject</div>
                    <div class="th col5"> Accept</div>
            </li>
            
            <c:forEach items="${list}" var="carpool_RequestVO">
                <li>
                <div class="td col-first">

        <div class="profile-row">
            <div class="flag-image">
            </div>
            <span>${carpool_RequestVO.cr_num }</span>${u_name }
        </div>
                </div>
                <div class="td col1">

    <%-- <a href = '/mypage/read?c_num=${carpoolVO.c_num }'> --%>
<picture class="picture">


<source srcset="https://stillmed.olympic.org/media/Images/OlympicOrg/Athletes/A/Ahn_Hyun_Soo_An_Victor/Ahn_Hyun_Soo_An_Victor_mugshot.jpg?interpolation=lanczos-none&resize=45:45, https://stillmed.olympic.org/media/Images/OlympicOrg/Athletes/A/Ahn_Hyun_Soo_An_Victor/Ahn_Hyun_Soo_An_Victor_mugshot.jpg?interpolation=lanczos-none&resize=90:90 2x" media="(min-width: 1024px)">
<source srcset="https://stillmed.olympic.org/media/Images/OlympicOrg/Athletes/A/Ahn_Hyun_Soo_An_Victor/Ahn_Hyun_Soo_An_Victor_mugshot.jpg?interpolation=lanczos-none&resize=45:45, https://stillmed.olympic.org/media/Images/OlympicOrg/Athletes/A/Ahn_Hyun_Soo_An_Victor/Ahn_Hyun_Soo_An_Victor_mugshot.jpg?interpolation=lanczos-none&resize=90:90 2x" media="(min-width: 768px)">

<img srcset="https://stillmed.olympic.org/media/Images/OlympicOrg/Athletes/A/Ahn_Hyun_Soo_An_Victor/Ahn_Hyun_Soo_An_Victor_mugshot.jpg?interpolation=lanczos-none&resize=45:45, https://stillmed.olympic.org/media/Images/OlympicOrg/Athletes/A/Ahn_Hyun_Soo_An_Victor/Ahn_Hyun_Soo_An_Victor_mugshot.jpg?interpolation=lanczos-none&resize=90:90 2x" alt="AHN Hyun-Soo (AN Victor)">
<span class="mask"></span>
</picture>
        <div class="area">
        
            <strong class="name"> ${carpool_RequestVO.u_id}</strong>
        </div>
    </a>
                </div>
                <div class="td col2">

        <div class="area">
            <strong>${carpool_RequestVO.c_num }</strong><br>
        </div>
                </div>
                
                        <div class="td col3">

        <div class="area">
            <strong> ${carpool_RequestVO.cr_ox } </strong>
        </div>
                </div>        
                
<div class="td col5">


                <div class="area">
                    <ul class="medal-box">
                    <li>
                            <strong><a href="javascript:applyLink('/mypage/accept?cr_num=${carpool_RequestVO.cr_num}')" class="btn-calendar">GO</a></strong>
                        </li>

   
                    </ul>
                </div>
                </div> 
                
                <div class="td col4">


                <div class="area">
                    <ul class="medal-box">
                    <li>
                            <strong><a href="javascript:applyLink('/mypage/reject?cr_num=${carpool_RequestVO.cr_num}')" class="btn-calendar">GO</a></strong>
                        </li>

   
                    </ul>
                </div>
                </div> 
    </li>
            </c:forEach>

        </ul>
        

    </section>
	<%@ include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>