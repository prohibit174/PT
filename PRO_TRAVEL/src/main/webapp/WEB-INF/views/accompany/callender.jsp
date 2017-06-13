<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<HTML>
<HEAD>
<TITLE> Calendar </TITLE>

<script
   src='${pageContext.request.contextPath}/resources/js/accompanyJs/2015062517161192340.js'></script>
</HEAD>
<body>

<form>
<script>DateInput('orderdate', true, 'DD-MON-YYYY')</script>
<input type="button" onClick="alert(this.form.orderdate.value)" value="Show date value passed">
</form>

</BODY>
</HTML>