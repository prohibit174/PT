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
</div>	
	<%@ include file="/WEB-INF/views/include/footer.jsp"%>

</body>
</html>