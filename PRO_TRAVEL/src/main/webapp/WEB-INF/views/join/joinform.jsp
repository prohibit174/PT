<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/AgoFiles/users_css/all.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/AgoFiles/users_css/common.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/AgoFiles/users_css/jquery.js.selecter.css">


<script src = "//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/AgoFiles/UsersJS/CheckEssential.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/AgoFiles/UsersJS/IdCheck.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/AgoFiles/UsersJS/join_checkInfo.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/AgoFiles/UsersJS/JoinCheck.js"></script>



</head>
<body>

<h3>JoinForm</h3>



<div id="wrapper" data-speed="3">
     
        <main id="main">


            <div class="wrapper-content">
                


                <section class="section w12-h bg-white process">
        <div class="content">
<div id="conteneurform" class="contenu_full">

    <div class="box-full">
        <div class="top"></div>

            <h2><span>1</span>필수 입력사항</h2>
           
                <div class="clear"></div>
            </div>
        <div class="bottom"></div>
        <br/>
    </div>


<form id="form_checkout" class="uniForm checkout" enctype="application/x-www-form-urlencoded"
      action="JoinForm" method="post">
<div class="box-full" id="creationaccount">
<div class="top"></div>
<div class="form">

<input type="hidden" name="newuser" value="0" id="newuser" />    <div id="creationaccountform">

        <h3>User information</h3>

        <div class="left">
            <table cellpadding="0" cellspacing="0" class="tab">
                <tr>
                    <td class="label"><label for="u_id">아이디</label>
                    </td>
                    <td class="value">
<input type="text" name="form_checkout[createaccount][email]" id="form_checkout-createaccount-email" value="" /> &nbsp; <span class="mandatory">*</span>
                           <br><span>영문소문자 / 숫자, 4~12자</span>
			 		<input type = "button" id = "u_idcheck" value = "중복체크"> 
                        <ul class="errorField">
                                                                                </ul>
                    </td>
                </tr>
            </table>
        </div>
        <div class="right">
            <table cellpadding="0" cellspacing="0" class="tab">
                <tr>
                    <td class="label"><label for="pwd">비밀번호</label>
                    </td>
                    <td class="value">
<input type="password" name="form_checkout[createaccount][password]" id="form_checkout-createaccount-password" value="" /> &nbsp; <span
                            class="mandatory">*</span>
                        <ul class="errorField">
                                                                                </ul>
                    </td>
                </tr>
                <tr>
                    <td class="label"><label for="pwd">비밀번호 확인</label></td>
                    <td class="value">
<input type="password" name="form_checkout[createaccount][confirm_password]" id="form_checkout-createaccount-confirm_password" value="" /> &nbsp; <span
                            class="mandatory">*</span>
                        <ul class="errorField">
                                                                                </ul>
                    </td>
                </tr>
                
                 <tr>
                <td class="label"><label for="name">닉네임</label>
                </td>
                <td class="value">
<input type="text" name="u_name" id="u_name" value="" /> &nbsp; <span class="mandatory">*</span>
                    <ul class="errorField">
                                            </ul>
                </td>
            </tr>

										<tr>
											<td>성별</td>

											<td><input type="radio" name="u_sex" id="u_sex"
												value="남자"> 남자 <input type="radio" name="u_sex"
												id="u_sex" value="여자"> 여자</td>

										</tr>

										<tr></tr>

										<tr>
											<td class="label"><label for="u_license">운전면허 유무</label></td>
											<td class="value"><input type="radio" name="u_license"
												id="u_license" value="운전면허 소지"> <label>유</label>
												&nbsp;&nbsp; <input type="radio" name="u_license"
												id="u_license" value="운전면허 미소지"> <label>무</label>

												&nbsp; <span class="mandatory">*</span>
												<ul class="errorField">
												</ul></td>
										</tr>

										<tr>
											<td class="label"><label for="lastname">생년월일</label></td>
											<td class="value"><input type="text" name="u_birth"
												id="u_birth" value="" /> &nbsp; <span class="mandatory">*</span>
												<ul class="errorField">
												</ul></td>
										</tr>

										<tr>
                        <td class="label"><label for="birth">birth</label>
                        </td>
                        <td class="value">
<div class="selecter closed" tabindex="0"><select name="u_birth" id="u_birth" style="width: 60px !important;" class="jcf-hidden selecter-element" tabindex="-1" size="4" jcf-size="">
    <option value="01">01</option>
    <option value="02">02</option>
    <option value="03">03</option>
    <option value="04">04</option>
    <option value="05">05</option>
    <option value="06" selected="selected">06</option>
    <option value="07">07</option>
    <option value="08">08</option>
    <option value="09">09</option>
    <option value="10">10</option>
    <option value="11">11</option>
    <option value="12">12</option>
</select><span class="selecter-selected">08</span><div class="selecter-options" style="display: none;"><span class="selecter-item" data-value="01">01</span><span class="selecter-item" data-value="02">02</span><span class="selecter-item" data-value="03">03</span><span class="selecter-item" data-value="04">04</span><span class="selecter-item" data-value="05">05</span><span class="selecter-item" data-value="06">06</span><span class="selecter-item" data-value="07">07</span><span class="selecter-item selected" data-value="08">08</span><span class="selecter-item" data-value="09">09</span><span class="selecter-item" data-value="10">10</span><span class="selecter-item" data-value="11">11</span><span class="selecter-item" data-value="12">12</span></div></div><span class="jcf-select jcf-unselectable jcf-focus"><span class="jcf-select-text"><span class="">08</span></span><span class="jcf-select-opener"></span></span>
<div class="selecter closed" tabindex="0"><select name="form_checkout[payment][card_expiration_year]" id="form_checkout-payment-card_expiration_year" style="width: 60px !important;" class="jcf-hidden selecter-element" tabindex="-1">
    <option value="2017" selected="selected">2017</option>
    <option value="2018">2018</option>
    <option value="2019">2019</option>
    <option value="2020">2020</option>
    <option value="2021">2021</option>
    <option value="2022">2022</option>
    <option value="2023">2023</option>
    <option value="2024">2024</option>
    <option value="2025">2025</option>
    <option value="2026">2026</option>
    <option value="2027">2027</option>
    <option value="2028">2028</option>
    <option value="2029">2029</option>
    <option value="2030">2030</option>
    <option value="2031">2031</option>
    <option value="2032">2032</option>
    <option value="2033">2033</option>
    <option value="2034">2034</option>
    <option value="2035">2035</option>
    <option value="2036">2036</option>
