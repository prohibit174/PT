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

<style type="text/css">

  table.t1 {
    border-collapse: collapse;
    font-family: Arial, Helvetica, sans-serif;
    border-color: #0072bc; 
  }
  .t1 th, .t1 td {
    padding: 4px 8px;
  }
  .blue {
    background: #0072bc;
    text-transform: lowercase;
    text-align: left;
    font-size: 15px;
    color: #fff;
  }



</style>

<script type="text/javascript">
function acceptLink(URL){
	if(confirm("Would you accept it?") == true){
		location.href=URL;
		alert('I accepted it.');

	}
	else{
		alert('Cancle');
	}
}

function rejectLink(URL){
	if(confirm("Would you reject it?") == true){
		location.href=URL;
		alert('I rejected it.');
	}
	else{
		alert('Cancle');
	}
}

function modifyLink(URL){
	if(confirm("Do you want to modify?") == true){
		location.href=URL;
	}
	else{
		alert('Modify Cancle');
	}
}

function removeLink(URL){
	if(confirm("Do you want to remove?") == true){
		location.href=URL;
	}
	else{
		alert('Remove Cancle');
	}
}
</script>



<style>
@CHARSET "EUC-KR";
.wrapper {
  margin: 0 auto;
  padding-left: 20px;
  max-width: 800px;
}



</style>
</head>
<body>
<div class="wrapper">
	<table border="2" class="t1">
		<tr height="30">
			<td rowspan="2">
			<img src="/resources/upload/${carpool_ListVO.u_img }" width="50" height="50" >
			${carpool_ListVO.u_name }</td>
			<td width="150" class="blue"><strong>EMPTY</strong></td>
			<td width="150" class="blue"><strong>PRICE</strong></td>
		</tr>
		 <tr height="30">
			<td width="150">${carpool_ListVO.c_person }</td>
			<td width="150">${carpool_ListVO.c_price }$</td>
		</tr>			
		<tr height="30">
			<td width="150" class="blue"><strong>START</strong></td>
			<td colspan="2">${carpool_ListVO.c_year }년${carpool_ListVO.c_month }월${carpool_ListVO.c_date }일</td>			
		</tr>
		<tr height="30">
			<td width="150" class="blue"><strong>COURSE</strong></td>
			<td colspan="2">${carpool_ListVO.start_point }->${carpool_ListVO.way_point }->${carpool_ListVO.dest_point }</td>
		</tr>

		<tr height="30">			
			<td colspan="3">                    
				<input type="button" value="Modify" onclick="javascript:modifyLink('/mypage/modify?c_num=${carpool_ListVO.c_num }')" >
				<input type="button" value="Remove" onclick="javascript:removeLink('/mypage/remove?c_num=${carpool_ListVO.c_num } ')">
			</td>			
		</tr>
		
		<tr height="30">
			<td width="150" class="blue"><strong>APPLICANT</strong></td>
			<td width="150" class="blue"><strong>STATUS</strong></td>			
			<td width="150" class="blue"><strong>ACCEPT</strong></td>			
		</tr>
		
		
		<c:forEach items="${list}" var="CarpoolRequestUser">
		<tr height="30">
			<td width="150">
			<img src="/resources/upload/${CarpoolRequestUser.u_u_img }" width="25" height="25" >
			${CarpoolRequestUser.cr_u_name }
			</td>
			<td width="150">${CarpoolRequestUser.cr_ox}</td>			
			<td width="150">
			<input type="button" value="Accept" onclick="javascript:acceptLink('/mypage/accept?cr_num=${CarpoolRequestUser.cr_num}&c_num=${CarpoolRequestUser.c_num}')">
			<input type="button" value="Reject" onclick="javascript:rejectLink('/mypage/reject?cr_num=${CarpoolRequestUser.cr_num}&c_num=${CarpoolRequestUser.c_num}')">
			</td>
		</tr>
		</c:forEach>
		
		
	</table>
	</div>
	
	<br><br><br>
	<%@ include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>