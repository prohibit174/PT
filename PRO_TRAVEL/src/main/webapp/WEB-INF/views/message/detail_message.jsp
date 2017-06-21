<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/message/magnific-popup.css"> 
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/message/jquery.magnific-popup.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/message/jquery.magnific-popup.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form id="test-form" class="white-popup-block">
   <fieldset style="border:0; background: white; width: 50%;">
   <div class="close" style="float: right; margin-right: 20px; margin-top: 10px;" onclick=""></div>
   <br><br>
   <h1 style="padding-left: 30px; font-size: 30px">&nbsp&nbspConfirm your message !</h1>
      <ul>
         <li>
         <label style="font-weight: bold;">Sender : </label>
            <input id="name" name="u_id_sender" readonly="readonly" value="${vo.u_id_sender }" type="text" required="">
         </li>

         <li>
         <label style="font-weight: bold;">Recipient : </label>
            <input id="email" name="u_id_recipient" type="text" value="${vo.u_id_recipient }" required="">
         </li>

         <li>
         <label style="font-weight: bold;">Category : </label>
           <input id="email" name="u_id_recipient" type="text" value="${vo.m_category }" required="">
         </li>

         <li>
         <label style="font-weight: bold;">Content : </label>
            <textarea id="textarea" style="width:350px; height:150px;" name="m_content">${vo.m_content}</textarea>
         </li>

      </ul>
   </fieldset>
      <input type="submit" value="send"/>
</form>
</body>
</html>