<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>카풀세부보기</h3>
	<table border="1">
		<tr height="30">
			<td width="150">카풀번호</td>
			<td width="150">회원 id</td>
			<td width="150">가격</td>
			<td width="150">남은 좌석</td>
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
				<input type="button" value="수정" onclick="location.href='/carpool/modify?c_num=${carpoolVO.c_num } '">
				<input type="button" value="삭제" onclick="location.href='/carpool/remove?c_num=${carpoolVO.c_num } '">
			</td>			
		</tr>
	</table>
</body>
</html>