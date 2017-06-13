<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%
	String u_id = (String) session.getAttribute("login");
	request.setAttribute("u_id", u_id);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>프로 동행러</title>
</head>
<body>

	<span id="sidebar">
		<span class="tabs-section alt" id="tabsSection"> <nav>
		<div class="tabset-box">
			<ul class="tabset">

			 <li class="active"><a href="product_list"
                  data-class="games2014-2" target=""> Product List <i
                     class="icon-arrow-right"> <span class="hide">arrow</span>
                  </i>
               </a></li>
               <li class=""><a href="product_register" data-class="games2014-2"
                  target=""> Product Register <i class="icon-arrow-right"> <span
                        class="hide">arrow</span>
                  </i>
               </a></li>
               <li class=""><a href="recommand_list?u_id=${u_id}" data-class="games2014-2"
                  target=""> Recommand Product <i class="icon-arrow-right"> <span
                        class="hide">arrow</span>
                  </i>
               </a></li>

			</ul>
		</div>
	</span>
</span>

</body>

</html>