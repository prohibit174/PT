<HTML>
<HEAD>
<TITLE> Calendar </TITLE>
<script language="JavaScript" src="http://www.webmadang.net/javascript/js/calendarDateInput.js"></script>
</HEAD>
<body>

<form>
<script>DateInput('orderdate', true, 'DD-MON-YYYY')</script>
<input type="button" onClick="alert(this.form.orderdate.value)" value="Show date value passed">
</form>

</script>
</BODY>
</HTML>