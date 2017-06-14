<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>
<style type="text/css">
.aside-tag {

	  font-size: 12px;
	  line-height: 34px;
	  text-overflow: ellipsis;
	  white-space: nowrap;
	  overflow: hidden;
	  cursor: default;
	  display: block;
	  font-size: 14px;
	  line-height: 49px;
	  font-weight: bold;
	  margin: 0 35px 0 13px;
	  color: #acacac;
	  text-transform: uppercase; }
</style>
</head>
<body>


<div class="main-container" style="padding-left: 30px; margin-left: 30px;">
    <aside class="sidebar" style="padding-right: 30px;">
        
    <div class="selects-box">
        <h2>Contact Directory</h2>
	<a class="aside-tag" id="receive" style="font-weight: bold;">받은 쪽지함</a>
		 <select class="alt-select standardCase" id="aside-tag" title="IOC Members" onchange="if (this[this.selectedIndex].value != '#') {document.location = this[this.selectedIndex].value}">
	            <option value="/ioc-members-list">Carpool</option>
	        	<option value="#" class="select-noclick">Exchange of Goods</option>
	        	<option value="#" class="select-noclick">Accompany</option>
	    </select>
	<a class="aside-tag" id="send" style="font-weight: bold;">보낸 쪽지함</a>
		 <select class="alt-select standardCase" id="aside-tag" title="IOC Members" onchange="if (this[this.selectedIndex].value != '#') {document.location = this[this.selectedIndex].value}">
            <option value="/ioc-members-list">Carpool</option>
        	<option value="#" class="select-noclick">Exchange of Goods</option>
        	<option value="#" class="select-noclick">Accompany</option>
    	</select>
	<a class="aside-tag">받은 쪽지함</a>
	<a class="aside-tag">받은 쪽지함</a>
   

    <select class="alt-select " title="Commissions" onchange="if (this[this.selectedIndex].value != '#') {document.location = this[this.selectedIndex].value}">
            <option value="#" class="select-noclick">Commissions</option>
        














































































































        <option value="/athletes-commission">Athletes&#39; Commission</option>

        <option value="/athletes-entourage-commission">Athletes&#39; Entourage Commission</option>

        <option value="/audit-committee">Audit Committee</option>

        <option value="/communications-commission">Communications Commission</option>

        <option value="/coordination-commissions">Coordination Commissions</option>

        <option value="/culture-and-olympic-heritage-commission">Culture and Olympic Heritage Commission</option>

        <option value="/delegate-members">Delegate Members</option>

        <option value="/digital-and-technology-commission">Digital &amp; Technology Commission</option>

        <option value="/ethics-commission">Ethics Commission</option>

        <option value="/evaluation-commission">Evaluation Commission</option>

        <option value="/finance-commission">Finance Commission</option>

        <option value="/executive-board">IOC Executive Board</option>

        <option value="/ioc-members-election-commission">IOC Members Election Commission</option>

        <option value="/ioc-representatives-on-the-wada-executive-committee-and-foundation-board">IOC Representatives on the WADA Executive Committee and Foundation Board</option>

        <option value="/legal-affairs">Legal Affairs</option>

        <option value="/marketing-commission">Marketing Commission</option>

        <option value="/medical-and-scientific-commission">Medical and Scientific Commission</option>

        <option value="/olympic-broadcasting-services">Olympic Broadcasting Services - Boards Of Directors</option>

        <option value="/olympic-channel">Olympic Channel</option>

        <option value="/olympic-channel-boards-of-directors">Olympic Channel - Boards of Directors</option>

        <option value="/olympic-education-commission">Olympic Education Commission</option>

        <option value="/olympic-programme-commission">Olympic Programme Commission</option>

        <option value="/olympic-solidarity-commission">Olympic Solidarity Commission</option>

        <option value="/public-affairs-and-social-development-through-sport">Public Affairs And Social Development Through Sport</option>

        <option value="/sport-and-active-society-commission">Sport and Active Society</option>

        <option value="/sustainability-and-legacy-commission">Sustainability And Legacy Commission</option>

        <option value="/women-in-sport-commission">Women in Sport Commission</option>
    </select>

    <select class="alt-select " title="National Olympic Committees" onchange="if (this[this.selectedIndex].value != '#') {document.location = this[this.selectedIndex].value}">
            <option value="/national-olympic-committees">National Olympic Committees</option>
        
        <option value="/afghanistan">Afghanistan</option>

        <option value="/albania">Albania</option>

        <option value="/algeria">Algeria</option>

        <option value="/american-samoa">American Samoa</option>

        <option value="/andorra">Andorra</option>

        <option value="/angola">Angola</option>

        <option value="/antigua-and-barbuda">Antigua and Barbuda</option>

        <option value="/argentina">Argentina</option>

        <option value="/armenia">Armenia</option>

        <option value="/aruba">Aruba</option>

        <option value="/australie">Australie</option>

        <option value="/austria">Austria</option>

        <option value="/azerbaijan">Azerbaijan</option>

        <option value="/bahamas">Bahamas</option>

        <option value="/bahrain">Bahrain</option>

        <option value="/bangladesh">Bangladesh</option>

        <option value="/barbados">Barbados</option>

        <option value="/belarus">Belarus</option>

        <option value="/belgium">Belgium</option>

        <option value="/belize">Belize</option>

        <option value="/benin">Benin</option>

        <option value="/bermuda">Bermuda</option>

        <option value="/bhutan">Bhutan</option>

        <option value="/bolivia">Bolivia</option>

        <option value="/bosnia-and-herzegovina">Bosnia and Herzegovina</option>

        <option value="/botswana">Botswana</option>

        <option value="/brazil">Brazil</option>

        <option value="/brunei-darussalam">Brunei Darussalam</option>

        <option value="/bulgaria">Bulgaria</option>

        <option value="/burkina-faso">Burkina Faso</option>

        <option value="/burundi">Burundi</option>

        <option value="/cambodia">Cambodia</option>

        <option value="/cameroon">Cameroon</option>

        <option value="/canada">Canada</option>

        <option value="/cape-verde">Cape Verde</option>

        <option value="/cayman-islands">Cayman Islands</option>

        <option value="/central-african-republic">Central African Republic</option>

        <option value="/chad">Chad</option>

        <option value="/chile">Chile</option>

        <option value="/chinese-taipei">Chinese Taipei</option>

        <option value="/colombia">Colombia</option>

        <option value="/comoros">Comoros</option>

        <option value="/congo">Congo</option>

        <option value="/cook-islands">Cook Islands</option>

        <option value="/costa-rica">Costa Rica</option>

        <option value="/cote-d-ivoire">C&#244;te d&#39;Ivoire</option>

        <option value="/croatia">Croatia</option>

        <option value="/cuba">Cuba</option>

        <option value="/cyprus">Cyprus</option>

        <option value="/czech-republic">Czech Republic</option>

        <option value="/democratic-people-s-republic-of-korea">Democratic People&#39;s Republic of Korea</option>

        <option value="/democratic-republic-of-the-congo">Democratic Republic of the Congo</option>

        <option value="/denmark">Denmark</option>

        <option value="/djibouti">Djibouti</option>

        <option value="/dominican-republic">Dominican Republic</option>

        <option value="/dominique">Dominique</option>

        <option value="/ecuador">Ecuador</option>

        <option value="/egypt">Egypt</option>

        <option value="/el-salvador">El Salvador</option>

        <option value="/equatorial-guinea">Equatorial Guinea</option>

        <option value="/eritrea">Eritrea</option>

        <option value="/estonia">Estonia</option>

        <option value="/ethiopia">Ethiopia</option>

        <option value="/federated-states-of-micronesia">Federated States of Micronesia</option>

        <option value="/fiji">Fiji</option>

        <option value="/finland">Finland</option>

        <option value="/france">France</option>

        <option value="/gabon">Gabon</option>

        <option value="/gambia">Gambia</option>

        <option value="/georgia">Georgia</option>

        <option value="/germany">Germany</option>

        <option value="/ghana">Ghana</option>

        <option value="/great-britain">Great Britain</option>

        <option value="/greece">Greece</option>

        <option value="/grenada">Grenada</option>

        <option value="/guam">Guam</option>

        <option value="/guatemala">Guatemala</option>

        <option value="/guinea">Guinea</option>

        <option value="/guinea-bissau">Guinea-Bissau</option>

        <option value="/guyana">Guyana</option>

        <option value="/haiti">Haiti</option>

        <option value="/honduras">Honduras</option>

        <option value="/hong-kong">Hong-Kong</option>

        <option value="/hungary">Hungary</option>

        <option value="/iceland">Iceland</option>

        <option value="/india">India</option>

        <option value="/indonesia">Indonesia</option>

        <option value="/iraq">Iraq</option>

        <option value="/ireland">Ireland</option>

        <option value="/islamic-republic-of-iran">Islamic Republic of Iran</option>

        <option value="/israel">Israel</option>

        <option value="/italy">Italy</option>

        <option value="/jamaica">Jamaica</option>

        <option value="/japan">Japan</option>

        <option value="/jordan">Jordan</option>

        <option value="/kazakhstan">Kazakhstan</option>

        <option value="/kenya">Kenya</option>

        <option value="/kiribati">Kiribati</option>

        <option value="/kosovo">Kosovo</option>

        <option value="/kuwait">Kuwait</option>

        <option value="/kyrgyzstan">Kyrgyzstan</option>

        <option value="/lao-people-s-democratic-republic">Lao People&#39;s Democratic Republic</option>

        <option value="/latvia">Latvia</option>

        <option value="/lebanon">Lebanon</option>

        <option value="/lesotho">Lesotho</option>

        <option value="/liberia">Liberia</option>

        <option value="/libya">Libya</option>

        <option value="/liechtenstein">Liechtenstein</option>

        <option value="/lithuania">Lithuania</option>

        <option value="/luxembourg">Luxembourg</option>

        <option value="/madagascar">Madagascar</option>

        <option value="/malawi">Malawi</option>

        <option value="/malaysia">Malaysia</option>

        <option value="/maldives">Maldives</option>

        <option value="/mali">Mali</option>

        <option value="/malta">Malta</option>

        <option value="/marshall-islands">Marshall Islands</option>

        <option value="/maurice">Maurice</option>

        <option value="/mauritania">Mauritania</option>

        <option value="/mexico">Mexico</option>

        <option value="/monaco">Monaco</option>

        <option value="/mongolia">Mongolia</option>

        <option value="/montenegro">Montenegro</option>

        <option value="/morocco">Morocco</option>

        <option value="/mozambique">Mozambique</option>

        <option value="/myanmar">Myanmar</option>

        <option value="/namibia">Namibia</option>

        <option value="/nauru">Nauru</option>

        <option value="/nepal">Nepal</option>

        <option value="/netherlands">Netherlands</option>

        <option value="/new-zealand">New Zealand</option>

        <option value="/nicaragua">Nicaragua</option>

        <option value="/niger">Niger</option>

        <option value="/nigeria">Nigeria</option>

        <option value="/norway">Norway</option>

        <option value="/oman">Oman</option>

        <option value="/pakistan">Pakistan</option>

        <option value="/palau">Palau</option>

        <option value="/palestine">Palestine</option>

        <option value="/panama">Panama</option>

        <option value="/papua-new-guinea">Papua New Guinea</option>

        <option value="/paraguay">Paraguay</option>

        <option value="/people-s-republic-of-china">People&#39;s Republic of China</option>

        <option value="/peru">Peru</option>

        <option value="/philippines">Philippines</option>

        <option value="/poland">Poland</option>

        <option value="/portugal">Portugal</option>

        <option value="/puerto-rico">Puerto Rico</option>

        <option value="/qatar">Qatar</option>

        <option value="/republic-of-korea">Republic of Korea</option>

        <option value="/republic-of-moldova">Republic of Moldova</option>

        <option value="/romania">Romania</option>

        <option value="/russian-federation">Russian Federation</option>

        <option value="/rwanda">Rwanda</option>

        <option value="/saint-kitts-and-nevis">Saint Kitts and Nevis</option>

        <option value="/saint-lucia">Saint Lucia</option>

        <option value="/samoa-until-1996-western-samoa">Samoa (until 1996 Western Samoa)</option>

        <option value="/san-marino">San Marino</option>

        <option value="/sao-tome-and-principe">Sao Tome and Principe</option>

        <option value="/saudi-arabia">Saudi Arabia</option>

        <option value="/senegal">Senegal</option>

        <option value="/serbia">Serbia</option>

        <option value="/seychelles">Seychelles</option>

        <option value="/sierra-leone">Sierra Leone</option>

        <option value="/singapore">Singapore</option>

        <option value="/slovakia">Slovakia</option>

        <option value="/slovenia">Slovenia</option>

        <option value="/solomon-islands">Solomon Islands</option>

        <option value="/somalia">Somalia</option>

        <option value="/south-africa">South Africa</option>

        <option value="/south-sudan">South Sudan</option>

        <option value="/spain">Spain</option>

        <option value="/sri-lanka">Sri Lanka</option>

        <option value="/st-vincent-and-the-grenadines">St Vincent and the Grenadines</option>

        <option value="/sudan">Sudan</option>

        <option value="/suriname">Suriname</option>

        <option value="/swaziland">Swaziland</option>

        <option value="/sweden">Sweden</option>

        <option value="/switzerland">Switzerland</option>

        <option value="/syrian-arab-republic">Syrian Arab Republic</option>

        <option value="/tajikistan">Tajikistan</option>

        <option value="/thailand">Thailand</option>

        <option value="/the-former-yugoslav-republic-of-macedonia">The Former Yugoslav Republic of Macedonia</option>

        <option value="/timor-leste">Timor-Leste</option>

        <option value="/togo">Togo</option>

        <option value="/tonga">Tonga</option>

        <option value="/trinidad-and-tobago">Trinidad and Tobago</option>

        <option value="/tunisia">Tunisia</option>

        <option value="/turkey">Turkey</option>

        <option value="/turkmenistan">Turkmenistan</option>

        <option value="/tuvalu">Tuvalu</option>

        <option value="/uganda">Uganda</option>

        <option value="/ukraine">Ukraine</option>

        <option value="/united-arab-emirates">United Arab Emirates</option>

        <option value="/united-republic-of-tanzania">United Republic of Tanzania</option>

        <option value="/united-states-of-america">United States of America</option>

        <option value="/uruguay">Uruguay</option>

        <option value="/uzbekistan">Uzbekistan</option>

        <option value="/vanuatu">Vanuatu</option>

        <option value="/venezuela">Venezuela</option>

        <option value="/vietnam">Vietnam</option>

        <option value="/virgin-islands-british">Virgin Islands, British</option>

        <option value="/virgin-islands-us">Virgin Islands, US</option>

        <option value="/yemen">Yemen</option>

        <option value="/zambia">Zambia</option>

        <option value="/zimbabwe">Zimbabwe</option>
    </select>

    <select class="alt-select " title="International Federations" onchange="if (this[this.selectedIndex].value != '#') {document.location = this[this.selectedIndex].value}">
            <option value="/sports">International Federations</option>
        
        <option value="/international-swimming-federation">Aquatics</option>

        <option value="/world-archery-federation">Archery</option>

        <option value="/international-association-of-athletics-federations">Athletics</option>

        <option value="/badminton-world-federation">Badminton</option>

        <option value="/international-basketball-federation">Basketball</option>

        <option value="/international-biathlon-union">Biathlon</option>

        <option value="/international-bobsleigh-and-skeleton-federation">Bobsleigh</option>

        <option value="/association-internationale-de-boxe">Boxing</option>

        <option value="/international-canoe-federation">Canoe</option>

        <option value="/world-curling-federation">Curling</option>

        <option value="/union-cycliste-internationale">Cycling</option>

        <option value="/international-equestrian-federation">Equestrian</option>

        <option value="/international-fencing-federation">Fencing</option>

        <option value="/international-association-football-federation">Football</option>

        <option value="/international-golf-federation">Golf</option>

        <option value="/international-gymnastics-federation">Gymnastics</option>

        <option value="/international-handball-federation">Handball</option>

        <option value="/federation-internationale-de-hockey">Hockey</option>

        <option value="/international-ice-hockey-federation">Ice Hockey</option>

        <option value="/international-judo-federation">Judo</option>

        <option value="/international-luge-federation">Luge</option>

        <option value="/international-modern-pentathlon-union">Modern Pentathlon</option>

        <option value="/world-rowing">Rowing</option>

        <option value="/world-rugby">Rugby</option>

        <option value="/world-sailing">Sailing</option>

        <option value="/international-shooting-sport-federation">Shooting</option>

        <option value="/international-skating-union">Skating</option>

        <option value="/international-ski-federation">Skiing</option>

        <option value="/international-table-tennis-federation">Table Tennis</option>

        <option value="/world-taekwondo-federation">Taekwondo</option>

        <option value="/international-tennis-federation">Tennis</option>

        <option value="/international-triathlon-union">Triathlon</option>

        <option value="/international-volleyball-federation">Volleyball</option>

        <option value="/federation-internationale-d-halterophilie">Weightlifting</option>

        <option value="/united-world-wrestling">Wrestling</option>
    </select>

    <select class="alt-select " title="Recognised Federations" onchange="if (this[this.selectedIndex].value != '#') {document.location = this[this.selectedIndex].value}">
            <option value="/recognised-federations">Recognised Federations</option>
        
        <option value="/world-air-sports-federation">Air Sports</option>

        <option value="/international-federation-of-american-football">American Football</option>

        <option value="/international-automobile-federation">Automobile</option>

        <option value="/federation-of-international-bandy">Bandy</option>

        <option value="/world-baseball-softball-confederation">Baseball-Softball</option>

        <option value="/world-confederation-of-billiards-sports">Billiard sports</option>

        <option value="/world-confederation-of-boules-sports">Boules</option>

        <option value="/world-bowling">Bowling</option>

        <option value="/world-bridge-federation">Bridge</option>

        <option value="/world-chess-federation">Chess</option>

        <option value="/international-cricket-council">Cricket</option>

        <option value="/world-dancesport-federation">Dance sport</option>

        <option value="/international-floorball-federation">Floorball</option>

        <option value="/world-flying-disc-federation">Flying Disc</option>

        <option value="/world-karate-federation">Karate</option>

        <option value="/international-korfball-federation">Korfball</option>

        <option value="/international-life-saving-federation">Life saving</option>

        <option value="/international-motorcycling-federation">Motorcycle racing</option>

        <option value="/international-climbing-and-mountaineering-federation">Mountaineering and Climbing</option>

        <option value="/international-netball-federation">Netball</option>

        <option value="/international-orienteering-federation">Orienteering</option>

        <option value="/international-federation-of-pelota-vasca">Pelota Vasca</option>

        <option value="/federation-of-international-polo">Polo</option>

        <option value="/international-powerboating-federation">Powerboating</option>

        <option value="/international-racquetball-federation">Racquetball</option>

        <option value="/international-roller-sports-federation">Roller sports</option>

        <option value="/international-ski-mountaineering-federation">Ski Mountaineering</option>

        <option value="/international-federation-of-sport-climbing">Sport climbing</option>

        <option value="/world-squash-federation">Squash</option>

        <option value="/international-sumo-federation-provisional">Sumo</option>

        <option value="/international-surfing-association">Surfing</option>

        <option value="/tug-of-war-international-federation">Tug of War</option>

        <option value="/world-underwater-federation">Underwater sports</option>

        <option value="/international-waterski-wakeboard-federation">Water Ski</option>

        <option value="/international-wushu-federation">Wushu</option>
    </select>

    </div>
</aside>
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
        <a href="/ajaxscript/geticscalendar/{E1E90A75-7711-4192-94E2-B5E31358DAC7}" class="btn-calendar">Calendar</a>
        <span class="country"></span>

        <h3>
            <a href="/olympic-day">
                Olympic Day
            </a>
        </h3>
        <span class="time"><span content="6/23/2017 12:00:00 AM">Jun 23, 2017</span> - <span content="6/23/2017 12:00:00 AM">Jun 23, 2017</span></span>
    </li>
    <li>
        <a href="/ajaxscript/geticscalendar/{52DA3417-D82C-4B53-A992-2F936D1D9388}" class="btn-calendar">Calendar</a>
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

</div>
</body>
</html>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>