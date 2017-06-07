<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/css/AgoFiles/product_css/all.css">
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/css/AgoFiles/product_css/common.css">
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/css/AgoFiles/users_css/jquery.js.selecter.css">
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript"
   src="${pageContext.request.contextPath}/resources/js/AgoFiles/prouduct_javascript/CheckEssential.js"></script>
<script type="text/javascript"
   src="${pageContext.request.contextPath}/resources/js/AgoFiles/prouduct_javascript/IdCheck.js"></script>
<script type="text/javascript"
   src="${pageContext.request.contextPath}/resources/js/AgoFiles/prouduct_javascript/join_checkInfo.js"></script>
<script type="text/javascript"
   src="${pageContext.request.contextPath}/resources/js/AgoFiles/prouduct_javascript/JoinCheck.js"></script>


<script>

$(document).ready(function(){
     
   var formObj = $("form[role='form']");
   console.log(formObj); 
   
   $("#validate_order").on("click", function(){
      formObj.attr("action", "/product/productReq_detail");
      formObj.attr("method", "get");      
      formObj.submit();
   });
});
</script>
</head>

<body>
   <%@ include file="/WEB-INF/views/include/header.jsp"%>
   <%@ include file="/WEB-INF/views/include/product_sidebar.jsp"%>

   <div id="wrapper" data-speed="3">
      <main id="main">
      <div class="wrapper-content">
         <section class="section w12-h bg-white process">
         <div class="content">
            <div id="conteneurform" class="contenu_full">
               <div class="box-full">
                  <div class="top"></div>
                  <h2>Register Product Request</h2>
                  <div class="clear"></div>
               </div>
               <div class="bottom"></div>
               <br />
            </div>


         <form role="form" method="post">

            <%--    <input type='hidden'  name="pr_reqnum" value="${Product_RequestVO.pr_reqnum}">  --%>
         
                
         
               <div class="box-full" id="creationaccount">
                  <div class="top"></div>
                  <div class="form">

                     <!-- <input type="hidden" name="newuser" value="0" id="newuser" /> -->
                     <div class="clear"></div>
                     <div id="billingaddress">

                        <div class="right">
                           <table cellpadding="0" cellspacing="0" class="tab">
                              <tr>
                                 <td class="label"><label for="u_lang">Product
                                       Request Number</label></td>
                                 <td class="value"><input type="text" name="pr_reqnum"
                                    id="pr_reqnum" value="" /> &nbsp; <span class="mandatory"></span>
                                    <ul class="errorField">
                                    </ul></td>
                              </tr>

                              <tr>
                                 <td class="label"><label for="u_lang">User ID</label></td>
                                 <td class="value"><input type="text" name="u_id"
                                    id="u_id" value="" /> &nbsp; <span class="mandatory"></span>
                                    <ul class="errorField">
                                    </ul></td>
                              </tr>
                              <tr>
                                 <td class="label"><label for="u_lang">Product
                                       Number</label></td>
                                 <td class="value"><input type="text" name="p_num"
                                    id="p_num" value="" /> &nbsp; <span class="mandatory"></span>
                                    <ul class="errorField">
                                    </ul></td>
                              </tr>

                              <tr>
                                 <td class="label"><label for="u_lang">Product
                                       Request Status</label></td>
                                 <td class="value"><input type="text" name="pr_ox"
                                    id="pr_ox" value="" /> &nbsp; <span class="mandatory"></span>
                                    <ul class="errorField">
                                    </ul></td>
                              </tr>
                              <tr>
                                 <td class="label"><label for="u_lang">Place</label></td>
                                 <td class="value"><input type="text" name="pr_place"
                                    id="pr_place" value="" /></td>
                              </tr>

                              <tr>
                                 <td class="label"><label for="u_lang">Date</label></td>
                                 <td class="value"><input type="text" name="pr_date"
                                    id="pr_date" value="" /></td>
                              </tr>


                           </table>
                        </div>

                        <div class="clear"></div>
                     </div>

                     <div class="bottom"></div>

                     <br />


                     <div class="clear"></div>

                     <div class="bottom"></div>
                  </div>
                  <br />

                  <div class="clear"></div>


                  <br />

                  <div class="buttonHolder">
                     <style type="text/css">
/*ie7onli - skin bouton */
*+html .primaryAction {
   width: 155px;
}
</style>

                     <button  id="validate_order" type="submit"
                        class="primaryAction">
                        <span>Request Register</span>
                     </button>

                     <div class="clear"></div>

                  </div>
            
</form>  
         </div>
         </section>
      </div>
   </div>
  

   <div id="profiler"></div>
   <%@ include file="..//include/footer.jsp"%>

</body>
</html>