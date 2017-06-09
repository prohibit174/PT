<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link media="all" rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/login.css" />


</head>

<%-- <%@include file="/WEB-INF/views/include/mypage_sidebar.jsp" %> --%>
<body>
<div class="results-box">
    <div class="holder">
            <h1>Pro Traveler leave</h1>
            <div class="tab-gallery">
               <!--  <ul class="tabset">
                    <li class="active"><a href="/">Login</a></li>
                    <li><a href="#">Find Info</a></li>
                </ul> -->
				
                <div class="tab-content">
                    <div class="tab-slider">
                        <div class="tab-section">
                            <form id="results-form" action="/" class="results-form" method="post">
                                <div class="row">
                                	<span class="txt">
										탈퇴 후에는 개인의 데이터를 복구할 수 없습니다.<br><br>
										탈퇴 후에는 서비스에 남아있는 게시물을 삭제할 수 없습니다.
                                	</span>
                                	<br><br><br>
                                	<input type="checkbox" >
                                	<span>안내사항을 모두 확인했으며, 이에 동의합니다.</span>
                                	<input type="hidden" name="u_pwd" value="${u_pwd }">
                                    <!-- <input type="text" id="insert_id" name="u_id" value="아이디를 입력하세요" onfocus="this.value='';"/>
                                    <br><br>
                                    <span class="txt" onclick="">* 필수 입력 사항</span> -->
                                </div>
                               <!--  <div class="row">
                                    <input type="text" id="insert_pwd" name="u_pwd" value="비밀번호를 입력하세요" onfocus="changePW()"/>
                                    <br><br>
                                    <span class="txt" onclick="">* 필수 입력 사항</span>
                                </div>
                             <div class="row">
									<button>회원이 아니신 분은 <a href="/join/joinform"> '여기' </a>를 클릭해서 가입하실 수 있습니다.</button>
                                   
                                </div> -->
                                <div class="row">
                                	<!-- <span class="txt" style="float: left; font-size: 13px; padding-top: 5px; padding-left: 5px;" >
                                	AUTO LOGIN
                                	</span>&nbsp
                                	<input type="checkbox" name="useCookie"/> -->
                                    <input type="submit" value="탈퇴" />
                                    <input type="reset" value="취소" />
                                </div> 
                            </form>
                        </div>
                       <!--  <div class="tab-section">
                            <form id="results-form" action="javascript:redirectFromDisc()" class="results-form">
                                
                                <div class="row">
                                    <select id="sel-evt-s" class="ajax-select" title="Events" disabled="disabled">
                                        <option>Events</option>
                                    </select>
                                    <span class="txt">* Required</span>
                                </div>
                                <div class="row">
                                    <input type="submit" value="Results" />
                                    <input type="reset" value="Clear" />
                                </div>
                            </form>
                        </div> -->
                    </div>
                </div>
            </div>
        </div>
   </div>
   <%@ include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>