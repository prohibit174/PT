<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/WEB-INF/views/include/header.jsp" %>
<%@ include file="/WEB-INF/views/include/carpool_sidebar.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>Detail</h3>
	<table border="1">
		<tr height="30">
			<td width="150">Driver</td>
			<td width="150">Price</td>
			<td width="150">Empty Seat</td>
		</tr>
		 <tr height="30">
			<td width="150">${carpool.c_u_name }</td>
			<td width="150">${carpool.c_price }$</td>
			<td width="150">${carpool.c_person }</td>
		</tr>			
		<tr height="30">
			<td width="150">출발지</td>
			<td colspan="3">${carpool.start_point }</td>
			</td>			
		</tr>
		<tr height="30">
			<td width="150">목적지</td>
			<td colspan="3">${carpool.way_point }</td>			
		</tr>
		<tr height="30">
			<td width="150">도착지</td>
			<td colspan="3">${carpool.dest_point }</td>			
		</tr>
		<tr height="30">
			<td width="150">출발시간</td>
			<td colspan="3">${carpool.c_year }년${carpool.c_month }월${carpool.c_date }일</td>			
		</tr>
		<tr height="30">			
			<td colspan="4">
				<input type="button" value="Modify" onclick="location.href='/mypage/modify?c_num=${carpool.cr_num } '">
				<input type="button" value="Remove" onclick="location.href='/mypage/remove?c_num=${carpool.cr_num } '">
			</td>			
		</tr>
	</table>	
	<%@ include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>