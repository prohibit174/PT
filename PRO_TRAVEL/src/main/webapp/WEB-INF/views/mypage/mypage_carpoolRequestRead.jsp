<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/WEB-INF/views/include/header.jsp" %>
<%@ include file="/WEB-INF/views/include/carpool_sidebar.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<style>
@CHARSET "EUC-KR";
.wrapper {
  margin: 0 auto;
  padding-left: 30px;
  max-width: 800px;
}

.table {
  margin: 0 0 40px 0;
  width: 100%;
  box-shadow: 0 1px 3px rgba(0, 0, 0, 0.2);
  display: table;
}
@media screen and (max-width: 580px) {
  .table {
    display: block;
  }
}

.row {
  display: table-row;
  background: #f6f6f6;
}
.row:nth-of-type(odd) {
  background: #e9e9e9;
}
.row.header {
  font-weight: 900;
  color: #ffffff;
  background: #ea6153;
}
.row.green {
  background: #27ae60;
}
.row.blue {
  background: #2980b9;
}
@media screen and (max-width: 580px) {
  .row {
    padding: 8px 0;
    display: block;
  }
}

.cell {
  padding: 6px 12px;
  display: table-cell;
}
@media screen and (max-width: 580px) {
  .cell {
    padding: 2px 12px;
    display: block;
  }
}

</style>

<script type="text/javascript">
function withdrawLink(URL){
	if(confirm("Do you really want to  leave?") == true){
		location.href=URL;
		alert('I accepted it.');

	}
	else{
		alert('Cancle');
	}
}
</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="wrapper">
	<table border="1">
		<tr height="30">
			<td rowspan="2">
			<img src="/resources/upload/${carpool.u_u_img }" width="50" height="50" >
			${carpool.c_u_name }</td>
			<td width="150"><strong>EMPTY</strong></td>
			<td width="150"><strong>PRICE</strong></td>
		</tr>
		 <tr height="30">
			<td width="150">${carpool.c_person }</td>
			<td width="150">${carpool.c_price }$</td>
		</tr>			
		<tr height="30">
			<td width="150"><strong>START</strong></td>
			<td colspan="2">${carpool.c_year }년${carpool.c_month }월${carpool.c_date }일</td>			
		</tr>
		<tr height="30">
			<td width="150"><strong>COURSE</strong></td>
			<td colspan="2">${carpool.start_point }->${carpool.way_point }->${carpool.dest_point }</td>
		</tr>
		<tr height="30">
			<td  width="150" colspan="3"><input type="button" value="Withdraw" onclick="javascript:withdrawLink('/mypage/withdraw?cr_num=${carpool.cr_num }&c_num=${carpool.c_num }')" ></td>
		</tr>


		
		<tr height="30">
			<td width="150"><strong>APPLICANT</strong></td>
			<td width="150"><strong>STATUS</strong></td>			
			<td width="150"><strong>MESSAGE</strong></td>			
		</tr>
		
		
 		<c:forEach items="${list}" var="CarpoolRequestUser">
		<tr height="30">
			<td width="150">
			<img src="/resources/upload/${CarpoolRequestUser.u_u_img }" width="25" height="25" >
			${CarpoolRequestUser.cr_u_name }
			</td>
			<td width="150">${CarpoolRequestUser.cr_ox}</td>			
			<td width="150"></td>
		</tr>
		</c:forEach> 
		
		
	</table>
	</div>
	
	<br><br><br>
	<%@ include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>