<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
<%@ include file="/WEB-INF/views/include/header.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- <link rel="stylesheet" href="https://www.notm.or.kr/resources/css/import.css">
 --><link rel="stylesheet" href="https://www.notm.or.kr/resources/css/contents.css">
<script type="text/javascript">

function normalDeclare(num){
	 var popupX = (window.screen.width / 2) - (200 / 2);
	   var popupY= (window.screen.height /2) - (300 / 2);
	    window.open('about:blank','popup_window','width=350, height=250, left='+popupX+', top='+popupY);
	    var normalForm = 'normalDeclare'+num;
	    var normal =document.getElementById(normalForm);
	    normal.submit();
	}

</script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/message/magnific-popup.css"> 
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/message/jquery.magnific-popup.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/message/jquery.magnific-popup.min.js"></script>
<script type="text/javascript">
$(function(){
   $('#accompany_button').magnificPopup({
      type: 'inline',
      preloader: false,
      focus: '#name',

      // When elemened is focused, some mobile browsers in some cases zoom in
      // It looks not nice, so we disable it:
      callbacks: {
         beforeOpen: function() {
            if($(window).width() < 700) {
               this.st.focus = false;
            } else {
               this.st.focus = '#name';
            }
         }
      }
   });
   
   $('#carpool_button').magnificPopup({
	      type: 'inline',
	      preloader: false,
	      focus: '#name',

	      // When elemened is focused, some mobile browsers in some cases zoom in
	      // It looks not nice, so we disable it:
	      callbacks: {
	         beforeOpen: function() {
	            if($(window).width() < 700) {
	               this.st.focus = false;
	            } else {
	               this.st.focus = '#name';
	            }
	         }
	      }
	   });
});

$(function(){
	   $('#normal_button').magnificPopup({
	      type: 'inline',
	      preloader: false,
	      focus: '#name',

	      // When elemened is focused, some mobile browsers in some cases zoom in
	      // It looks not nice, so we disable it:
	      callbacks: {
	         beforeOpen: function() {
	            if($(window).width() < 700) {
	               this.st.focus = false;
	            } else {
	               this.st.focus = '#name';
	            }
	         }
	      }
	   });
	   
	   $('.accompanyDeclare').magnificPopup({
		      type: 'inline',
		      preloader: false,
		      focus: '#name',

		      // When elemened is focused, some mobile browsers in some cases zoom in
		      // It looks not nice, so we disable it:
		      callbacks: {
		         beforeOpen: function() {
		            if($(window).width() < 700) {
		               this.st.focus = false;
		            } else {
		               this.st.focus = '#name';
		            }
		         }
		      }
		   });
	});
	
$('.carpoolDecalre').magnificPopup({
    type: 'inline',
    preloader: false,
    focus: '#name',

    // When elemened is focused, some mobile browsers in some cases zoom in
    // It looks not nice, so we disable it:
    callbacks: {
       beforeOpen: function() {
          if($(window).width() < 700) {
             this.st.focus = false;
          } else {
             this.st.focus = '#name';
          }
       }
    }
 });

$(function(){
   $("div.close").on("click", function(){
      $.magnificPopup.close();
   });
});

$(function(){
	$("#receipt").on("click", function(){
		if($("#d_reported").val() != "" & $(".d_small").val() != "" & $("#d_content").val() != "")	{
			alert("Success.");
			alert("The manager will confirm and send the result to you as a note.");
		}
	});
});
</script>
<style type="text/css">
button{
    width: 93px;
    height: 40px;
    background: #333;
    font: 1.336em/1.07em "Trade-Gothic-W-Cond-Bold", Arial, Helvetica, sans-serif;
    outline: none;
    border: 0;
    margin: 0 0 0 20px;
    padding: 0;
    color: #fff;
    text-transform: uppercase;
    cursor: pointer;
    } 
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

</head>
<body>
<form id="normal-form" class="mfp-hide white-popup-block" style="padding-left: 500px;" method="post" action="/declare/normal" enctype="multipart/form-data">
   <fieldset style="border:0; background: white; width: 50%;">
   <div class="close" style="float: right; margin-right: 20px; margin-top: 10px;" onclick=""></div>
   <br><br>
   
   <h1 style="padding-left: 30px; font-size: 30px">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp   ▶ 
General ◀</h1>
      <ol>
         <li>
         <label style="font-weight: bold;">reporter : </label>
            <input id="u_id" name="u_id" readonly="readonly" value="<%=session.getAttribute("login") %>" type="text" placeholder="Name" required="">
         </li>
		<br>
         <li>
         <label style="font-weight: bold;">User to report : </label>
            <input id="d_reported" name="d_reported" type="text" placeholder="recipient ID." required="">
         </li>
		<br>
         <li>
         <label style="font-weight: bold;">Category : </label>
            <select class="d_small" name="d_small" required="">
               <option value=""></option>
               <option value="abuse">Abuse</option>
               <option value="exchange_scam">Scam</option>
               <option value="calumny">Slander</option>
            </select>
         </li>
		<br>
         <li>
         <label style="font-weight: bold;">Contents : </label>
         <br><br>
            <textarea id="d_content" style="width:380px; height:150px;" name="d_content" required=""></textarea>
         </li>
	<br>
         <li>
         <label style="font-weight: bold;">File</label><br><br>
         <input type="file" value="파일 첨부" name="img_file"  /> 
         </li>
      </ol>
            <input type="submit" value="접수" id="receipt" style="width: 130px; height: 40px; margin-left: 180px;"/>
            <br><br>
   </fieldset>

