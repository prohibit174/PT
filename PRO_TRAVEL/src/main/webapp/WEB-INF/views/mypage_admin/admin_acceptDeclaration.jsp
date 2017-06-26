<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ include file="/WEB-INF/views/include/header.jsp"%>
<%@ include file="/WEB-INF/views/include/admin_sidebar.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function content(d_num){
	 var popupX = (window.screen.width / 2) - (800 / 2);
	   var popupY= (window.screen.height /2) - (500 / 2);
	    window.open('about:blank','popup_window','width=350, height=250, left='+popupX+', top='+popupY);
	    var wantForm = 'content'+d_num;
	    var frm =document.getElementById(wantForm);
	    frm.submit(); 
	}
	
function fileView(d_num){
	 var popupX = (window.screen.width / 2) - (800 / 2);
	   var popupY= (window.screen.height /2) - (500 / 2);
	    window.open('about:blank','popup_window','width=800, height=600, left='+popupX+', top='+popupY);
	    var wantForm = 'fileView'+d_num;
	    var frm =document.getElementById(wantForm);
	    frm.submit(); 
	}

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

</script>

<style>
@CHARSET "EUC-KR";
.wrapper {
  margin: 0 auto;
  padding-left: 30px;
  max-width: 800px;
  min-height: 320px;
  height: auto;
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



.cell {
  padding: 6px 12px;
  display: table-cell;
}

.table .th, .table2 .th {
	font-size: 13px;
	width: 12%;
}

.table2 .col-first {
	width: 10%;
	padding: 0px 30px 0px 0px;
	margin: 0px 10px 0px 0px;
}

.table2 .col2 {
	width: 18%;

	margin: 0px 10px 0px 0px;
}

.table2 .col3 {
	width: 15%;
	margin: 0px 10px 0px 0px;
}

.table2 .col5 {
	width: 12%;
	margin: 0px 10px 0px 0px;
}
</style>
</head>
<body>
<div class="wrapper">
  <div class="section-links" style="margin-top:0px; padding-top:0px;
		font-size:16px; float: right; margin-right:70px;">
				<ul>
					<li><a href="/adminDeclare">WAIT LIST</a></li>
					<li>ACCEPT LIST</li>
					<li><a href="/rejectDeclareList">REJECT LIST</a></li>
				</ul>
	</div>

	<div class="heading">
		<h2>DECLARATION LIST</h2>
		<ul class="add-links">

		</ul>
	</div>
	
	


		<ul class="table2 ajax-content">
			<li >
				<div class="th col-first">REPORTER</div>
				<div class="th col1">REPORTED</div>
				<div class="th col2">SECTION</div>
				<div class="th col2">FILE</div>
				<div class="th col3"></div>
				<div class="th col5">CONTENT</div>

			</li>


			<li style="margin-top: 20px">
			<c:forEach items="${acceptList}" var="acceptList">
					<div class="th col-first"> ${acceptList.u_id }</div>
					<div class="th col1">${acceptList.d_reported }</div>
					<div class="th col2">${acceptList.d_small }</div>
					
					<form id="fileView${acceptList.d_num }" name="fileView${acceptList.d_num }" method="post" 
 						action="/fileview?d_num=${acceptList.d_num }" target="popup_window">	
 					<a onclick = "fileView(${acceptList.d_num });">
					<div class="th col2">${acceptList.d_file }</div>
					</a>
					<div class="th col3"></div>
					</form>
					
					
					<form id="content${acceptList.d_num }" name="content${acceptList.d_num }" method="post" 
 						action="/detailContent?d_num=${acceptList.d_num }" target="popup_window">
 					<a onclick = "content(${acceptList.d_num });">
					<div class="th col5"><strong>GO</strong></div>
					</a>
					</form>
					
					
				
					</c:forEach>
					 <c:if test="${empty acceptList}">
							수락 목록이 없습니다.
						</c:if>
					</li>
					</ul>
</div>
				

<%-- <div class="wrapper">
	<div class="heading">
		<h2 style="padding-left: 30px;">Declare List</h2>

	</div>

<table border="2" class="t1">
      <tr height="30">
         <td width="150" class="blue" style="padding-left: 30px;"><strong>신고자</strong></td>
         <td width="150" class="blue" style="padding-left: 30px;"><strong>피신고자</strong></td>         
         <td width="150" class="blue" style="padding-left: 30px;"><strong>분류</strong></td>         
         <td width="150" class="blue" style="padding-left: 30px;"><strong>신고 내용</strong></td>         
         <td width="150" class="blue" style="padding-left: 30px;"><strong>첨부 파일</strong></td>
         <td width="150" class="blue" style="padding-left: 30px;"><strong>처리</strong></td>
                  
      </tr>


      <c:forEach items="${declareList}" var="declareList">
      <tr height="30">
         <td width="150">
         	${declareList.u_id }
         </td>
         <td width="150">
         	${declareList.d_reported }
         </td>         
         <td width="150">
         	${declareList.d_small }
         </td>
         <td width="150">
         	${declareList.d_content }
         </td>
         <td width="150">
         	${declareList.d_file }
         </td>
         <td width="150">
         	<input type="button" value="처리">
         	<input type="button" value="취소">
         </td>                   
      </tr>
      </c:forEach>
</table>
<br><br><br>
</div>	 --%>
	<%@ include file="/WEB-INF/views/include/footer.jsp"%>

</body>
</html>