</select><span class="selecter-selected">2024</span><div class="selecter-options" style="display: none;"><span class="selecter-item" data-value="2017">2017</span><span class="selecter-item" data-value="2018">2018</span><span class="selecter-item" data-value="2019">2019</span><span class="selecter-item" data-value="2020">2020</span><span class="selecter-item" data-value="2021">2021</span><span class="selecter-item" data-value="2022">2022</span><span class="selecter-item" data-value="2023">2023</span><span class="selecter-item selected" data-value="2024">2024</span><span class="selecter-item" data-value="2025">2025</span><span class="selecter-item" data-value="2026">2026</span><span class="selecter-item" data-value="2027">2027</span><span class="selecter-item" data-value="2028">2028</span><span class="selecter-item" data-value="2029">2029</span><span class="selecter-item" data-value="2030">2030</span><span class="selecter-item" data-value="2031">2031</span><span class="selecter-item" data-value="2032">2032</span><span class="selecter-item" data-value="2033">2033</span><span class="selecter-item" data-value="2034">2034</span><span class="selecter-item" data-value="2035">2035</span><span class="selecter-item" data-value="2036">2036</span></div></div><span class="jcf-select jcf-unselectable"><span class="jcf-select-text"><span class="">2024</span></span><span class="jcf-select-opener"></span></span>&nbsp;<span class="mandatory">*</span>
                            <ul class="errorField">
                                                                                            </ul>
                        </td>
                    </tr>
            <tr>
                <td class="label"><label for="u_address">거주지역</label></td>
                <td class="value">
<input type="text" name="u_address" id="u_address" value="" /> &nbsp; <span class="mandatory">*</span>
                    <ul class="errorField">
                                            </ul>
                </td>
            </tr>
            
            </table>
        </div>
    </div>
    <div class="clear"></div>
<div id="billingaddress">
<h2><span>2</span>선택 입력 사항</h2>
    <h3>Additional Information</h3>

    <div class="left">
        <table cellpadding="0" cellspacing="0" class="tab">
           
            <tr>
                <td class="label"><label for="u_job">직업</label></td>
                <td class="value">
<input type="text" name="form_checkout[billing][address2]" id="form_checkout-billing-address2" value="" /></td>
            </tr>
        </table>
    </div>
    <div class="right">
        <table cellpadding="0" cellspacing="0" class="tab">
            <tr>
                <td class="label"><label for="u_lang">사용언어</label></td>
                <td class="value">
<input type="text" name="u_lang" id="u_lang" value="" /> &nbsp; <span class="mandatory">*</span>
                    <ul class="errorField">
                                            </ul>
                </td>
            </tr>
            <tr>
                <td class="label"><label for="u_religion">종교</label></td>
                <td class="value">
<input type="text" name="u_religion" id="u_religion" value="" /> &nbsp; <span class="mandatory">*</span>
                    <ul class="errorField">
                                            </ul>
                </td>
            </tr>

           
            <tr>
                <td class="label"><label for="u_img">프로필 이미지</label></td>
                <td class="value">
<input type="file" name="u_img" id="u_img" value="" /> &nbsp; <span class="mandatory">*</span>
                    <ul class="errorField">
                                            </ul>
                </td>
            </tr>
            <tr>
                <td class="label"><label for="u_style">여행 스타일</label></td>
                <td class="value">
<input type="text" name="u_style" id="u_style" value="" /></td>
            </tr>
        </table>
    </div>

    <div class="clear"></div>
</div>

<div class="bottom"></div>

<br/>


<div class="clear"></div>

    <div class="bottom"></div>
</div>
<br/>

<div class="clear"></div>


<br/>

<div class="buttonHolder">
    <style type="text/css">
        /*ie7onli - skin bouton */
        * + html .primaryAction {
            width: 155px;
        }
    </style>

    
    <div class="terms">
        
<input type="hidden" name="terms" value="0" /><input type="checkbox" name="terms" id="terms" value="1" /> I accept the <a target="_blank" href="/terms-conditions/" class="secondaryAction linkPopinTermsConditions" title="terms and conditions">terms and conditions</a><br/>
        
<input type="hidden" name="privacy_policy" value="0" /><input type="checkbox" name="privacy_policy" id="privacy_policy" value="1" /> I accept the <a target="_blank" href="/privacy-policy/" class="secondaryAction linkPopinPrivacyPolicy" title="privacy policy">privacy policy</a>    </div>
    
<button name="submit" id="validate_order" type="submit" class="primaryAction"><span>가입하기</span></button>    <div class="clear"></div>
</div>

</form>
</div>
</section>
</div><!-- 맞을까 닫음태그? -->


        <!--         
                <div class="panel cio">
                    <div class="wrapper-content">
                        FOOTER START
                        <section class="section w12-h bg-white">
                            <div class="content">
   
</div>                        </section>
                        FOOTER END
                    </div>
                </div> -->
                
            </div>
        </main>

        
    </div>

    <div id="profiler">
                                    </div>

</body>
</html>