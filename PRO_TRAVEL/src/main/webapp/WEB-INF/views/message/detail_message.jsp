<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/message/magnific-popup.css"> 
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/message/jquery.magnific-popup.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/message/jquery.magnific-popup.min.js"></script>
<script type="text/javascript">
function resendForm(){
	 var popupX = (window.screen.width / 4) - (100);
	   var popupY= (window.screen.height /4) - (150);
	    window.open('about:blank','popup_window','width=450, height=470, left='+popupX+', top='+popupY);
	    var wantForm = 'resendForm';
	    var frm =document.getElementById(wantForm);
	    frm.submit();
	}	
</script>
<style type="text/css">
button{
    width: 93px;
    height: 40px;
    background: #333;
    font: 0em/0em "Trade-Gothic-W-Cond-Bold", Arial, Helvetica, sans-serif;
    outline: none;
    border: 0;
    margin: 0 0 0 20px;
    padding: 0;
    color: #fff;
    text-transform: uppercase;
    cursor: pointer;
    text-align: center;
    vertical-align:middle;
    font-size: 16px;
    font-weight: bold;
    } 
button.mfp-close,
button.mfp-arrow {
  overflow: visible;
  cursor: pointer;
  background: transparent;
  border: 0;
  -webkit-appearance: none;
  display: block;
  outline: none;
  padding: 0;
  z-index: 1046;
  box-shadow: none;
  touch-action: manipulation; }

button::-moz-focus-inner {
  padding: 0;
  border: 0; }
      
input[type="submit"]{
    width: 73px;
    height: 30px;
    background: #333;
    font: 1.336em/1.07em "Trade-Gothic-W-Cond-Bold", Arial, Helvetica, sans-serif;
    outline: none;
    border: 0;
    margin: 0 0 0 130px;
    padding: 0;
    color: #fff;
    text-transform: uppercase;
    cursor: pointer;
    }     
button:HOVER, input[type="submit"]:HOVER {
   background: #ddd;
}
.checked {
font-size: 8px;
float: right;
   position: relative;
   width: 0.5em;
   height: 2.0em;
   margin: 30% auto;
   background: #2c2c2c;
   border-radius: 0.5em;
   -webkit-transform: rotate(-30deg);
   -moz-transform: rotate(-30deg);
   -o-transform: rotate(-30deg);
   -ms-transform: rotate(-30deg);
   transform: rotate(-30deg);
margin-left: -0.7em;
}

.checked:before {
   content: "";
   position: absolute;
   left:1em;
   top:-0.5em;
   width: 0.5em;
   height: 3.0em;
   background: #2c2c2c;
   border-radius: 0.5em;
   -webkit-transform: rotate(50deg);   
   -moz-transform: rotate(50deg);
   -o-transform: rotate(50deg);
   -ms-transform: rotate(50deg);
   transform: rotate(50deg);
   }

.close{
  position:relative;
  width:0.3em;
  height:1.5em;
  background: #2C2C2C;
  -webkit-transform: rotate(45deg);
  -moz-transform: rotate(45deg);
  -o-transform: rotate(45deg);
  -ms-transform: rotate(45deg);
  transform: rotate(45deg);
font-size: 22px;
cursor: pointer;
}
.close:after{
  content: "";
  position: absolute;
  top: 0;
  left: 0;
  width:0.3em;
  height:1.5em;
  background: #2C2C2C;
  -webkit-transform: rotate(-90deg);
  -moz-transform: rotate(-90deg);
  -o-transform: rotate(-90deg);
  -ms-transform: rotate(-90deg);
  transform: rotate(-90deg);
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<form class="white-popup-block" id="resendForm" method="post" action="/message/resend_message" target="popup_window">
   <fieldset style="border:0; background: white; width: 50%;">
  <!--  <div class="close" style="float: right; margin-right: 20px; margin-top: 10px;" onclick=""></div> -->
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
            <textarea id="textarea" style="width:350px; height:150px;" name="m_content" value="">${vo.m_content }</textarea>
         </li>

      </ul>
      <div style="float: right;"><button class="write_message" onClick="window.close()">confirm</button>
      <button class="write_message" onClick="resendForm();">send</button></div>
      
   </fieldset>
      
</form>
</body>
</html>