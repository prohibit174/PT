<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<c:forEach var="list" items="${list}">
<ul>
<li><h3>${list.cor_region}</h3></li>
<li><h3>${list.u_id}</h3></li>
<li><h3>${list.tp_num}</h3></li>
<li><h3>${list.tp_date}</h3></li>
</ul>
</c:forEach>

</body>
</html>