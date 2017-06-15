<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<form id="test-form" class="mfp-hide white-popup-block" style="padding-left: 430px;">
	<fieldset style="border:0; background: white; width: 50%;">
	<div class="close" style="float: right; margin-right: 20px; margin-top: 10px;" onclick=""></div>
	<br><br>
	<h1 style="padding-left: 30px; font-size: 30px">&nbsp&nbspWrite your message !</h1>
		<ol>
			<li>
			<label style="font-weight: bold;">Sender : </label>
				<input id="name" name="name" disabled="disabled" type="text" placeholder="Name" required="">
			</li>
			<br>
			<li>
			<label style="font-weight: bold;">Recipient : </label>
				<input id="email" name="email" type="email" placeholder="recipient ID." required="">
			</li>
			<br>
			<li>
			<label style="font-weight: bold;">Category : </label>
				<select class="">
					<option>Accompany</option>
					<option>Carpool</option>
					<option>Exchange</option>
				</select>
			</li>
			<br>
			<li>
			<label style="font-weight: bold;">Content : </label>
				<textarea id="textarea" style="width:350px; height:150px;"></textarea>
			</li>
			<br>
			<input type="submit" value="send"/>
		</ol>
	</fieldset>
</form>
<div class="main-container" style="padding-left: 30px; margin-left: 30px;">
    
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
    <li>
    <div>
        <a href="/ajaxscript/geticscalendar/{E1E90A75-7711-4192-94E2-B5E31358DAC7}" class="btn-calendar">답장 하기</a>
        <label style="float: right; padding-top: 5px;">쪽지 상태&nbsp&nbsp&nbsp&nbsp<h3 class="checked"></h3></label>
        <label style="float: right; padding-top: 5px;">쪽지 분류 : ex)Carpool&nbsp&nbsp&nbsp&nbsp  </label>
        <span class="country"></span>
	</div>
        <h3>
            <a href="/olympic-day">
                보낸 사람 :
            </a>
        </h3>
        <br>
        <span class="time"><span content="6/23/2017 12:00:00 AM">내용을 일단 숨긴 다음에 자세히 보기 버튼을 누르면 디테일 보이게끔 할 것. 만약에 자세히 보기를 눌러서 쪽지를 읽었으면 체크표시 아니면 X 표시로 보일 것</span></span>
    </li>
    <li>
        <a href="/ajaxscript/geticscalendar/{52DA3417-D82C-4B53-A992-2F936D1D9388}" class="btn-calendar">날짜 보이게</a>
        <span class="country">Tokyo, Japan</span>

        <h3>
            <a href="/coordination-commissions">
                4th Coordination Commission meeting, Tokyo 2020
            </a>
        </h3>
        <span class="time"><span content="6/28/2017 12:00:00 AM">Jun 28, 2017</span> - <span content="6/30/2017 12:00:00 AM">Jun 30, 2017</span></span>
    </li>
    <li>
        <a href="/ajaxscript/geticscalendar/{D6FA5D7A-CC69-4A59-A89C-C94C750B740E}" class="btn-calendar">Calendar</a>
        <span class="country">Buenos Aires, Argentina</span>

        <h3>
            <a href="/coordination-commissions">
                4th Coordination Commission meeting, Buenos Aires 2018 Summer Youth Olympic Games
            </a>
        </h3>
        <span class="time"><span content="7/4/2017 12:00:00 AM">Jul 04, 2017</span> - <span content="7/5/2017 12:00:00 AM">Jul 05, 2017</span></span>
    </li>
    <li>
        <a href="/ajaxscript/geticscalendar/{26394D1C-48B8-4927-AB57-A13EC54145A7}" class="btn-calendar">Calendar</a>
        <span class="country">Lausanne, Switzerland</span>

        <h3>
            <a href="/news/ioc-executive-board-meeting-and-2024-candidate-city-briefing-for-ioc-members-information-for-the-media">
                IOC Executive Board meeting and 2024 Candidate City Briefing for IOC Members
            </a>
        </h3>
        <span class="time"><span content="7/9/2017 12:00:00 AM">Jul 09, 2017</span> - <span content="7/12/2017 12:00:00 AM">Jul 12, 2017</span></span>
    </li>
    <li>
        <a href="/ajaxscript/geticscalendar/{416204E6-4E9D-438E-A2B6-5D9AEA5F7A8F}" class="btn-calendar">Calendar</a>
        <span class="country">PyeongChang </span>

        <h3>
            <a href="/coordination-commissions">
                9th Coordination Commission meeting, PyeongChang 2018
            </a>
        </h3>
        <span class="time"><span content="8/29/2017 12:00:00 AM">Aug 29, 2017</span> - <span content="8/31/2017 12:00:00 AM">Aug 31, 2017</span></span>
    </li>
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