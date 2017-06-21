<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp"%>
<%@ include file="/WEB-INF/views/include/carpool_sidebar.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
	function acceptLink(URL) {
		if (confirm("Would you accept it?") == true) {
			location.href = URL;
			alert('I accepted it.');

		} else {
			alert('Cancle');
		}
	}

	function rejectLink(URL) {
		if (confirm("Would you reject it?") == true) {
			location.href = URL;
			alert('I rejected it.');
		} else {
			alert('Cancle');
		}
	}

	function modifyLink(URL) {
		if (confirm("Do you want to modify?") == true) {
			location.href = URL;
		} else {
			alert('Modify Cancle');
		}
	}

	function removeLink(URL) {
		if (confirm("Do you want to remove?") == true) {
			location.href = URL;
		} else {
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
		<table border="1">
			<tr height="30">
				<td rowspan="2"><%-- <img
					src="/resources/upload/${carpool_ListVO.u_img }" width="50"
					height="50"> ${carpool_ListVO.u_name } --%></td>
				<td width="100"><strong>CURRENT</strong></td>
				<td width="100"><strong>MAX</strong></td>
			</tr>
			<tr height="30">
				<td width="100">${groupVO.current_num}</td>
				<td width="100">${groupVO.max_people_num}</td>
			</tr>
			<tr height="30">
				<td width="150"><strong>GROUP ID</strong></td>
				<td colspan="2">${groupVO.u_id}</td>
			</tr>
			<tr height="30">
				<td width="150"><strong>DATE</strong></td>
				<td colspan="2">${groupVO.tp_date}</td>
			</tr>
			<tr height="30">
				<td width="150"><strong>REGION</strong></td>
				<td colspan="2">${groupVO.cor_region}</td>
			</tr>

			<tr height="30">
				<td colspan="3"><input type="button" value="Modify"
					onclick="javascript:modifyLink('/mypage/modify?c_num=${groupVO.accomp_group_num}')">
					<input type="button" value="Remove"
					onclick="javascript:removeLink('/mypage/remove?c_num=${groupVO.accomp_group_num} ')">
				</td>	
			</tr>

			<tr height="30">
				<td width="150"><strong>APPLICANT</strong></td>
				<td width="150"><strong>STATUS</strong></td>
				<td width="150"><strong>ACCEPT</strong></td>
			</tr>


			<c:forEach items="${guestGroupList}" var="guestGroupList">
				<tr height="30">
					<td width="150"><%-- <img
						src="/resources/upload/${CarpoolRequestUser.u_u_img }" width="25"
						height="25"> --%>${guestGroupList.u_id} </td>
					<td width="150">${guestGroupList.acr_ox}</td>
					<td width="150"><input type="button" value="Accept"
						onclick="javascript:acceptLink('/mypage/Accom_accept?acr_num=${guestGroupList.acr_num}')">
						<input type="button" value="Reject"
						onclick="javascript:rejectLink('/mypage/Accom_reject?acr_num=${guestGroupList.acr_num}')">
					</td>
				</tr>
			</c:forEach> 


		</table>
	</div>

	<br>
	<br>
	<br>
	<%@ include file="/WEB-INF/views/include/footer.jsp"%>
</body>
</html>