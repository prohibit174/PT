<% response.setHeader("P3P", "CP='CAO PSA CONi OTR OUR DEM ONL'"); %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<%@ include file="/WEB-INF/views/include/main_sidebar.jsp" %>
<%
String id = (String)session.getAttribute("login");
	if(id != null){
		request.setAttribute("id", id);
	}
%>

<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<body>

<br><br><br><br><br><br><br>
<br><br><br><br><br><br><br>
<br><br><br><br><br><br><br>

<input type="text" id="id" value="${id }">

<c:set var="u_id" value="${id }"></c:set>

<c:if test="${id!=null}">
										
<iframe width="500" height="500" src="http://127.0.0.1:5000?username=${id }" frameborder="1">
</iframe>										

</c:if>
</body>
</html>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
