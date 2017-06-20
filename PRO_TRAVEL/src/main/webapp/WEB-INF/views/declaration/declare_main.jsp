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
   
   $('.detail_message').magnificPopup({
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
 <div id="sub-contents">
    <div class="l-box">
      <div id="de-select">
        <div class="select-box-l box-1" style="width: 300px; height: 500px; margin-left: 230px;">
          <h3>일반신고 접수</h3>
          <p>욕설이나 비방, 교환에 대한 신고하시기 바랍니다.</p>
          <div class="select-box-s">
            <h4>일반 신고</h4>
            <p>프로동행러 이용자의 부적절한 행위를 증빙할 수 있는 자료를 첨부하시어 신고 접수하시면 도움이 됩니다.</p>
            <button style="margin-left: 50px;">신고하기</button>
          </div>
        </div><div class="select-box-l box-2" style="width: 700px; height: 500px;">
          <h3>여행신고 접수</h3>
          <p>허위 동행 정보나 카풀에 대한 신고내용을 접수할 수 있습니다.<br>※ 카풀과 동행 참여 고객에 한하여 시행하고 있습니다.<br/><a href="about">* (주)프로동행러</a>
          </p>
          <div class="select-box-s">
            <h4>Accompany</h4>
            <table class="table-1">
              <tr>
                <th>부적절한 동행글</th>
                <td>성적인 내용이나 허위정보를 담은 게시글을 올렸을 경우</td>
              </tr>
              <tr>
                <th>게시글 도배<span></span></th>
                <td>빠른 동행을 목적으로 한 무단 게시글 도배</td>
              </tr>
            </table>
            <button style="margin-left: 80px; margin-top: 20px;">신고하기</button>
          </div><div class="select-box-s l-margin">
            <h4>Carpool</h4>
            <table class="table-2">
              <tr>
                <th>부적절한 카풀</th>
                <td>허위 정보 입력, 무단 카풀 취소 </td>
              </tr>
              <tr>
                <th>게시글 도배</th>
                <td>빠른 카풀을 목적으로 한 무단 게시글 도배</td>
              </tr>
            </table>
            <button style="margin-left: 80px; margin-top: 40px;">신고하기</button>
          </div>
        </div>
      </div>
    </div>
  </div>
	<br><br>

</body>
</html>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>