<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/message/magnific-popup.css"> 
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/message/jquery.magnific-popup.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/message/jquery.magnific-popup.min.js"></script>
<script type="text/javascript">
function detailForm(num){
	 var popupX = (window.screen.width / 4) - (100);
	   var popupY= (window.screen.height /4) - (150);
	    window.open('about:blank','popup_window','width=450, height=470, left='+popupX+', top='+popupY);
	    var wantForm = 'detailForm'+num;
	    var frm =document.getElementById(wantForm);
	    frm.submit();
	}
function sendForm(){
	 var popupX = (window.screen.width / 4) - (100);
	   var popupY= (window.screen.height /4) - (150);
	    window.open('about:blank','popup_window','width=450, height=470, left='+popupX+', top='+popupY);
	    var wantForm = 'sendForm';
	    var frm =document.getElementById(wantForm);
	    frm.submit();
	}
	

	
$(function(){
	
   $('.write_message').magnificPopup({
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
   
   $('#write_message').magnificPopup({
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
   
/*    $('.detail_message').magnificPopup({
	   type: 'inline',
	      preloader: false,
	      focus: '#name',
	      callbacks: {
	         beforeOpen: function() {
	            if($(window).width() < 700) {
	               this.st.focus = false;
	            } else {
	               this.st.focus = '#name';
	            }
	         }
	      }
	   }); */
	   
	  /*  $('.detail_message').on('click', function(){
		   alert(send);
	   }); */
	   var send = $('#m_num').val();
    $('.detail_message').magnificPopup({
	   type: 'inline',
	   preloader: false,
	   focus: '#name',
	   callbacks : {
	        open : function(){
	           $.ajax({
	              type: "post",
	              data: send,
	              success: function(data) {
	                location.href = "test.jsp";
	                console.log(data)
	              }  
	           });
	        }
	      }
	   }); 
});

$(function(){
   $("div.close").on("click", function(){
      $.magnificPopup.close();
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
<form id="test-form" class="mfp-hide white-popup-block" style="padding-left: 430px;" method="post" action="/message/insert">
   <fieldset style="border:0; background: white; width: 50%;">
   <div class="close" style="float: right; margin-right: 20px; margin-top: 10px;" onclick=""></div>
   <br><br>
   <h1 style="padding-left: 30px; font-size: 30px">&nbsp&nbspWrite your message !</h1>
      <ol>
         <li>
         <label style="font-weight: bold;">Sender : </label>
            <input id="name" name="u_id_sender" readonly="readonly" value="<%=session.getAttribute("login") %>" type="text" placeholder="Name" required="">
         </li>

         <li>
         <label style="font-weight: bold;">Recipient : </label>
            <input id="email" name="u_id_recipient" type="text" placeholder="recipient ID." required="">
         </li>

         <li>
         <label style="font-weight: bold;">Category : </label>
            <select class="" name="m_category">
               <option value="accompany">Accompany</option>
               <option value="carpool">Carpool</option>
               <option value="exchange">Exchange</option>
            </select>
         </li>

         <li>
         <label style="font-weight: bold;">Content : </label>
            <textarea id="textarea" style="width:350px; height:150px;" name="m_content"></textarea>
         </li>

      </ol>
   </fieldset>
      <input type="submit" value="send"/>
</form>
<form id="test-form2" class="mfp-hide white-popup-block" style="padding-left: 430px;" method="get" action="/message/detail_message">
   <fieldset style="border:0; background: white; width: 50%;">
   <div class="close" style="float: right; margin-right: 20px; margin-top: 10px;" onclick=""></div>
   <br><br>
   <h1 style="padding-left: 30px; font-size: 30px">&nbsp&nbspConfirm your message !</h1>
      <ol>
         <li>
         <label style="font-weight: bold;">Sender : </label>
            <input id="name" name="u_id_sender2" readonly="readonly" value="<%=session.getAttribute("login") %>" type="text" placeholder="Name" required="">
         </li>

         <li>
         <label style="font-weight: bold;">Recipient : </label>
            <input id="email" name="u_id_recipient" type="text" value="<%=session.getAttribute("login") %>" placeholder="" required="">
         </li>

         <li>
         <label style="font-weight: bold;">Category : </label>
           <label>${vo.m_category}</label>
         </li>

         <li>
         <label style="font-weight: bold;">Content : </label>
            <textarea id="textarea" style="width:350px; height:150px;" name="m_content" value="${vo.m_content }"></textarea>
         </li>

      </ol>
   </fieldset>
      <input type="submit" value="confirm"/>
</form>
<div class="main-container" style="padding-left: 30px; margin-left: 30px;">
    
    <div class="content">
        <div class="c1">
            
    <section class="events-section" >
        <header class="heading">
           <!--  <form action="/ioc-event-calendar" class="calendar-form">
                <input type="submit" value="Go" />
                <select title="Year" name="y" class="calendar-select">
        <option selected value="Year">Year</option>
            <option value="2018">2018</option>
            <option value="2017">2017</option>
            <option value="2016">2016</option>
            <option value="2015">2015</option>

                </select>
                <select title="Month" name="m" class="calendar-select">
        <option selected value="Month">Month</option>
                <option value="1">January</option>
                <option value="2">February</option>
                <option value="3">March</option>
                <option value="4">April</option>
                <option value="5">May</option>
                <option value="6">June</option>
                <option value="7">July</option>
                <option value="8">August</option>
                <option value="9">September</option>
                <option value="10">October</option>
                <option value="11">November</option>
                <option value="12">December</option>

                </select>
            </form> -->
            <h2>My Message</h2>
        </header>
        <ul class="events-list">
       
        <c:choose>
        
           <c:when test="${list1 == null}">
            <li>  
              <h3>
                      SENDER &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                      &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                      &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                      &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                      &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                      &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                      &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                      &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
              Classification
              </h3>
              </li>
            <c:forEach items="${list}" var="listMessage">
          <li>
        
         <form id="detailForm${listMessage.m_num}" name="detailForm${listMessage.m_num }" method="post" action="/message/detail_message?m_num=${listMessage.m_num}" target="popup_window">
          <div>
              <!-- <a href="#test-form" class="btn-calendar" id="write_message">답장 하기</a> -->
           
            <button class="write_message" style="float: right;" onclick="detailForm(${listMessage.m_num});">CONFIRM</button>
              <label style="float: right; padding-top: 5px;">${listMessage.m_category }&nbsp&nbsp&nbsp</label>
              <span class="country"></span>
         </div>
              <h3>
              ${listMessage.u_id_sender }
              </h3>
              <br>
        		
         </form>
          </li>

    </c:forEach>
           </c:when>
            <c:otherwise>
               <li>  
              <h3>
                      RECIPIENT &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                      &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                      &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                       &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                         &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                   
              Classification&nbsp&nbsp&nbsp&nbsp
				Acknowledgment
              </h3>
              </li>
               <c:forEach items="${list1}" var="listMessage">
                        
          <li>
        
         <form id="detailForm${listMessage.m_num}" name="detailForm${listMessage.m_num }" method="post" action="/message/detail_message2?m_num=${listMessage.m_num}" target="popup_window">
              <h3>
               ${listMessage.u_id_recipient } &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                      &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                      &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                       &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                         &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                        
                    
               ${listMessage.m_category }&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
               ${listMessage.m_status}&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<button class="write_message" style="float:rignt;" onclick="detailForm(${listMessage.m_num});">CONFIRM</button> 
              
              </h3>
  
       
         </form>
          </li>

    </c:forEach>
            </c:otherwise>
           
           
        </c:choose>
       
        </ul>
        <div class="paging"><ul>
<li><a class="prev" href="/ioc-event-calendar" rel="prev"><span class="icon-arrow-left"><span class="hide">&lt;</span></span></a></li><li class="active"><a href="/ioc-event-calendar">1</a></li><li class=""><a href="/ioc-event-calendar?p=2">2</a></li><li class=""><a href="/ioc-event-calendar?p=3">3</a></li><li><a class="next" href="/ioc-event-calendar?p=2" rel="next"><span class="icon-arrow-right"><span class="hide">&gt;</span></span></a></li></ul></div>

    </section>

        </div>
    </div>

<aside class="sidebar" style="padding-right: 30px; ">
    <div class="selects-box">
        <h2>Menu</h2>
        <div>
        
        <button class="write_message" href="#test-form">Write</button>
        <button class="write_to_me" href="#test-form2" >To me</button>
        </div>
        <br>
   <a class="aside-tag" href="/message/received_message?u_id=<%=session.getAttribute("login") %>" id="receive">¤ 받은 쪽지함</a>
       <select class="alt-select standardCase" id="aside-tag" title="IOC Members" onchange="if (this[this.selectedIndex].value != '#') {document.location = this[this.selectedIndex].value}">
               <option value="#">(Default)</option>
               <option value="#">Carpool</option>
              <option value="#">Exchange of Goods</option>
              <option value="#">Accompany</option>
       </select>
   <a class="aside-tag" href="/message/send_message?u_id=<%=session.getAttribute("login") %>" id="send" style="font-weight: bold;">¤ 보낸 쪽지함</a>
       <select class="alt-select standardCase" id="aside-tag" title="IOC Members" onchange="if (this[this.selectedIndex].value != '#') {document.location = this[this.selectedIndex].value}">
            <option value="#">(Default)</option>
            <option value="#">Carpool</option>
           <option value="#">Exchange of Goods</option>
           <option value="#">Accompany</option>
       </select>
       <br><br>
 
    </div>
</aside>
</div>
</body>
</html>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>