</form>

<form id="accompany-form" class="mfp-hide white-popup-block" style="padding-left: 500px;" method="post" action="/declare/accompany" enctype="multipart/form-data">
   <fieldset style="border:0; background: white; width: 50%;">
   <div class="close" style="float: right; margin-right: 20px; margin-top: 10px;" onclick=""></div>
   <br><br>
   <h1 style="padding-left: 30px; font-size: 30px">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp   ▶ Accompany ◀</h1>
      <ol>
         <li>
         <label style="font-weight: bold;">reporter : </label>
            <input id="u_id" name="u_id" readonly="readonly" value="<%=session.getAttribute("login") %>" type="text" placeholder="Name" required="">
         </li>
		<br>
         <li>
         <label style="font-weight: bold;">User to report : </label>
            <input id="d_reported" name="d_reported" type="text" placeholder="recipient ID." required="">
         </li>
		<br>
         <li>
         <label style="font-weight: bold;">category : </label>
            <select class="d_small" name="d_small">
               <option value=""></option>
               <option value="inappropriateness">Inappropriate companions</option>
               <option value="papering">Companion</option>
            </select>
         </li>
		<br>
         <li>
         <label style="font-weight: bold;">Contents : </label>
         <br><br>
            <textarea id="d_content" style="width:380px; height:150px;" name="d_content"></textarea>
         </li>
	<br>
         <li>
         <label style="font-weight: bold;">File</label><br><br>
         <input type="file" value="파일 첨부" name="img_file" /> 
         </li>
      </ol>
            <input type="submit" value="send" style="width: 130px; height: 40px; margin-left: 200px;" id="receipt"/>
            <br><br>
   </fieldset>

</form>

<form id="carpool-form" class="mfp-hide white-popup-block" style="padding-left: 500px;" method="post" action="/declare/carpool" enctype="multipart/form-data">
   <fieldset style="border:0; background: white; width: 50%;">
   <div class="close" style="float: right; margin-right: 20px; margin-top: 10px;" onclick=""></div>
   <br><br>
   <h1 style="padding-left: 30px; font-size: 30px">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp   ▶ Carpool ◀</h1>
      <ol>
         <li>
         <label style="font-weight: bold;">Reporter : </label>
            <input id="u_id" name="u_id" readonly="readonly" value="<%=session.getAttribute("login") %>" type="text" placeholder="Name" required="">
         </li>
		<br>
         <li>
         <label style="font-weight: bold;">User to report : </label>
            <input id="d_reported" name="d_reported" type="text" placeholder="recipient ID." required="">
         </li>
		<br>
         <li>
         <label style="font-weight: bold;">Category : </label>
            <select class="d_small" name="d_small"  required="">
               <option value=""></option>
               <option value="inappropriateness">Inappropriate carpool</option>
               <option value="papering">Carpool Wrap</option>
            </select>
         </li>
		<br>
         <li>
         <label style="font-weight: bold;">Contents : </label>
         <br><br>
            <textarea id="d_content" style="width:380px; height:150px;" name="d_content"  required=""></textarea>
         </li>
	<br>
         <li>
         <label style="font-weight: bold;">File</label><br><br>
         <input type="file" value="파일 첨부" name="img_file" /> 
         </li>
      </ol>
            <input type="submit" value="send" style="width: 130px; height: 40px; margin-left: 200px;" id="receipt"/>
            <br><br>
   </fieldset>

</form>
 <div id="sub-contents">
    <div class="l-box">
      <div id="de-select">
        <div class="select-box-l box-1" style="width: 300px; height: 500px; margin-left: 140px;">
          <h3>
General</h3>
          <p>Please report abuse or slander, exchange.</p>
          <div class="select-box-s">
            <h4>General</h4>
            <p>
It is helpful to attach a document that can prove inappropriate behavior of a professional traveling companion.</p>
            <button id="normal_button" style="margin-left: 50px;" href="#normal-form">Report</button>
          </div>
        </div><div class="select-box-l box-2" style="width: 700px; height: 500px;">
          <h3>Travel</h3>
          <p>
You can receive information on false travel or carpool information.<br>※ 
Carpooling and participating customers only.<br/><a href="about">* ProTravel</a>
          </p>
          <div class="select-box-s">
            <h4>Accompany</h4>
            <table class="table-1">
              <tr>
                <th>
Inappropriate companions</th>
                <td>You posted a post that contains sexual content or false information.</td>
              </tr>
              <tr>
                <th>Many posts<span></span></th>
                <td>Registered many articles for the purpose of fast companionship</td>
              </tr>
            </table>
            <button id="accompany_button" style="margin-left: 80px; margin-top: 20px;" href="#accompany-form">REPORT</button>
          </div><div class="select-box-s l-margin">
            <h4>Carpool</h4>
            <table class="table-2">
              <tr>
                <th>
Inappropriate carpool</th>
                <td>
False information input, unauthorized carpool cancel </td>
              </tr>
              <tr>
                <th>Many posts</th>
                <td>Registered many articles  </td>
              </tr>
            </table>
            <button id="carpool_button" style="margin-left: 80px; margin-top: 40px;" href="#carpool-form">REPORT</button>
          </div>
        </div>
      </div>
    </div>
  </div>
	<br><br>

</body>
</html>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>