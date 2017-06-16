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
<<<<<<< HEAD
.sidebar .selects-box button:HOVER {
=======
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
<<<<<<< HEAD

=======
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
			<br>
			<li>
			<label style="font-weight: bold;">Recipient : </label>
				<input id="email" name="u_id_recipient" type="text" placeholder="recipient ID." required="">
			</li>
			<br>
			<li>
			<label style="font-weight: bold;">Category : </label>
				<select class="" name="m_category">
					<option value="accompany">Accompany</option>
					<option value="carpool">Carpool</option>
					<option value="exchange">Exchange</option>
				</select>
			</li>
			<br>
			<li>
			<label style="font-weight: bold;">Content : </label>
				<textarea id="textarea" style="width:350px; height:150px;" name="m_content"></textarea>
			</li>
			<br>
			<input type="submit" value="send"/>
		</ol>
	</fieldset>
</form>
>>>>>>> branch '김두두' of https://github.com/prohibit174/PT
<div class="main-container" style="padding-left: 30px; margin-left: 30px;">
<<<<<<< HEAD
<input type="submit" value="Go" />
    <div class="sidebar" style="padding-right: 30px; ">
        <input type="submit" value="Go" />
    <div class="selects-box">
        <h2>Menu</h2>
        <input type="submit" value="Go" />
        
        <button class="write_message">Write</button>
        <button class="write_to_me">To me</button>
        <br>
	<a class="aside-tag" id="receive">¤ 받은 쪽지함</a>
		 <select class="alt-select standardCase" id="aside-tag" title="IOC Members" onchange="if (this[this.selectedIndex].value != '#') {document.location = this[this.selectedIndex].value}">
	            <option value="#">(Default)</option>
	            <option value="#">Carpool</option>
	        	<option value="#">Exchange of Goods</option>
	        	<option value="#">Accompany</option>
	    </select>
	<a class="aside-tag" id="send" style="font-weight: bold;">¤ 보낸 쪽지함</a>
		 <select class="alt-select standardCase" id="aside-tag" title="IOC Members" onchange="if (this[this.selectedIndex].value != '#') {document.location = this[this.selectedIndex].value}">
            <option value="#">(Default)</option>
            <option value="#">Carpool</option>
        	<option value="#">Exchange of Goods</option>
        	<option value="#">Accompany</option>
    	</select>
    	<br><br>
	<a class="aside-tag" style="cursor: pointer;">¤ 전체 쪽지함</a>
    </div>
</div>
=======
    
>>>>>>> branch '김두두' of https://github.com/prohibit174/PT
    <div class="content">
        <div class="c1">
            
    <section class="events-section" >
        <header class="heading">
            <form action="/ioc-event-calendar" class="calendar-form">
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
            </form>
            <h2>My Message</h2>
        </header>
        <ul class="events-list">
        <c:forEach items="${list}" var="listMessage">
		    <li>
		    <div>
		        <a href="/ajaxscript/geticscalendar/{E1E90A75-7711-4192-94E2-B5E31358DAC7}" class="btn-calendar">답장 하기</a>
		        <label style="float: right; padding-top: 5px;">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp쪽지 상태 &nbsp&nbsp <h3 class="checked" style="padding-top: 10px;"></h3></label>
		        <label style="float: right; padding-top: 5px;">쪽지 분류 :  <input value="${listMessage.m_category }"></label>
		        <span class="country"></span>
			</div>
		        <h3>
		            <a href="/olympic-day">
		                보낸 사람 : ${listMessage.u_id_sender }
		            </a>
		        </h3>
		        <br>
		        <span class="time"><span content="6/23/2017 12:00:00 AM">${listMessage.m_content }</span></span>
		    </li>
    </c:forEach>
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
        <button class="write_to_me">To me</button>
        </div>
        <br>
	<a class="aside-tag" id="receive">¤ 받은 쪽지함</a>
		 <select class="alt-select standardCase" id="aside-tag" title="IOC Members" onchange="if (this[this.selectedIndex].value != '#') {document.location = this[this.selectedIndex].value}">
	            <option value="#">(Default)</option>
	            <option value="#">Carpool</option>
	        	<option value="#">Exchange of Goods</option>
	        	<option value="#">Accompany</option>
	    </select>
	<a class="aside-tag" id="send" style="font-weight: bold;">¤ 보낸 쪽지함</a>
		 <select class="alt-select standardCase" id="aside-tag" title="IOC Members" onchange="if (this[this.selectedIndex].value != '#') {document.location = this[this.selectedIndex].value}">
            <option value="#">(Default)</option>
            <option value="#">Carpool</option>
        	<option value="#">Exchange of Goods</option>
        	<option value="#">Accompany</option>
    	</select>
    	<br><br>
	<a class="aside-tag" style="cursor: pointer;">¤ 전체 쪽지함</a>
    </div>
</aside>
</div>
</body>
</html>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>