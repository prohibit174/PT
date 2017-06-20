<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%@include file="../include/header.jsp" %>
<%@include file="../include/accompany_sidebar.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<script src='${pageContext.request.contextPath}/resources/js/accompanyJs/jquery-ui.min.js'></script>
<link rel='stylesheet' href='/resources/css/accompany/jquery-ui.min.css' />
<script src='${pageContext.request.contextPath}/resources/js/accompanyJs/searchfunction.js'></script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Search Group</title>
</head>
<body>

<div class="id-card-box" style="width: 100% ;border: black;">
	
			<div class="item-list" style="width: 1400px; padding-right: 30px;">
					<div style="font-size: 20px;">
							<span class="label" style="margin-right: 80px;"  >departure</span>
						 <select class="label ajaxCity" style="margin-top: -5px; width: 150px" name="city">
						<option class="locationName" style="margin-bottom: 10px">name</option>
						<option value="Zurich">Zurich</option>
<option value="France">France</option>
<option value="Nice">Nice</option>
<option value="Brussels">Brussels</option>
<option value="Berlin">Berlin</option>
<option value="Munich">Munich</option>
<option value="Bern">Bern</option>
<option value="France">France</option>
<option value="Belgium">Belgium</option>
<option value="Germany" selected="selected">Germany</option>
<option value="Swiss">Swiss</option>
						</select>
						
						<span class="label" style="margin: 0 40px;">begin</span>
						<input class="datepick label ajaxStart" type="text" name="sdate" value="start" style="margin-top: -5px; padding: 0px; width: 150px;">
						<span class="label" style="margin: 0 40px;">end</span>
						<input class="datepick label ajaxEnd" type="text" name="edate" value="end" style="margin-top: -5px; padding: 0px; width: 150px;">
							<img class="appendcp" src="../resources/images/accompany/plus.png" width="30" height="30" style="margin-top: -5px;">
				</div>
		<div class="accompanyList row">
		</div>
		<div style="padding-left: 45%; float: none;" class="calendar-form">
		
		<input class="btn-more ajaxbtn" type="submit" value="search" style="margin-right: 20%; margin-top: 10px; width: 120px; height: 50px; font-size: medium; float: none;" />
		</div>
		</div>
	
	
	
	</div>



</body>
</html>