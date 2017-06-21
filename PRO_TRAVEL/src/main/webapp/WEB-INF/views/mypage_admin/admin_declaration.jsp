<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
    <section class="results ajax-area" data-tmpl="athleteResults_tmpl">
        <div class="heading">
            <h2 style="padding-left: 30px;">Declare List</h2>
            <ul class="add-links">

            </ul>
        </div>

        <ul class="table2 ajax-content">
            <li>
                    <div class="th col1"> 신고자 </div>
                    <div class="th col2"> 피신고자</div>
                    <div class="th col3"> 신고 내용 </div>
                    <div class="th col2"> 신고 소분류 </div> 
                    <div class="th col3"> 신고 파일 </div>
            </li>
            
            <c:forEach items="${declareList}" var="declareList">
                <li>

                <div class="td col1">

    <a href = '/carpool/read?c_num=${declareList.u_id }'>
<picture class="picture">

<img src="/resources/upload/${declareList.d_reported }" width="50" height="50" >
<span class="mask"></span>
</picture>
        <div class="area">
            <strong class="name">${declareList.d_content } </strong>
        </div>
    </a>
                </div>

                
                
                <div class="td col2">

        <div class="area">
            <strong> ${declareList.d_small }</strong>
        </div>
                </div>
                
                 <div class="td col2">

        <div class="area">
            <strong> ${declareList.d_file }</strong>
        </div>
                </div>


    </li>
            </c:forEach>
        </ul>
    </section>
    <%@ include file="/WEB-INF/views/include/footer.jsp" %>
    
</body>
</html>