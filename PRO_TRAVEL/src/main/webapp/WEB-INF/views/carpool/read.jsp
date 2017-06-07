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
			<td width="150">user id</td>
			<td width="150">${carpoolVO.u_id }</td>
			<td width="150">carpool number</td>
			<td width="150">${carpoolVO.c_num }</td>
		</tr>
		 <tr height="30">
			<td width="150">작성자</td>
			<td width="150">${carpoolVO.u_id }</td>
			<td width="150">작성일</td>
			<td width="150">
				<fmt:formatDate value="${board.b_date }" pattern="yyyy-MM-dd"/>
			</td>
		</tr>			
		<tr height="30">
			<td width="150">파일</td>
			<td colspan="3">
			<!--파일이름으로 download.jsp로 전달  -->
				<a href="download.jsp?filename=${board.b_fname }">${board.b_fname }</a>
			</td>			
		</tr>
		<tr height="30">
			<td width="150">제목</td>
			<td colspan="3">${board.b_title }</td>			
		</tr>
		<tr height="30">			
			<td colspan="4">${board.b_content }</td>			
		</tr>
		<tr height="30">			
			<td colspan="4">
				<input type="button" value="답변글" onclick="fn_reply()">
				<input type="button" value="수정" onclick="fn_update()">
			</td>			
		</tr>
	</table>
</body>
</html>