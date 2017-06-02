<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<%@ include file="/WEB-INF/views/include/main_sidebar.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

   

   
   
<title>Insert title here</title>


</head>
<body>
        <div id="main">
    <div class="main-container alt">
        <div class="content">
            <div class="c1">
                
            </div>
           
        </div>
        <aside class="sidebar">
            
        </aside>
    </div>
    
    <div>
    <section class="events-section" >
        <header class="heading">
            <form action="/ioc-event-calendar" class="calendar-form">
                
               
                <select title="Year" name="y" class="calendar-select">
                        <option selected value="Year">Year</option>
                        <option value="2018">2018</option>
                        <option value="2017">2017</option>

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
                
                <select title="Date" name="d" class="calendar-select">
                        <option selected value="Date">Date</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                        <option value="6">6</option>
                        <option value="7">7</option>
                        <option value="8">8</option>
                        <option value="9">9</option>
                        <option value="10">10</option>
                        <option value="11">11</option>
                        <option value="12">12</option>
                        <option value="13">13</option>
                        <option value="14">14</option>
                        <option value="15">15</option>
                        <option value="16">16</option>
                        <option value="17">17</option>
                        <option value="18">18</option>
                        <option value="19">19</option>
                        <option value="20">20</option>
                        <option value="21">21</option>
                        <option value="22">22</option>
                        <option value="23">23</option>
                        <option value="24">24</option>
                        <option value="25">25</option>
                        <option value="26">26</option>
                        <option value="27">27</option>
                        <option value="28">28</option>
                        <option value="29">29</option>
                        <option value="30">30</option>
                        <option value="31">31</option>

                </select>
                
                <select title="Minute" name="minute" class="calendar-select">
                        <option selected value="Minute">Minute</option>
                        <option value="00">00</option>
                        <option value="10">10</option>
                        <option value="20">20</option>
                        <option value="30">30</option>
                        <option value="40">40</option>
                        <option value="50">50</option>
             

                </select>
                
                <select title="Hour" name="hour" class="calendar-select">
                        <option selected value="Hourr">Hour</option>
                        <option value="00">00</option>
                        <option value="01">01</option>
                        <option value="02">02</option>
                        <option value="03">03</option>
                        <option value="04">04</option>
                        <option value="05">05</option>
                        <option value="06">06</option>
                        <option value="07">07</option>
                        <option value="08">08</option>
                        <option value="09">09</option>
                        <option value="10">10</option>
                        <option value="11">11</option>
                        <option value="12">12</option>
                        <option value="13">13</option>
                        <option value="14">14</option>
                        <option value="15">15</option>
                        <option value="16">16</option>
                        <option value="17">17</option>
                        <option value="18">18</option>
                        <option value="19">19</option>
                        <option value="20">20</option>
                        <option value="21">21</option>
                        <option value="22">22</option>
                        <option value="23">23</option>
                        <option value="24">24</option>

                </select>
                <br><br><br><br>
                <input type="submit" value="SIGN" />
                
                                <select title="Person" name="c_person" class="calendar-select">
                        <option selected value="Seat">Seat</option>
                        <option value="00">1</option>
                        <option value="10">2</option>
                        <option value="20">3</option>
                        <option value="30">4</option>
                        <option value="40">5</option>
                        <option value="50">6</option>
             

                </select>
                
                <select title="Price" name="c_price" class="calendar-select">
                        <option selected value="Price">Price</option>
                        <option value="5">$5</option>
                        <option value="10">$10</option>
                        <option value="15">$15</option>
                        <option value="20">$20</option>
                        <option value="25">$25</option>
                        <option value="30">$30</option>
                        <option value="35">$35</option>
                        <option value="40">$40</option>
                        <option value="45">$45</option>
                        <option value="50">$50</option>
  
                </select>

                
                
            </form>
            <h2>DATE</h2>
            <br><br><br><br>
            <h2>INFORMATION</h2>
        </header>
        

        </div>
        
        
        
        <div class="paging"><ul>
<li><a class="prev" href="/ioc-event-calendar" rel="prev"><span class="icon-arrow-left"><span class="hide">&lt;</span></span></a></li><li class="active"><a href="/ioc-event-calendar">1</a></li><li class=""><a href="/ioc-event-calendar?p=2">2</a></li><li class=""><a href="/ioc-event-calendar?p=3">3</a></li><li><a class="next" href="/ioc-event-calendar?p=2" rel="next"><span class="icon-arrow-right"><span class="hide">&gt;</span></span></a></li></ul></div>

    </section>

</div>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>